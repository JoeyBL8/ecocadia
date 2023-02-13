import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/creature.dart';

const expawditionExpedinguin = Creature(
  image: 'assets/creatures/expawdition_expedinguin.png',
  name: 'Expedinguin',
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
          'Then, play one "Aquanine" from your deck or hand without cost.',
    ),
    Move(
      moveTypes: [MoveTypes.trigger],
      cost: 10,
      damage: 0,
      effect: 'When this card is sent to the afterlife (face-up): '
          'Search one "Expawdition" effect from your deck.',
    ),
    Move(
      moveTypes: [MoveTypes.attack],
      cost: 10,
      damage: 40,
      effect: '- Freeze',
    ),
  ],
  craftingValue: ResourceType.orbs,
  craftingAmount: 2,
  gatheringOpportunities: [
    GatheringOpportunity(
      resourceType: ResourceType.orbs,
      amount: 3,
      chances: [2, 3],
    ),
  ],
);
