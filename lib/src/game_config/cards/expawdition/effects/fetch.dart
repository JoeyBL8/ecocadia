import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/effect.dart';

const expawditionFetch = Effect(
  image: 'assets/effects/expawdition_fetch.png',
  name: 'Fetch!',
  archetype: 'Expawdition',
  cost: 30,
  description: 'Place one "Expawdition" animal type in your deck. '
      'Then add one "Expawdition" enchanted type to your hand.',
  moveType: [
    MoveTypes.ignition,
  ],
);
