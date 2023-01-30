import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/effect.dart';

const floodgateOpen = Effect(
  image: 'assets/effects/general_flood_gate_open.jpeg',
  cost: 30,
  name: 'Floodgate Open',
  archetype: 'Generic',
  description: 'Return 1 creature of each to the hand. '
      'Each turn, during the end phase the turn player must return 1 card '
      'they possess to their hand',
  moveType: [MoveTypes.quick, MoveTypes.continuous],
);
