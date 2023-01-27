import 'package:new_card_game/src/item.dart';

const cynetViralDuplication = Item(
  name: 'Viral Duplication',
  archetype: 'Cynet',
  requirement: 'Cybernetic Scifi',
  cost: 50,
  equipEffect: 'This cards name becomes the same as the equiped creature.',
  placementEffect: 'Anything on the opposing side in this column '
      'is cancelled for this turn.',
);
