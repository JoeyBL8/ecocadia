import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/creature.dart';

const expawditionAquanine = Creature(
  image: 'assets/creatures/expawdition_aquanine.jpeg',
  name: 'Aquanine',
  archetype: 'Expawdition',
  type: 'Animal',
  attribute: Attribute.ground,
  cost: 200,
  defence: 150,
  moves: [
    Move(
      moveTypes: [MoveTypes.attack],
      cost: 10,
      damage: 70,
      effect: '- Bites the enemy',
    ),
    Move(
      moveTypes: [MoveTypes.quick],
      cost: 30,
      damage: 20,
      effect: 'Cancels all effects of the targeted creature. '
          'Can not be used directly against your opponent.',
    ),
    Move(
      moveTypes: [MoveTypes.ignition],
      cost: 40,
      damage: 0,
      effect: 'Change any number of "expedinguin" face down in your afterlife: '
          'Return as many non-creature cards on the field back to the deck',
    ),
  ],
  craftingValue: ResourceType.gems,
  craftingAmount: 6,
  gatheringOpportunities: [
    GatheringOpportunity(
      resourceType: ResourceType.gems,
      amount: 4,
      chances: [2, 3, 4],
    ),
  ],
);
