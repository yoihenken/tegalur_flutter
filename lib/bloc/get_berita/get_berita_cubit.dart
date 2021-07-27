import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tegalur_flutter/model/data_berita_model.dart';
import 'package:tegalur_flutter/repositories/main_repo.dart';

part 'get_berita_state.dart';

class GetBeritaCubit extends Cubit<GetBeritaState> {
  GetBeritaCubit() : super(GetBeritaInitial());

  final _repo = MainRepo();

  Future<void> fetchBerita()async{
    emit(GetBeritaLoading());
    try{
      final _res = await _repo.getBerita();
      if(_res.data['status']){
        final _data = List<DataBeritaModel>.from(_res.data['list'].map((json)=>DataBeritaModel.fromJson(json)));
        emit(GetBeritaSuccess(data: _data));
      }else{
        emit(GetBeritaFailure(msg: "Failure"));
      }
    }catch(e){
      print(e);
      emit(GetBeritaFailure(msg: e.toString()));
    }

  }

}
