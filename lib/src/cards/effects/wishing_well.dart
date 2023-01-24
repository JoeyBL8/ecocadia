import 'package:new_card_game/src/cards/move_types.dart';
import 'package:new_card_game/src/effect.dart';

const wishingWell = Effect(
  cost: 25,
  name: 'Wishing well',
  archetype: 'generic',
  description: 'Show your hand to your opponent. Then draw 3 cards.'
      'Then shuffle 2 cards back into your deck.',
  moveType: [MoveTypes.ingnition],
);
