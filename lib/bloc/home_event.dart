
import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable{
   HomeEvent();
}


class LoadBitcoinsListEvent extends HomeEvent{
  @override
  List<Object?> get props => [];

}