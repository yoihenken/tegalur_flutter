import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tegalur_flutter/model/data_event_model.dart';
import 'package:tegalur_flutter/repositories/main_repo.dart';

part 'get_event_state.dart';

class GetEventCubit extends Cubit<GetEventState> {
  GetEventCubit() : super(GetEventInitial());

  final _repo = MainRepo();

  Future<void> fetchEvent() async {
    emit(GetEventLoading());
    try {
      final _res = await _repo.getEvent();
      if (_res.data['status']) {
        final _data = List<DataEventModel>.from(
            _res.data['list'].map((json) => DataEventModel.fromJson(json)));
        emit(GetEventSuccess(data: _data));
      } else {
        emit(GetEventFailure(msg: "Failure"));
      }
    } catch (e) {
      print(e);
      emit(GetEventFailure(msg: e.toString()));
    }
  }
}
