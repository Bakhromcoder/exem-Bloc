import 'package:equatable/equatable.dart';
import '../models/info_model.dart';

abstract class HomeState extends Equatable{}

class HomeInitialState extends HomeState{
  @override
  List<Object?> get props => [];
}

class HomeBitcoinListState extends HomeState{
  final List<Article> articles;

  HomeBitcoinListState(this.articles);

  @override
  List<Object?> get props => [articles];
}