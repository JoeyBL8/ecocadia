import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/effect.dart';

const genericWishingWell = Effect(
  // TODO: ADD IMAGE
  image: '',
  cost: 25,
  name: 'Wishing well',
  archetype: 'generic',
  description: 'Show your hand to your opponent. Then draw 3 cards.'
      'Then shuffle 2 cards back into your deck.',
  moveType: [MoveTypes.ignition],
);
