import 'package:covid19/src/models/country.dart';
import 'package:covid19/src/util/transform_number.dart';
import 'package:covid19/src/widgets/flag_container.dart';
import 'package:covid19/src/widgets/last_update.dart';
import 'package:flutter/material.dart';

class CountryItem extends StatelessWidget {
  Size size;
  final Country country;

  CountryItem({Key key, @required this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        showCountryData(country, context);
      },
      child: Card(
        color: Color(0xff3a4750),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        margin: EdgeInsets.all(8.0),
        elevation: 2.0,
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              FlagContainer(
                countryCode: country.countryCode,
              ),
              SizedBox(width: 8.0),
              Flexible(
                child: Container(
                  child: Text(
                    country.country,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Color(0xffeeeeee),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showCountryData(Country country, BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          color: Color(0xff3a4750),
          height: size.height * 0.12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlagContainer(
                    countryCode: country.countryCode,
                  ),
                  Column(
                    children: <Widget>[
                      Text(TransformNumber()
                          .changeNumberWithFormatCompactNonSymbol(
                              country.totalConfirmed)),
                      Text("Infectados"),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(TransformNumber()
                          .changeNumberWithFormatCompactNonSymbol(
                              country.totalDeaths)),
                      Text("Muertes"),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(TransformNumber()
                          .changeNumberWithFormatCompactNonSymbol(
                              country.totalRecovered)),
                      Text("Recuperados"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              LastUpdate(lastUpdate: country.date),
            ],
          ),
        );
      },
    );
  }
}
