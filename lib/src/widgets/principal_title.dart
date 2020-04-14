import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrincipalTitle extends StatelessWidget {
  final String title;

  const PrincipalTitle({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0, top: 15.0),
      child: Row(
        children: <Widget>[
          Icon(
            FontAwesomeIcons.virus,
            color: Colors.redAccent,
            size: 45.0,
          ),
          SizedBox(width: 10.0),
          Text(
            this.title,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
