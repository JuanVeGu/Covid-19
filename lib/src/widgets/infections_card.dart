import 'package:covid19/src/models/global.dart';
import 'package:covid19/src/util/transform_number.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfectionsCard extends StatelessWidget {
  final Global global;

  const InfectionsCard({Key key, @required this.global}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Card(
      color: Color(0xff3a4750),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      margin: EdgeInsets.all(8.0),
      elevation: 1.0,
      child: Container(
        width: size.width * 0.4,
        height: size.width * 0.4,
        margin: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.4),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  margin: EdgeInsets.only(
                    top: size.width * 0.008,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 6.0,
                      bottom: 6.0,
                      left: 8.0,
                      right: 8.0,
                    ),
                    child: Text(
                      "+${TransformNumber().changeNumberWithFormatNonSymbol(global.newConfirmed)}",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.04,
                      ),
                    ),
                  ),
                ),
                Icon(
                  FontAwesomeIcons.viruses,
                  size: size.width * 0.06,
                  color: Colors.blue.withOpacity(0.9),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "${TransformNumber().changeNumberWithFormatNonSymbol(global.totalConfirmed)}",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.065,
                  ),
                ),
                Text(
                  "Infectados",
                  style: TextStyle(
                    fontSize: size.width * 0.04,
                    color: Color(0xffeeeeee),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
