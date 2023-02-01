import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/effect.dart';

const cynetRansomware = Effect(
  //TODO: ADD IMAGE
  image: 'assets/unknown.png',
  cost: 50,
  name: 'Ransomware',
  archetype: 'Cynet',
  description: 'When a cynet is sent to the afterlife the field: '
      'remove 50 points from your opponent',
  moveType: [MoveTypes.continuous],
);
