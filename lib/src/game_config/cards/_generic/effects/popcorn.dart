import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/effect.dart';

const popcorn = Effect(
  cost: 10,
  name: 'Popcorn',
  archetype: 'Generic',
  description: 'Send two Effect cards, one on your field and '
      'one on either field, to the Afterlife.',
  moveType: [MoveTypes.ignition],
);
