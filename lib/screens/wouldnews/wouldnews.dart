import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newsapp/shared/bloc/appstate.dart';
import 'package:newsapp/shared/bloc/cubit.dart';

class WouldNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
       BlocProvider(
         create: (context)=>NewCubit()..wouldBitcoinDate()
           ..wouldBusinessUsDate()
           ..wouldTeslaDate()
           ..wouldAppleDate()
           ..wouldTechCrunchDate()
           ..wouldStreetJournalDate(),
         child: BlocConsumer<NewCubit, AppState>(
            listener: (BuildContext context, AppState state) {},
            builder: (BuildContext context, AppState state) {
              var cubit = NewCubit.get(context);
              return DefaultTabController(
                length: 6,
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
                                FontAwesomeIcons.bitcoin,
                                size: cubit.currentTabBarLocal == 0 ? 35 : 25,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              if (cubit.currentTabBarLocal == 0)
                                Text(
                                  'Bitcoin',
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
                                  'Business US',
                                )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                FontAwesomeIcons.chargingStation,
                                size: cubit.currentTabBarLocal == 2 ? 35 : 25,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              if (cubit.currentTabBarLocal == 2)
                                Text(
                                  'Tesla',
                                )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                FontAwesomeIcons.apple,
                                size: cubit.currentTabBarLocal == 3 ? 35 : 25,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              if (cubit.currentTabBarLocal == 3)
                                Text(
                                  'Apple',
                                )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                FontAwesomeIcons.twitch,
                                size: cubit.currentTabBarLocal == 4 ? 35 : 25,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              if (cubit.currentTabBarLocal == 4)
                                Text(
                                  'TechCrunch',
                                )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                FontAwesomeIcons.digitalTachograph,
                                size: cubit.currentTabBarLocal == 5 ? 35 : 25,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              if (cubit.currentTabBarLocal == 5)
                                Text(
                                  'Street Journal',
                                )
                            ],
                          ),

                        ],
                      )),
                  body: TabBarView(
                    children: cubit.wouldScreens,
                  ),
                ),
              );
            }
    ),
       );
  }
}
