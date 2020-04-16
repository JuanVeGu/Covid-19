import 'package:covid19/src/models/country.dart';
import 'package:covid19/src/models/global.dart';
import 'package:covid19/src/models/summary.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CovidProvider with ChangeNotifier {
  int _order = 0;
  Summary _summary = new Summary();
  Global _global = new Global();
  List<Country> _countries = List();
  bool loading = false;

  Summary get summary => _summary;
  Global get global => _global;
  List<Country> get countries => _countries;
  int get order => _order;

  CovidProvider() {
    getSummaryData();
  }

  getSummaryData() async {
    loading = true;
    notifyListeners();

    final res = await http.get('https://api.covid19api.com/summary');

    _summary = summaryFromJson(res.body);
    _global = _summary.global;
    _countries = _summary.countries;
    loading = false;

    notifyListeners();
  }

  ascendingList() {
    _countries.sort((a, b) => a.totalConfirmed.compareTo(b.totalConfirmed));
    _order = 1;

    notifyListeners();
  }

  descendingList() {
    _countries.sort((b, a) => a.totalConfirmed.compareTo(b.totalConfirmed));
    _order = 0;

    notifyListeners();
  }
}
