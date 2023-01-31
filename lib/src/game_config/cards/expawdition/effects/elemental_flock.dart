import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/effect.dart';

const expawditionElementalFlock = Effect(
  // TODO: ADD IMAGE
  image: '',
  name: 'Elemental Flock',
  archetype: 'Expawdition',
  cost: 100,
  description: 'During your opponents end phase, '
      'you can play one elemental "Expawdition" creature from your deck '
      'by paying triple the cost',
  moveType: [MoveTypes.continuous],
);
