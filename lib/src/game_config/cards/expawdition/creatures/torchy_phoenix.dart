import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/creature.dart';

const expawditionTorchyPhoenix = Creature(
  image: 'assets/creatures/expawdition_torchy_phoenix.png',
  name: 'Torchy Phoenix',
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
          'Then, play one "Bloodsniffer" from your deck or hand without cost.',
    ),
    Move(
      moveTypes: [MoveTypes.trigger],
      cost: 10,
      damage: 50,
      effect: 'When this card is sent to the afterlife (face-up): '
          'Remove 50 points from your opponent.',
    ),
    Move(
      moveTypes: [MoveTypes.attack],
      cost: 10,
      damage: 35,
      effect: '- Heatwave',
    ),
  ],
  craftingValue: ResourceType.orbs,
  craftingAmount: 2,
  gatheringOpportunities: [
    GatheringOpportunity(
      resourceType: ResourceType.orbs,
      amount: 3,
      chances: [5, 6],
    ),
  ],
);
