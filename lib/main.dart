// import 'package:new_card_game/src/game/deck.dart';
// import 'package:new_card_game/src/game/game_card.dart';
// import 'package:new_card_game/src/game_config/cards/_generic/effects/box_of_thieves.dart';
// import 'package:new_card_game/src/game_config/cards/_generic/effects/oh_boy.dart';
// import 'package:new_card_game/src/game_config/cards/_generic/effects/party_change.dart';
// import 'package:new_card_game/src/game_config/cards/_generic/effects/wishing_well.dart';
// import 'package:new_card_game/src/game_config/cards/cynet/creatures/injector.dart';
// import 'package:new_card_game/src/game_config/cards/cynet/creatures/malice.dart';
// import 'package:new_card_game/src/game_config/cards/cynet/creatures/zero_day.dart';
// import 'package:new_card_game/src/game_config/cards/cynet/effects/bugs_galore.dart';
// import 'package:new_card_game/src/game_config/cards/cynet/effects/hello_world.dart';
// import 'package:new_card_game/src/game_config/cards/cynet/effects/probability_modulator.dart';
// import 'package:new_card_game/src/game_config/cards/cynet/items/phishing.dart';
// import 'package:new_card_game/src/game_config/cards/cynet/items/viral_duplication.dart';

// void main(List<String> args) {
//   var deck = Deck.fromCards([
//     cynetBugsGalore,
//     cynetBugsGalore,
//     cynetBugsGalore,
//     cynetHelloWorld,
//     cynetHelloWorld,
//     cynetHelloWorld,
//     cynetMalice,
//     cynetMalice,
//     cynetMalice,
//     cynetZeroDay,
//     cynetZeroDay,
//     cynetZeroDay,
//     cynetInjector,
//     cynetInjector,
//     cynetInjector,
//     cynetProbabilityModulator,
//     cynetProbabilityModulator,
//     cynetProbabilityModulator,
//     cynetPhishing,
//     cynetPhishing,
//     cynetPhishing,
//     cynetViralDuplication,
//     cynetViralDuplication,
//     cynetViralDuplication,
//     genericOhBoy,
//     genericOhBoy,
//     genericOhBoy,
//     genericPartyChange,
//     genericPartyChange,
//     genericPartyChange,
//     genericBoxOfThieves,
//     genericBoxOfThieves,
//     genericBoxOfThieves,
//     genericWishingWell,
//     genericWishingWell,
//     genericWishingWell,
//   ]);

//   deck.shuffle();

//   var hand = <GameCard>[];
//   for (int i = 0; i < 6; i++) {
//     hand.add(deck.draw());
//   }
//   for (var card in hand) {
//     print(card.card.name);
//     print(card.card.toString());
//   }
// }

import 'package:flutter/material.dart';
import 'package:new_card_game/src/ui/card_widget.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: CardWidget(
          height: 10,
        ),
      ),
    ),
  );
}
