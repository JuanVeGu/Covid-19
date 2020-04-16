import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class TransformNumber {
  String changeNumberWithFormatNonSymbol(int number) {
    return FlutterMoneyFormatter(
      amount: number.toDouble(),
      settings: MoneyFormatterSettings(
        fractionDigits: 0,
      ),
    ).output.nonSymbol;
  }

  String changeNumberWithFormatCompactNonSymbol(int number) {
    return FlutterMoneyFormatter(
      amount: number.toDouble(),
      settings: MoneyFormatterSettings(
        fractionDigits: 2,
      ),
    ).output.compactNonSymbol;
  }
}
