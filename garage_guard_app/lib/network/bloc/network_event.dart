part of 'network_bloc.dart';

sealed class NetworkEvent {}

class NetworkNewIp extends NetworkEvent{
  final String newIp;
  final String newPort;
  NetworkNewIp(this.newIp,this.newPort);
}

class NetworkConnecionCheck extends NetworkEvent{}
class NetworkRegisterUser extends  NetworkEvent{}

class NetworkSignIn extends NetworkEvent{}

