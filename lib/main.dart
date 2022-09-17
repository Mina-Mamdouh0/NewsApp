import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/layout/newslayout.dart';
import 'package:newsapp/shared/bloc/appstate.dart';
import 'package:newsapp/shared/bloc/cubit.dart';
import 'package:newsapp/shared/network/remotle/dio.dart';
import 'package:newsapp/shared/network/remotle/local.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await ShareHelper.init();
  bool isDarkTheme=ShareHelper.getDate(key: 'isDark');
  runApp(MyApp(isDark: isDarkTheme));
}

class MyApp extends StatelessWidget {
  final bool isDark;

  const MyApp({Key? key,required this.isDark}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewCubit>(
      create: (context)=>NewCubit()..changeTheme(darkTheme: isDark),
      child: BlocConsumer<NewCubit,AppState>(
        listener: (context,state)=>{},
        builder: (context,state){
          var cubit =NewCubit.get(context);
         return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'News App',
            theme: ThemeData(
                primarySwatch: Colors.deepOrange,
                primaryColor: Colors.grey.shade200,
                scaffoldBackgroundColor: Colors.white,
                tabBarTheme: TabBarTheme(
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.deepOrange),
                iconTheme: IconThemeData(
                  color: Colors.black,
                  size: 20,
                ),
                appBarTheme: AppBarTheme(
                    color: Colors.white,
                    elevation: 0.0,
                    systemOverlayStyle: SystemUiOverlayStyle(
                        statusBarColor: Colors.white,
                        statusBarIconBrightness: Brightness.dark),
                    backwardsCompatibility: false,
                    titleTextStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                    backgroundColor: Colors.white,
                    elevation: 20,
                    selectedItemColor: Colors.deepOrange)),
            darkTheme: ThemeData(
                primaryColor: Colors.grey,
                primarySwatch: Colors.deepOrange,
                scaffoldBackgroundColor: Color(0xFF313335),
                tabBarTheme: TabBarTheme(
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.deepOrange,
                ),
                iconTheme: IconThemeData(
                  color: Colors.white,
                ),
                appBarTheme: AppBarTheme(
                    color: Color(0xFF313335),
                    elevation: 0.0,
                    systemOverlayStyle: SystemUiOverlayStyle(
                        statusBarColor: Color(0xFF313335),
                        statusBarIconBrightness: Brightness.light),
                    backwardsCompatibility: false,
                    titleTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                    backgroundColor: Color(0xFF313335),
                    elevation: 20,
                    selectedItemColor: Colors.deepOrange,
                    unselectedItemColor: Colors.grey)),
            themeMode: cubit.isDark?ThemeMode.dark:ThemeMode.light ,
            home: HomeNews(),
          );
        }
      ),
    );
  }
}
