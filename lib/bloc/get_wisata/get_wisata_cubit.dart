import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tegalur_flutter/model/dart_wisata_model.dart';
import 'package:tegalur_flutter/repositories/main_repo.dart';

part 'get_wisata_state.dart';

class GetWisataCubit extends Cubit<GetWisataState> {
  GetWisataCubit() : super(GetWisataInitial());

  final _repo = MainRepo();

  Future<void> fetchWisata() async {
    emit(GetWisataLoading());
    try {
      final _res = await _repo.getPariwisata();
      if (_res.data['status']) {
        final _data = List<DataWisataModel>.from(
            _res.data['data'].map((json) => DataWisataModel.fromJson(json)));
        emit(GetWisataSuccess(data: _data));
      } else {
        emit(GetWisataFailure(msg: "Failure"));
      }
    } catch (e) {
      print(e);
      emit(GetWisataFailure(msg: e.toString()));
    }
  }
}
