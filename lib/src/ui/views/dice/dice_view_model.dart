import 'package:persistent_dicer/src/ui/global/custom_base_view_model.dart';
import 'dart:math';
import 'package:intl/intl.dart';

class DiceViewModel extends CustomBaseViewModel {
  List textFragments = [];

  void rollDice(String text) {
    if (!isValid(text)) {
      printToDiceLog("Ungültiger Wurf");
    } else {
      var diceFragments = text.toLowerCase().split('w');
      diceFragments.removeWhere((value) => value == '');

      if (diceFragments.length == 1) {
        getRollResult(1, int.parse(diceFragments[0]));
      } else if (diceFragments.length == 2) {
        getRollResult(int.parse(diceFragments[0]), int.parse(diceFragments[1]));
      }
    }
    notifyListeners();
  }

  void getRollResult(int factor, int diceSides) {
    int sum = 0;
    print(sum);
    for (var i = 1; i <= factor; i++) {
      sum += getDiceResult(diceSides);
    }
    var timeString = DateFormat('ddmmyyyy hh:mm:ss').format(DateTime.now());
    printToDiceLog("[" +
        timeString +
        '] ' +
        factor.toString() +
        "w" +
        diceSides.toString() +
        ': ' +
        sum.toString());
  }

  int getDiceResult(int diceSides) {
    return new Random().nextInt(diceSides + 1);
  }

  bool isValid(String text) {
    final validCharsAndNumbers = RegExp(r"(\d+)?w(\d+)([\+\-]\d+)?");
    if (validCharsAndNumbers.hasMatch(text)) {
      return true;
    }
    return false;
  }

  void printToDiceLog(String textToAdd) {
    textFragments.add({
      'text': textToAdd,
    });
  }
}
