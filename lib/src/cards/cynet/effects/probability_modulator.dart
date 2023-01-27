import 'package:new_card_game/src/cards/move_types.dart';
import 'package:new_card_game/src/effect.dart';

const cynetProbabilityModulator = Effect(
  cost: 50,
  name: 'Probability Modulator',
  archetype: 'Cynet',
  description: 'After the dice is thrown in the earnings phase: '
      'Add one cynet monster to your hand '
      'with at least one resource number equal to '
      'the dice throw',
  moveType: [MoveTypes.trigger],
);
