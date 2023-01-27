import 'package:new_card_game/src/cards/move_types.dart';
import 'package:new_card_game/src/effect.dart';

const cynetBugsGalore = Effect(
  cost: 20,
  name: 'Bugs Galore!',
  archetype: 'Cynet',
  description: 'When a glitch resource is provided during the earning phase: '
      'You get one aditional glitch resource.',
  moveType: [MoveTypes.continuous],
);
