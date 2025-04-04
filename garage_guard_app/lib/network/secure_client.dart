import 'dart:io';

import 'package:connectrpc/connect.dart';
import 'package:connectrpc/http2.dart';
import 'package:flutter/services.dart';


Future<HttpClient> secureClient () async{
  // Don;t automaticall trust the client just because the certificate is a tusted root
  final ctx= SecurityContext.defaultContext;

  final  ca = await rootBundle.load('assets/rootCA.crt');
  

  ctx.setTrustedCertificatesBytes(ca.buffer.asUint8List());
  

  final client = createHttpClient(transport: Http2ClientTransport(context: ctx));

  return client;
}