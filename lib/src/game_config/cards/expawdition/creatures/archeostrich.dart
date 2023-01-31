import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/creature.dart';

const expawditionArcheostrich = Creature(
  image: 'assets/creatures/expawdition_archeostrich.jpeg',
  name: 'Archeostrich',
  archetype: 'Expawdition',
  type: 'Enchanted',
  attribute: Attribute.elemental,
  cost: 20,
  defence: 50,
  moves: [
    Move(
      moveTypes: [MoveTypes.ignition],
      cost: 30,
      damage: 0,
      effect: 'During the second turn, at the start of the play phase: '
          'Place this card face down in the afterlife. '
          'Then, play one "Digs Hund" from your deck or hand without cost.',
    ),
    Move(
      moveTypes: [MoveTypes.trigger],
      cost: 10,
      damage: 0,
      effect: 'When this card is sent to the afterlife (face-up): '
          'Search one "expawdition" creature from your deck.',
    ),
  ],
  craftingValue: ResourceType.orbs,
  craftingAmount: 2,
  gatheringOpportunities: [
    GatheringOpportunity(
      resourceType: ResourceType.orbs,
      amount: 3,
      chances: [1, 2],
    ),
  ],
);
