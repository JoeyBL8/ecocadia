import 'package:flutter/material.dart' hide Card;
import 'package:new_card_game/src/game/deck.dart';
import 'package:new_card_game/src/game/game_card.dart';
import 'package:new_card_game/src/game_config/card.dart';
import 'package:new_card_game/src/game_config/sets/a_new_beginning.dart';
import 'package:new_card_game/src/ui/card_widget.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: PackOpener(),
    ),
  );
}

class PackOpener extends StatefulWidget {
  const PackOpener({super.key});

  @override
  State<PackOpener> createState() => _PackOpenerState();
}

class _PackOpenerState extends State<PackOpener> {
  var cards = <Card>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            ElevatedButton(
              onPressed: () {
                cards.clear();
                for (int i = 0; i < 7; i++) {
                  var deck = Deck(
                    cards: aNewBeginning.map((e) => GameCard(card: e)).toList(),
                  );
                  deck.shuffle();
                  cards.add(deck.draw().card);
                }
                setState(() {});
              },
              child: const SizedBox(
                width: double.infinity,
                child: Text(
                  'Open Pack!',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            for (var card in cards) ...[
              CardWidget(
                card: card,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
