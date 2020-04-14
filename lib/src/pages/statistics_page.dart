import 'package:covid19/src/widgets/principal_title.dart';
import 'package:covid19/src/widgets/update_button.dart';
import 'package:flutter/material.dart';

class StatisticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            PrincipalTitle(title: "Actualización Mundial"),
            SizedBox(height: 14.0),
            UpdateButton(),
            SizedBox(height: 14.0),
          ],
        ),
      ),
    );
  }
}
