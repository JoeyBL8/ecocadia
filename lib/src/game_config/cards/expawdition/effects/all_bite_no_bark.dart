import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/effect.dart';

const expawditionAllBiteNoBark = Effect(
  image: 'assets/effects/expawdition_all_bite_no_bark.png',
  name: 'All Bite no Bark',
  archetype: 'Expawdition',
  cost: 40,
  description: 'If you have at least 2 expawdition animal types on the field '
      'Remove all cards on your opponents side of the field of 1 card type: '
      'Creature, Item, Effect',
  moveType: [MoveTypes.quick],
);
