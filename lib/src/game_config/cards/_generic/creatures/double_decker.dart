import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/creature.dart';

const genericDoubleDecker = Creature(
  // TODO: ADD IMAGE
  image: 'assets/unknown.png',
  name: 'Double Decker',
  archetype: 'Generic',
  type: 'Machine',
  attribute: Attribute.shadow,
  cost: 40,
  defence: 0,
  moves: [
    Move(
      moveTypes: [MoveTypes.defensive],
      cost: 20,
      damage: 0,
      effect: 'Send this card to the bottom of your deck. Draw 2 cards.',
    ),
  ],
  craftingValue: ResourceType.bolts,
  craftingAmount: 6,
  gatheringOpportunities: [
    GatheringOpportunity(
      resourceType: ResourceType.omni,
      amount: 3,
      chances: [1, 2, 3],
    ),
    GatheringOpportunity(
      resourceType: ResourceType.bolts,
      amount: 3,
      chances: [4, 5, 6],
    ),
  ],
);
