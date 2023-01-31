import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/effect.dart';

const expawditionHeavenlyWoofer = Effect(
  // TODO: ADD IMAGE
  image: '',
  name: 'Heavenly Woofer',
  archetype: 'Expawdition',
  cost: 40,
  description: 'Send one Expawdition animal type '
      'from your deck to the afterlife',
  moveType: [MoveTypes.quick],
);
