part of 'test_cubit.dart';

@immutable
abstract class TestState {}

class TestInitial extends TestState {}

class TestLoading extends TestState {}

class TestError extends TestState {
 final String error ;

  TestError(this.error);
}

class TestLoaded extends TestState {
  final List testList;

  TestLoaded({required this.testList});
}
