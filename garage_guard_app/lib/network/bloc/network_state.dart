part of 'network_bloc.dart';

sealed class NetworkState extends Equatable {
  const NetworkState();
  
  @override
  List<Object> get props => [];
}

final class NetworkBaseState extends NetworkState {}

final class NetworkNewIpState extends NetworkState{}

final class NetworkConnecionCheckRequestState extends NetworkState{}

final class NetworkConnecionCheckResponseState extends NetworkState{}