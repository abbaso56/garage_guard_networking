import 'dart:io';

import 'package:connectrpc/connect.dart';
import 'package:connectrpc/http2.dart';
import 'package:flutter/services.dart';


Future<HttpClient> secureClient () async{
  // Create security context using CA root certificate
  final cntxt= SecurityContext(withTrustedRoots: true);

  final  crt = await rootBundle.load('assets/rootCA.crt');

  cntxt.setTrustedCertificatesBytes(crt.buffer.asUint8List());

  
  
  //create secure client using context
  final client = createHttpClient(transport: Http2ClientTransport(context: cntxt));

  return client;
}