part of 'get_wisata_cubit.dart';

abstract class GetWisataState extends Equatable {
  const GetWisataState();
  @override
  List<Object> get props => [];
}

class GetWisataInitial extends GetWisataState {}
class GetWisataLoading extends GetWisataState {}
class GetWisataSuccess extends GetWisataState {
  final List<DataWisataModel> data;

  GetWisataSuccess({this.data});

  @override
  List<Object> get props => [data];
}

class GetWisataFailure extends GetWisataState {
  final String msg;

  GetWisataFailure({this.msg});
  @override
  List<Object> get props => [msg];
}
