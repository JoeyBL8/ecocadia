import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/effect.dart';

const cynetProbabilityModulator = Effect(
  image: 'assets/effects/cynet_probability_modulator.png',
  cost: 50,
  name: 'Probability Modulator',
  archetype: 'Cynet',
  description: 'After the dice is thrown in the earnings phase: '
      'Add one cynet creature to your hand '
      'with at least one resource number equal to '
      'the dice throw',
  moveType: [MoveTypes.trigger],
);
