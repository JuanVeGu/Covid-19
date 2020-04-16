import 'package:covid19/src/providers/covid_provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class OrderFloatingButton extends StatelessWidget {
  CovidProvider _covidProvider;

  @override
  Widget build(BuildContext context) {
    _covidProvider = Provider.of<CovidProvider>(context);

    return FloatingActionButton(
      backgroundColor: Color(0xff00adb5),
      child: _covidProvider.order == 0
          ? Icon(FontAwesomeIcons.sortAmountUp)
          : Icon(FontAwesomeIcons.sortAmountDown),
      onPressed: () {
        if (_covidProvider.order == 0) {
          _covidProvider.ascendingList();
        } else {
          _covidProvider.descendingList();
        }
      },
    );
  }
}
