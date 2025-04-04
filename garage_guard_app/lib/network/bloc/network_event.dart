part of 'network_bloc.dart';

sealed class NetworkEvent {}

class NetworkNewIp extends NetworkEvent{
  final String newIp;
  final String newPort;
  NetworkNewIp({required this.newIp, required this.newPort});
}

class NetworkConnecionCheck extends NetworkEvent{}


class NetworkRegisterUser extends  NetworkEvent{
  final String username;
  final String password;

  NetworkRegisterUser({required this.password, required this.username});
}


class NetworkSignIn extends NetworkEvent{
  final String username;
  final String password;

  NetworkSignIn({required this.password, required this.username});
}



class NetworkGetGarages extends NetworkEvent{}


class NetworkNewGarage extends NetworkEvent{
  final String garageName;
  NetworkNewGarage({required this.garageName});
}

class NetworkGetGarageByGarageId extends NetworkEvent{
  final String id;
  NetworkGetGarageByGarageId({required this.id});
}
