import '../../LatestNews/models/newsmodel.dart';

abstract class NewsStates{}
class NewsInitialStates extends NewsStates{}
class NewsLoadingStates extends NewsStates{}
class NewsLoadedStates extends NewsStates{
  Latest latest;
  NewsLoadedStates({required this.latest});
}
class NewsErrorStates extends NewsStates{
  String error;
  NewsErrorStates({required this.error});
}