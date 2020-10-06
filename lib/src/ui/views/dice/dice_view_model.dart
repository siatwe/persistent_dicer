import 'package:persistent_dicer/src/ui/global/custom_base_view_model.dart';
import 'dart:math';

class DiceViewModel extends CustomBaseViewModel {
  List textFragments = [];

  void rollDice(String text) {
    if (!isValid(text)) {
      printToDiceLog("Ungültiger Wurf");
    } else {
      var diceFragments = text.split('w');
      diceFragments.removeWhere((value) => value == '');

      if (diceFragments.length == 1) {
        getDiceResult(1, int.parse(diceFragments[0]));
      } else if (diceFragments.length == 2) {
        getDiceResult(int.parse(diceFragments[0]), int.parse(diceFragments[1]));
      }
    }
    notifyListeners();
  }

  void getDiceResult(int factor, int diceSides) {
    final _random = new Random();
    var rolled = 1 + _random.nextInt(diceSides - 1);
    printToDiceLog(': ' + rolled.toString());
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
