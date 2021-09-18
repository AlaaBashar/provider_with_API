import 'package:flutter/material.dart';
import 'package:provider_2/Service/FetchDataFromAPI.dart';
import 'package:provider_2/model/Articles.dart';

class Counters extends ChangeNotifier{

  Counters(){
    _fetchData();

  }


  List<Articles> _listModel;
  List<Articles> get listModel => _listModel;

  _fetchData() async{

    _listModel = await NewsApi.fetchData();
    notifyListeners();

  }




}