import 'package:covid19/src/models/summary.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CovidProvider with ChangeNotifier {
  Summary _summary;

  Summary get summary => _summary;

  getSummaryData() async {
    final res = await http.get('https://api.covid19api.com/summary');

    _summary = summaryFromJson(res.body);

    notifyListeners();
  }
}
