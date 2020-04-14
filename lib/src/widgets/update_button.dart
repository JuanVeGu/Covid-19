import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UpdateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          print("Actualizando lista");
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              bottomLeft: Radius.circular(25.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.0,
                    top: 4.0,
                    bottom: 4.0,
                  ),
                  child: Icon(
                    FontAwesomeIcons.undo,
                    color: Colors.white,
                    size: 20.0,
                  ),
                ),
                SizedBox(width: 10.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
