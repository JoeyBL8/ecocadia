import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/creature.dart';

const genericTreeOfWisdom = Creature(
  // TODO: ADD IMAGE
  image: 'assets/unknown.png',
  name: 'Tree of wisdom',
  archetype: 'Generic',
  type: 'Flora',
  attribute: Attribute.magic,
  cost: 100,
  defence: 80,
  moves: [
    Move(
      moveTypes: [MoveTypes.defensive],
      cost: 20,
      damage: 0,
      effect: 'Any damage taken from the first attack is reduced to 0',
    ),
    Move(
      moveTypes: [MoveTypes.attack],
      cost: 20,
      damage: 40,
      effect: '- Drop a branch on their head!',
    ),
    Move(
      moveTypes: [MoveTypes.attack],
      cost: 100,
      damage: 200,
      effect: 'Send this card to the afterlife after completing this',
    ),
  ],
  craftingValue: ResourceType.omni,
  craftingAmount: 1,
  gatheringOpportunities: [
    GatheringOpportunity(
      resourceType: ResourceType.sugar,
      amount: 4,
      chances: [1,6],
    ),
  ],
);
