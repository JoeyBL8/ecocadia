import 'package:new_card_game/src/game_config/item.dart';

const genericLifeInsurance = Item(
  // TODO: ADD IMAGE
  image: 'assets/unknown.png',
  name: 'Life Insurance',
  archetype: 'Generic',
  cost: 50,
  requirement: 'Any creature',
  equipEffect: 'When the equiped creature is sent to the afterlife: '
      'Draw 1 card',
  placementEffect: 'Draw 1 card',
);
