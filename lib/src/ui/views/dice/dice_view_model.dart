import 'package:persistent_dicer/src/ui/global/custom_base_view_model.dart';
import 'package:hive/hive.dart';

class DiceViewModel extends CustomBaseViewModel {
// jiffy
  List textFragments = [];

  void rollDice(String text) {
    
    // var box = await Hive.openBox('testBox');

    // testerArray = text.split('w');
    // print();

    textFragments.add({
      'text': text,
    });

    print(textFragments);

    notifyListeners();
  }
}
