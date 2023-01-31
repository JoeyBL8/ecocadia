import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/effect.dart';

const genericOhBoy = Effect(
  // TODO: ADD IMAGE
  image: '',
  cost: 15,
  name: 'Oh Boy!',
  archetype: 'Generic',
  description:
      'When your opponent activates a non-damaging creature move, cancel it.',
  moveType: [MoveTypes.trigger],
);
