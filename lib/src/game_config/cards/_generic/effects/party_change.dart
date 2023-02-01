import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/effect.dart';

const genericPartyChange = Effect(
  // TODO: ADD IMAGE
  image: 'assets/unknown.png',
  cost: 50,
  name: 'Party! Change!',
  archetype: 'Generic',
  description: 'When a creature is played on the field and '
      'there are now a total of 4 creatures: '
      'Send all creatures to the afterlife, '
      'then each player can play 2 creatures without cost from their hand',
  moveType: [MoveTypes.trigger],
);
