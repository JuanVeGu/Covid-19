import 'package:covid19/src/providers/covid_provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class LastUpdate extends StatelessWidget {
  DateFormat formatter = new DateFormat('dd-MM-yyyy HH:mm:ss');
  DateTime _lastUpdate;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _lastUpdate = Provider.of<CovidProvider>(context).summary.date;

    return Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: Text(
        "Ultima actualización ${formatter.format(_lastUpdate)}",
        style: TextStyle(
          fontSize: size.width * 0.035,
          color: Color(0xffeeeeee),
        ),
      ),
    );
  }
}
