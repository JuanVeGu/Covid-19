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
                      Text(
                        TransformNumber()
                            .changeNumberWithFormatCompactNonSymbol(
                                country.totalConfirmed),
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: size.width * 0.045,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Infectados",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: size.width * 0.035,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        TransformNumber()
                            .changeNumberWithFormatCompactNonSymbol(
                                country.totalDeaths),
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: size.width * 0.045,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Muertes",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: size.width * 0.035,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        TransformNumber()
                            .changeNumberWithFormatCompactNonSymbol(
                                country.totalRecovered),
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: size.width * 0.045,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Recuperados",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: size.width * 0.035,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.01),
              LastUpdate(lastUpdate: country.date),
              SizedBox(height: size.height * 0.01),
            ],
          ),
        );
      },
    );
  }
}
