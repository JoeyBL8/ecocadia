import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/effect.dart';

const cynetBugsGalore = Effect(
  image: 'assets/effects/cynet_bugs_galore.png',
  cost: 20,
  name: 'Bugs Galore!',
  archetype: 'Cynet',
  description: 'When a glitch resource is provided during the earning phase: '
      'You get one aditional glitch resource.',
  moveType: [MoveTypes.continuous],
);
