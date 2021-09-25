import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/screens/localnews/business.dart';
import 'package:newsapp/screens/localnews/entertainment.dart';
import 'package:newsapp/screens/localnews/headlines.dart';
import 'package:newsapp/screens/localnews/healthy.dart';
import 'package:newsapp/screens/localnews/localnew.dart';
import 'package:newsapp/screens/localnews/science.dart';
import 'package:newsapp/screens/localnews/technology.dart';
import 'package:newsapp/screens/newsplatform.dart';
import 'package:newsapp/screens/localnews/sports.dart';
import 'package:newsapp/screens/wouldnews/apple.dart';
import 'package:newsapp/screens/wouldnews/bitcoin.dart';
import 'package:newsapp/screens/wouldnews/businessus.dart';
import 'package:newsapp/screens/wouldnews/streetjournal.dart';
import 'package:newsapp/screens/wouldnews/techcrunch.dart';
import 'package:newsapp/screens/wouldnews/tesla.dart';
import 'package:newsapp/screens/wouldnews/wouldnews.dart';
import 'package:newsapp/shared/network/remotle/dio.dart';
import 'package:newsapp/shared/network/remotle/local.dart';
import 'appstate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewCubit extends Cubit<AppState> {
  NewCubit() : super(InitialState());

  static NewCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  int currentTabBarLocal = 0;
  bool isDark = false;
  List screens = [
    LocalNews(),
    WouldNews(),
    NewsPlatform(),
  ];
  List<Widget> localScreens = [
    HeadLinesScreen(),
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
    TechnologyScreen(),
    HealthScreen(),
    EntertainmentScreen(),
  ];

  List<Widget> wouldScreens = [
    BitcoinScreen(),
    BusinessUsScreen(),
    TeslaScreen(),
    AppleScreen(),
    TechCrunchScreen(),
    StreetJournalScreen(),
  ];


  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.newspaper), label: 'Local News'),
    BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.globe), label: 'Would News'),
    BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.rss), label: 'news platforms'),
  ];
  List<dynamic> localNewsHeadLineDate = [];
  List<dynamic> localNewsBusinessDate = [];
  List<dynamic> localNewsSportDate = [];
  List<dynamic> localNewsScienceDate = [];
  List<dynamic> localNewsTechnologyDate = [];
  List<dynamic> localNewsHealthDate = [];
  List<dynamic> localNewsEntertainmentDate = [];

  List<dynamic> wouldNewsBitcoinDate = [];
  List<dynamic> wouldNewsBusinessUsDate = [];
  List<dynamic> wouldNewsTeslaDate = [];
  List<dynamic> wouldNewsAppleDate = [];
  List<dynamic> wouldNewsTechCrunchDate = [];
  List<dynamic> wouldNewsStreetJournalDate = [];
  List<dynamic> search=[];


  void changeTheme({bool darkTheme}) {
    if(darkTheme!=null){
      isDark=darkTheme;
      emit(ChangeModeTheme());
    }else{
      isDark = !isDark;
      ShareHelper.setDate(key: 'isDark', value: true).then((_){
        emit(ChangeModeTheme());
      });

    }

  }

  void changeTabBar(int index) {
    currentTabBarLocal = index;
    emit(TabBarLocalNews());
  }

  void changeNavBar(int index) {
    currentIndex = index;
    emit(BottomNavBar());
  }

  void localDate() {
    DioHelper.getDate(
      path: 'v2/top-headlines',
      query: {'country': 'eg',
        'apiKey': 'c7cad94b307d462db80ddbe54019585b'},
    ).then((value) {
      localNewsHeadLineDate = value.data['articles'];
      emit(CompleteInGetLocalNewsDate());
    }).catchError((e) {
      emit(ErrorInGetLocalNewsDate(e.toString()));
    });
  }

  void localBusinessDate() {
    DioHelper.getDate(
      path: 'v2/top-headlines',
      query: {
        'country': 'eg',
        'category': 'business',
        'apiKey': 'c7cad94b307d462db80ddbe54019585b'
      },
    ).then((value) {
      localNewsBusinessDate = value.data['articles'];
      emit(CompleteInGetLocalBusinessDate());
    }).catchError((e) {
      emit(ErrorInGetLocalBusinessDate(e.toString()));
    });
  }

  void localSportDate() {
    DioHelper.getDate(
      path: 'v2/top-headlines',
      query: {
        'country': 'eg',
        'category': 'sport',
        'apiKey': 'c7cad94b307d462db80ddbe54019585b'
      },
    ).then((value) {
      localNewsSportDate = value.data['articles'];

      emit(CompleteInGetLocalSportDate());
    }).catchError((e) {
      emit(ErrorInGetLocalSportDate(e.toString()));
    });
  }

  void localScienceDate() {
    DioHelper.getDate(
      path: 'v2/top-headlines',
      query: {
        'country': 'eg',
        'category': 'science',
        'apiKey': 'c7cad94b307d462db80ddbe54019585b'
      },
    ).then((value) {
      localNewsScienceDate = value.data['articles'];
      emit(CompleteInGetLocalScienceDate());
    }).catchError((e) {
      emit(ErrorInGetLocalScienceDate(e.toString()));
    });
  }

  void localTechnologyDate() {
    DioHelper.getDate(
      path: 'v2/top-headlines',
      query: {
        'country': 'eg',
        'category': 'technology',
        'apiKey': 'c7cad94b307d462db80ddbe54019585b'
      },
    ).then((value) {
      localNewsTechnologyDate = value.data['articles'];
      emit(CompleteInGetLocalTechnologyDate());
    }).catchError((e) {
      emit(ErrorInGetLocalTechnologyDate(e.toString()));
    });
  }

  void localHealthDate() {
    DioHelper.getDate(
      path: 'v2/top-headlines',
      query: {
        'country': 'eg',
        'category': 'health',
        'apiKey': 'c7cad94b307d462db80ddbe54019585b'
      },
    ).then((value) {
      localNewsHealthDate = value.data['articles'];
      emit(CompleteInGetLocalHealthDate());
    }).catchError((e) {
      emit(ErrorInGetLocalHealthDate(e.toString()));
    });
  }

  void localEntertainmentDate() {
    DioHelper.getDate(
      path: 'v2/top-headlines',
      query: {
        'country': 'eg',
        'category': 'entertainment',
        'apiKey': 'c7cad94b307d462db80ddbe54019585b'
      },
    ).then((value) {
      localNewsEntertainmentDate = value.data['articles'];
      emit(CompleteInGetLocalEntertainmentDate());
    }).catchError((e) {
      emit(ErrorInGetLocalEntertainmentDate(e.toString()));
    });
  }

  void wouldBitcoinDate() {
    DioHelper.getDate(
      path: 'v2/everything',
      query: {
        'q':'bitcoin',
        'from':'2021-08-19',
        'sortBy':'publishedAt',
        'apiKey': 'c7cad94b307d462db80ddbe54019585b'
      },
    ).then((value) {
      wouldNewsBitcoinDate = value.data['articles'];
      emit(CompleteInGetWouldBitcoinDate());
    }).catchError((e) {
      emit(ErrorInGetWouldBitcoinDate(e.toString()));
    });
  }

  void wouldBusinessUsDate() {
    DioHelper.getDate(
      path: 'v2/top-headlines',
      query: {
        'country':'us',
        'category':'business',
        'apiKey': 'c7cad94b307d462db80ddbe54019585b'
      },
    ).then((value) {
      wouldNewsBusinessUsDate = value.data['articles'];
      emit(CompleteInGetWouldBusinessUsDate());
    }).catchError((e) {
      emit(ErrorInGetWouldBusinessUsDate(e.toString()));
    });
  }

  void wouldTeslaDate() {
    DioHelper.getDate(
      path: 'v2/everything',
      query: {
        'q':'tesla',
        'from':'2021-08-19',
        'sortBy':'publishedAt',
        'apiKey': 'c7cad94b307d462db80ddbe54019585b'
      },
    ).then((value) {
      wouldNewsTeslaDate= value.data['articles'];
      emit(CompleteInGetWouldTeslaDate());
    }).catchError((e) {
      emit(ErrorInGetWouldTeslaDate(e.toString()));
    });
  }

  void wouldAppleDate() {
    DioHelper.getDate(
      path: 'v2/everything',
      query: {
        'q':'apple',
        'from':'2021-09-17',
        'to':'2021-09-17',
        'sortBy':'publishedAt',
        'apiKey': 'c7cad94b307d462db80ddbe54019585b'
      },
    ).then((value) {
      wouldNewsAppleDate = value.data['articles'];
      emit(CompleteInGetWouldAppleDate());
    }).catchError((e) {
      emit(ErrorInGetWouldAppleDate(e.toString()));
    });
  }

  void wouldTechCrunchDate() {
    DioHelper.getDate(
      path: 'v2/top-headlines',
      query: {
        'sources':'techcrunch',
        'apiKey': 'c7cad94b307d462db80ddbe54019585b'
      },
    ).then((value) {
      wouldNewsTechCrunchDate = value.data['articles'];
      emit(CompleteInGetWouldTechCrunchDate());
    }).catchError((e) {
      emit(ErrorInGetWouldTechCrunchDate(e.toString()));
    });
  }

  void wouldStreetJournalDate() {
    DioHelper.getDate(
      path: 'v2/everything',
      query: {
        'domains':'wsj.com',
        'apiKey': 'c7cad94b307d462db80ddbe54019585b'
      },
    ).then((value) {
      localNewsEntertainmentDate = value.data['articles'];
      emit(CompleteInGetWouldStreetJournalDate());
    }).catchError((e) {
      emit(ErrorInGetWouldStreetJournalDate(e.toString()));
    });
  }
  void searchTheDate(String nameDate) {
    emit(SearchDate());
    search=[];
    DioHelper.getDate(
      path: 'v2/everything',
      query: {
        'q':'$nameDate',
        'apiKey': 'c7cad94b307d462db80ddbe54019585b'
      },
    ).then((value) {
      search = value.data['articles'];
      emit(CompleteSearchDate());
    }).catchError((e) {
      emit(ErrorSearchDate(e.toString()));
    });
  }

}
