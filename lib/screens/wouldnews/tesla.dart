import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/shared/bloc/appstate.dart';
import 'package:newsapp/shared/bloc/cubit.dart';
import 'package:newsapp/shared/component/component.dart';

class TeslaScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<NewCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = NewCubit.get(context);
        var list = cubit.wouldNewsTeslaDate;
        if (cubit.wouldNewsTeslaDate.length != 0) {
          return buildList(list);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

}