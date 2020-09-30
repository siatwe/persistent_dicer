import 'package:persistent_dicer/src/ui/global/custom_base_view_model.dart';

class DiceViewModel extends CustomBaseViewModel {
// jiffy
  List textFragments = [];

  void rollDice(String text) {
    // testerArray = text.split('w');
    // print();

    textFragments.add({
      'text': text,
    });

    print(textFragments);

    notifyListeners();
  }
}
