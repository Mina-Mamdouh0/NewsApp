import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/shared/bloc/appstate.dart';
import 'package:newsapp/shared/bloc/cubit.dart';
import 'package:newsapp/shared/component/component.dart';

class SearchScreen extends StatelessWidget {
  var textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewCubit(),
      child: BlocConsumer<NewCubit, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = NewCubit.get(context);
          var list = cubit.search;
          if(cubit.search.length!=null){
            return Scaffold(
              appBar: AppBar(
                title: Text('Search Screen'),
              ),
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      controller: textController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search',
                          labelText: 'search',
                          border: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.deepOrange, width: 2),
                          )),
                      onChanged: (value) {
                        cubit.searchTheDate( value);
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'The Empty';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Expanded(child: buildList(list)),
                ],
              ),
            );
          }else{
            return Center(
              child: Text('The Search Empty',style: TextStyle(
                color: Colors.blue
              ),),
            );
          }
        },
      ),
    );
  }
}
