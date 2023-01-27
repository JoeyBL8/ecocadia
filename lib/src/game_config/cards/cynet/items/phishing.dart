

import 'package:new_card_game/src/game_config/item.dart';

const cynetPhishing = Item(
  name: 'Phishing',
  archetype: 'Cynet',
  cost: 20,
  requirement: 'Cybernetic Scifi',
  placementEffect: 'This card name becomes the same as the attached creature',
  equipEffect: 'When the attached creature completes an attack effect: '
      'steal 20 points from your opponent',
);
