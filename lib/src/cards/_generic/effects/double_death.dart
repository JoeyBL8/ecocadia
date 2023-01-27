import 'package:new_card_game/src/cards/move_types.dart';
import 'package:new_card_game/src/effect.dart';

const doubleDeath = Effect(
  cost: 25,
  name: 'Double death',
  archetype: 'Generic',
  description: 'Creatures used for crafting in the afterlife will give 1 '
      'additional resource',
  moveType: [MoveTypes.continuous],
);
