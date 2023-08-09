import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'test_state.dart';

class TestCubit extends Cubit<TestState> {
  TestCubit() : super(TestInitial()) {
    getData();
  }

  void getData() {
    try {
      emit(TestLoading());
      var response = [];
      emit(TestLoaded(testList: response));
    } catch (error) {
      emit(TestError(error.toString()));
    }
  }

}
