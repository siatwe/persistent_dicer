import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:persistent_dicer/src/ui/widgets/dumb/skeleton.dart';

import './dice_view_model.dart';

class DiceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DiceViewModel>.reactive(
      viewModelBuilder: () => DiceViewModel(),
      builder: (
        BuildContext context,
        DiceViewModel model,
        Widget child,
      ) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('AppBar Demo'),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add_alert),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  print('test');
                },
              ),
              IconButton(
                icon: const Icon(Icons.navigate_next),
                tooltip: 'Next page',
                onPressed: () {},
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var index in model.textFragments)
                  Text(
                    index['text'],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                Expanded(
                  child: Container(),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Würfelformel'),
                  onSubmitted: (value) {
                    model.rollDice(value);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
