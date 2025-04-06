import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:connectrpc/connect.dart';
import 'package:connectrpc/http2.dart';
import 'package:connectrpc/protocol/grpc.dart' as protocol;
import 'package:connectrpc/protobuf.dart';
import 'package:flutter/services.dart';
import 'package:garage_guard_app/network/gen/app_api_service/v1/app_api_service.connect.client.dart';
import 'package:basic_utils/basic_utils.dart';



class NetworkRepository {
  static const defUrl = "https://172.23.240.1";
  String bUrl = "$defUrl:443"; 
  String connected = "disconnected";

  final HttpClient clientinfo;
  AppApiServiceClient appClient;

  

  // Url for Authenticated client
  String authUrl = "$defUrl:444";
  // app certificate
  String appCert = "";

  // App ecdsa keys
  ECPrivateKey? keyPriv;
  ECPublicKey? keyPublic;

  // App authentication HttpClient that use a client cert
  HttpClient? authClient;

  // Authed service for server api
  AuthedAppApiServiceClient? authedAppClient;


  // user id after authentication
  String userId = "";
  // username after authentication
  String username = "";

  NetworkRepository({required this.clientinfo}):
   appClient = AppApiServiceClient(protocol.Transport(
      baseUrl: "$defUrl:443",
      codec: const ProtoCodec(), 
      httpClient:  clientinfo,
      statusParser: const StatusParser(),
  
    ));




  set clientURL(String newBaseUrl){
    bUrl = newBaseUrl;
    appClient = AppApiServiceClient(protocol.Transport(
      baseUrl: newBaseUrl,
      codec: const ProtoCodec(), 
      httpClient:  clientinfo,
      statusParser: const StatusParser(),
    ));
  } 

  String createCSR(){
    Map<String, String> csrSubj = {
      "CN": "GarageGuard App",
      "O": "GarageGuard",
      "OU": "GarageGuard App",
      "C": "CA",
      "ST": "Ontario",
    };
    AsymmetricKeyPair keyPair  = CryptoUtils.generateEcKeyPair(curve: "secp256r1");


    // Set the private key and public key
    keyPriv = keyPair.privateKey as ECPrivateKey;
    keyPublic = keyPair.publicKey as ECPublicKey;




    return X509Utils.generateEccCsrPem(csrSubj, keyPriv! , keyPublic!);
  }


  // Create the authenticated client to make logged in requests
  Future<void> authenticated (String crt, String userId, String username) async{
     // Same stuff as secureClient
    //Add the root certificate to the trusted certificates
    final ctx = SecurityContext.defaultContext;
   
    final  ca = await rootBundle.load('assets/rootCA.crt');
    final  srv = await rootBundle.load('assets/srv.crt');
    ctx.setTrustedCertificatesBytes(ca.buffer.asUint8List());
    ctx.useCertificateChainBytes(srv.buffer.asUint8List());
    log("Loaded rootCA and server cert");

    // Add client cert and private key here
    ctx.useCertificateChainBytes(utf8.encode(crt));
    ctx.usePrivateKeyBytes(utf8.encode(CryptoUtils.encodeEcPrivateKeyToPem(keyPriv!)));


    log("Loaded client cert and private key");

    // create authClient
    authClient = createHttpClient(transport: Http2ClientTransport(context: ctx));

    
    // create authedAppClient
    authedAppClient = AuthedAppApiServiceClient(protocol.Transport(
      baseUrl: authUrl,
      codec: const ProtoCodec(), 
      httpClient:  authClient!,
      statusParser: const StatusParser(),
    ));



    // set the userId and username
    this.userId = userId; 
    this.username = username;

  }




}