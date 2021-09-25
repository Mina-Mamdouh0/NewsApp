import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/shared/bloc/appstate.dart';
import 'package:newsapp/shared/bloc/cubit.dart';

class LocalNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      BlocProvider(
        create: (context) => NewCubit() ..localDate()..localBusinessDate()..localEntertainmentDate()
          ..localHealthDate()..localTechnologyDate()
          ..localScienceDate()..localSportDate()
          ..localEntertainmentDate(),
        child: BlocConsumer<NewCubit, AppState>(
            listener: (BuildContext context, AppState state) {},
            builder: (BuildContext context, AppState state) {
              var cubit = NewCubit.get(context);
              return DefaultTabController(
                length: 7,
                child: Scaffold(
                  appBar: AppBar(
                      title: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    isScrollable: true,
                    onTap: (val) {
                      cubit.changeTabBar(val);
                    },
                    tabs: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.view_headline,
                            size: cubit.currentTabBarLocal == 0 ? 35 : 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          if (cubit.currentTabBarLocal == 0)
                            Text(
                              'HeadLine',
                            )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.business,
                            size: cubit.currentTabBarLocal == 1 ? 35 : 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          if (cubit.currentTabBarLocal == 1)
                            Text(
                              'Business',
                            )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.sports,
                            size: cubit.currentTabBarLocal == 2 ? 35 : 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          if (cubit.currentTabBarLocal == 2)
                            Text(
                              'Sport',
                            )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.science,
                            size: cubit.currentTabBarLocal == 3 ? 35 : 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          if (cubit.currentTabBarLocal == 3)
                            Text(
                              'Science',
                            )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.biotech,
                            size: cubit.currentTabBarLocal == 4 ? 35 : 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          if (cubit.currentTabBarLocal == 4)
                            Text(
                              'Technology',
                            )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.health_and_safety,
                            size: cubit.currentTabBarLocal == 5 ? 35 : 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          if (cubit.currentTabBarLocal == 5)
                            Text(
                              'Health',
                            )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.tv,
                            size: cubit.currentTabBarLocal == 6 ? 35 : 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          if (cubit.currentTabBarLocal == 6)
                            Text(
                              'Entertainment',
                            )
                        ],
                      ),
                    ],
                  )),
                  body: TabBarView(
                    children: cubit.localScreens,
                  ),
                ),
              );
            }
    ),
      );
  }
}
