import 'package:flutter/material.dart';

class FlagContainer extends StatelessWidget {
  final String countryCode;

  const FlagContainer({Key key, @required this.countryCode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      height: 50.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
        image: DecorationImage(
          image: AssetImage(
            'icons/flags/png/${countryCode.toLowerCase()}.png',
            package: 'country_icons',
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
