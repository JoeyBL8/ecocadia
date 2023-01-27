import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/effect.dart';

const ohBoy = Effect(
  cost: 15,
  name: 'Oh Boy!',
  archetype: 'Generic',
  description:
      'When your opponent activates a non-damaging monster move, cancel it.',
  moveType: [MoveTypes.trigger],
);
