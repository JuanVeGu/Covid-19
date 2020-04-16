import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrincipalTitle extends StatelessWidget {
  final String title;

  const PrincipalTitle({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(left: 8.0, top: 15.0),
      child: Row(
        children: <Widget>[
          Icon(
            FontAwesomeIcons.virus,
            color: Colors.redAccent,
            size: size.width * 0.12,
          ),
          SizedBox(width: size.width * 0.03),
          Text(
            this.title,
            style: TextStyle(
              fontSize: size.width * 0.06,
              color: Color(0xffeeeeee),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
