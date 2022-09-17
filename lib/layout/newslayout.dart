import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/module/searchscreen.dart';
import 'package:newsapp/shared/bloc/appstate.dart';
import 'package:newsapp/shared/bloc/cubit.dart';

class HomeNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<NewCubit,AppState>(
        listener: (BuildContext context, AppState state){},
        builder: (BuildContext context, AppState state){
          var cubit = NewCubit.get(context);
          return  Scaffold(
            appBar: AppBar(
              title: Text('News App'),
              actions: [
                IconButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchScreen()));
                }, icon: Icon(Icons.search,color: Theme.of(context).iconTheme.color,)),
                IconButton(onPressed: (){
                  cubit.changeTheme();
                }, icon: Icon(Icons.brightness_4_outlined,color: Theme.of(context).iconTheme.color)),
              ],
            ),
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: cubit.currentIndex,
                onTap: (index) {
                  cubit.changeNavBar(index);
                },
                items: cubit.items),
          );
      }
    );
  }
}
