import 'package:covid19/src/models/country.dart';
import 'package:covid19/src/widgets/flag_container.dart';
import 'package:flutter/material.dart';

class CountryItem extends StatelessWidget {
  final Country country;

  const CountryItem({Key key, @required this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      margin: EdgeInsets.all(8.0),
      elevation: 4.0,
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            FlagContainer(
              countryCode: country.countryCode,
            ),
            SizedBox(width: 8.0),
            Text(
              country.country,
              style: TextStyle(fontSize: 17.0),
            ),
          ],
        ),
      ),
    );
  }
}
