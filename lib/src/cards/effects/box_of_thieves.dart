import 'package:new_card_game/src/cards/move_types.dart';
import 'package:new_card_game/src/effect.dart';

const boxOfThieves = Effect(
  cost: 15,
  name: 'Box of Thieves',
  archetype: 'Generic',
  description: 'When your opponent draws a card outside of the draw phase, '
      'You can steal one random card from your opponents hand.',
  moveType: [MoveTypes.trigger],
);
