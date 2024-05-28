

import 'package:bloc/bloc.dart';
import 'package:exam_bloc/bloc/home_state.dart';
import 'package:exam_bloc/services/http_service.dart';

import '../models/info_model.dart';
import 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState>{
  List<Article> articles = [];


  HomeBloc(): super(HomeInitialState()){
    on<LoadBitcoinsListEvent>(_onLoadBitcoinsListEvent);
  }

  Future<void> _onLoadBitcoinsListEvent(LoadBitcoinsListEvent event, Emitter<HomeState> emit) async {
    var response = await Network.GET(Network.API_INFO_LIST, Network.paramsINFO());

    var bitcoinList = Network.parseInfo(response!);
    articles.addAll(bitcoinList.articles);
    emit(HomeBitcoinListState(articles));
  }
}

