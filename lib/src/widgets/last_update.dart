import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LastUpdate extends StatelessWidget {
  final DateTime lastUpdate;
  DateFormat formatter = new DateFormat('dd-MM-yyyy HH:mm:ss');

  LastUpdate({Key key, @required this.lastUpdate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: Text(
        "Ultima actualización ${formatter.format(lastUpdate)}",
        style: TextStyle(
          fontSize: size.width * 0.035,
          color: Color(0xffeeeeee),
        ),
      ),
    );
  }
}
