import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/effect.dart';

const helloWorld = Effect(
  cost: 20,
  name: 'Hello World',
  archetype: 'Cynet',
  description:
      'Revive one Cynet creature from the afterlife. Then, pay the resource cost',
  moveType: [MoveTypes.ignition],
);
