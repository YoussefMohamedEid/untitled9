import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:meta/meta.dart';

import '../../models/todomodel.dart';
import '../../services/todoservices.dart';
import 'bloks_state.dart';
//my Controller

class BloksCubit extends Cubit<TodoState> {
 // BloksCubit() : super(BloksInitial());
  BloksCubit() : super(InitialState()) {
    getTodo();}

  static BloksCubit get(context) => BlocProvider.of(context);

  List<MakeModel> todos = [];
  bool isLoading = true;

  getTodo() async {
    emit(LoadingState());
    try {
      todos = await ModelService().getModelsData();
      isLoading = false;

      emit(SuccessState());
    } catch (e) {
      print(e.toString());
      emit(ErrorState());
    }
  }


}
