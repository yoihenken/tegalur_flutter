part of 'get_berita_cubit.dart';

abstract class GetBeritaState extends Equatable {
  const GetBeritaState();
  @override
  List<Object> get props => [];
}

class GetBeritaInitial extends GetBeritaState {}
class GetBeritaLoading extends GetBeritaState {}
class GetBeritaSuccess extends GetBeritaState {
  final List<DataBeritaModel> data;

  GetBeritaSuccess({this.data});

  @override
  List<Object> get props => [data];
}

class GetBeritaFailure extends GetBeritaState {
  final String msg;

  GetBeritaFailure({this.msg});
  @override
  List<Object> get props => [msg];
}
