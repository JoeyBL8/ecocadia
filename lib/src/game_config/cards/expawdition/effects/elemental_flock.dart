import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/effect.dart';

const expawditionElementalFlock = Effect(
  image: 'assets/effects/expawdition_elemental_flock.png',
  name: 'Elemental Flock',
  archetype: 'Expawdition',
  cost: 100,
  description: 'During your opponents end phase, '
      'you can play one Elemental "Expawdition" creature from your deck '
      'by paying triple the cost',
  moveType: [MoveTypes.continuous],
);
