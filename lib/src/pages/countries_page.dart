import 'package:covid19/src/widgets/principal_title.dart';
import 'package:covid19/src/widgets/update_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CountriesPage extends StatefulWidget {
  @override
  _CountriesPageState createState() => _CountriesPageState();
}

class _CountriesPageState extends State<CountriesPage> {
  double width = 60;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            PrincipalTitle(title: "Resumen"),
            SizedBox(height: 14.0),
            UpdateButton(),
            SizedBox(height: 14.0),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: Icon(FontAwesomeIcons.sortAmountDown),
          onPressed: () {},
        ),
      ),
    );
  }
}
