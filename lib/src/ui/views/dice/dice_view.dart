import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
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
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var index in model.textFragments)
                    Text(
                      index['text'],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
          ),
          appBar: AppBar(title: const Text('The Persistent Dicer')),
        );
      },
    );
  }
}
