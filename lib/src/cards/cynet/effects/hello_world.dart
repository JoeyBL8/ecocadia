import 'package:new_card_game/src/cards/move_types.dart';
import 'package:new_card_game/src/effect.dart';

const helloWorld = Effect(
  cost: 20,
  name: 'Hello World',
  archetype: 'Cynet',
  description:
      'Revive one Cynet creature from the afterlife. Then, pay the resource cost',
  moveType: [MoveTypes.ignition],
);
