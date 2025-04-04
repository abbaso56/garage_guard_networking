part of 'network_bloc.dart';

sealed class NetworkState extends Equatable {
  const NetworkState();
  
  @override
  List<Object> get props => [];
}

// state when logged out
final class NetworkBaseState extends NetworkState {}

// state when logged in
final class NetworkLoggedInState extends NetworkState{}


// changed ip on ip page state
final class NetworkNewIpState extends NetworkState{}


// connectionCheck states
final class NetworkConnecionCheckRequestState extends NetworkState{}

final class NetworkConnecionCheckResponseState extends NetworkState{}


// signIn  states
final class NetworkSignInRequestState extends NetworkState{}

final class NetworkSignInResponseState extends NetworkState{}


// registerUser 
final class NetworkRegisterUserRequestState extends NetworkState{}

final class NetworkRegisterUserResponseState extends NetworkState{}


// getGarages states
final class NetworkGetGaragesRequestState extends NetworkState{}

final class NetworkGetGaragesResponseState extends NetworkState{
  final List<Garage> garages;

  const NetworkGetGaragesResponseState({required this.garages});
}



// newGarage states
final class NetworkNewGarageRequestState extends NetworkState{}

final class NetworkNewGarageResponseState extends NetworkState{}


// getGarageByGarageId states
final class NetworkGetGarageByGarageIdRequestState extends NetworkState{}

final class NetworkGetGarageByGarageIdResponseState extends NetworkState{
  final GarageInfo garageInfo;
  const NetworkGetGarageByGarageIdResponseState({required this.garageInfo});
}



