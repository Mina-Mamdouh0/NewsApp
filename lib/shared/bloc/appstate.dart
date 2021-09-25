abstract class AppState{}

class InitialState extends AppState{}

class BottomNavBar extends AppState{}

class TabBarLocalNews extends AppState{}

class ChangeModeTheme extends AppState{}

class LoadingInGetLocalNewsDate extends AppState{}

class CompleteInGetLocalNewsDate extends AppState{}

class ErrorInGetLocalNewsDate extends AppState{
  final String error;
  ErrorInGetLocalNewsDate(this.error);
}

class LoadingInGetLocalBusinessDate extends AppState{}

class CompleteInGetLocalBusinessDate extends AppState{}

class ErrorInGetLocalBusinessDate extends AppState{
  final String error;
  ErrorInGetLocalBusinessDate(this.error);
}
class LoadingInGetLocalSportDate extends AppState{}

class CompleteInGetLocalSportDate extends AppState{}

class ErrorInGetLocalSportDate extends AppState{
  final String error;
  ErrorInGetLocalSportDate(this.error);
}

class LoadingInGetLocalScienceDate extends AppState{}

class CompleteInGetLocalScienceDate extends AppState{}

class ErrorInGetLocalScienceDate extends AppState{
  final String error;
  ErrorInGetLocalScienceDate(this.error);
}

class LoadingInGetLocalTechnologyDate extends AppState{}

class CompleteInGetLocalTechnologyDate extends AppState{}

class ErrorInGetLocalTechnologyDate extends AppState{
  final String error;
  ErrorInGetLocalTechnologyDate(this.error);
}

class LoadingInGetLocalHealthDate extends AppState{}

class CompleteInGetLocalHealthDate extends AppState{}

class ErrorInGetLocalHealthDate extends AppState{
  final String error;
  ErrorInGetLocalHealthDate(this.error);
}

class LoadingInGetLocalEntertainmentDate extends AppState{}

class CompleteInGetLocalEntertainmentDate extends AppState{}

class ErrorInGetLocalEntertainmentDate extends AppState{
  final String error;
  ErrorInGetLocalEntertainmentDate(this.error);
}

class LoadingInGetWouldBitcoinDate extends AppState{}

class CompleteInGetWouldBitcoinDate extends AppState{}

class ErrorInGetWouldBitcoinDate extends AppState{
  final String error;
  ErrorInGetWouldBitcoinDate(this.error);
}

class LoadingInGetWouldBusinessUsDate extends AppState{}

class CompleteInGetWouldBusinessUsDate extends AppState{}

class ErrorInGetWouldBusinessUsDate extends AppState{
  final String error;
  ErrorInGetWouldBusinessUsDate(this.error);
}

class LoadingInGetWouldTeslaDate extends AppState{}

class CompleteInGetWouldTeslaDate extends AppState{}

class ErrorInGetWouldTeslaDate extends AppState{
  final String error;
  ErrorInGetWouldTeslaDate(this.error);
}

class LoadingInGetWouldAppleDate extends AppState{}

class CompleteInGetWouldAppleDate extends AppState{}

class ErrorInGetWouldAppleDate extends AppState{
  final String error;
  ErrorInGetWouldAppleDate(this.error);
}

class LoadingInGetWouldTechCrunchDate extends AppState{}

class CompleteInGetWouldTechCrunchDate extends AppState{}

class ErrorInGetWouldTechCrunchDate extends AppState{
  final String error;
  ErrorInGetWouldTechCrunchDate(this.error);
}

class LoadingInGetWouldStreetJournalDate extends AppState{}

class CompleteInGetWouldStreetJournalDate extends AppState{}

class ErrorInGetWouldStreetJournalDate extends AppState{
  final String error;
  ErrorInGetWouldStreetJournalDate(this.error);
}
class SearchDate extends AppState{}

class CompleteSearchDate extends AppState{}

class ErrorSearchDate extends AppState{
  final String error;
  ErrorSearchDate(this.error);
}