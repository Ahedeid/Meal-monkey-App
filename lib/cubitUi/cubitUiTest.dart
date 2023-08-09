import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_monkey_mobile_project/bloc/test_cubit.dart';

class CubitTestUi extends StatelessWidget {
  const CubitTestUi({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TestCubit>(
        create: (BuildContext context) {
          return TestCubit();
        },
        child: const BodyList());
  }
}

class BodyList extends StatelessWidget {
  const BodyList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TestCubit, TestState>(
      builder: (BuildContext context, state) {
        print(state);
        if (state is TestLoading) {
          return const CircularProgressIndicator();
        } else if (state is TestLoaded) {
          var dataList = state.testList;
          return ListView.builder(
            itemCount: dataList.length,
            itemBuilder: (BuildContext context, int index) {},
          );
        } else {
          return Container();
        }
      },
    );
  }
}
