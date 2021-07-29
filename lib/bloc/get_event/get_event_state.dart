part of 'get_event_cubit.dart';

abstract class GetEventState extends Equatable {
  const GetEventState();
  @override
  List<Object> get props => [];
}

class GetEventInitial extends GetEventState {}
class GetEventLoading extends GetEventState {}
class GetEventSuccess extends GetEventState {
  final List<DataEventModel> data;

  GetEventSuccess({this.data});

  @override
  List<Object> get props => [data];
}

class GetEventFailure extends GetEventState {
  final String msg;

  GetEventFailure({this.msg});
  @override
  List<Object> get props => [msg];
}
