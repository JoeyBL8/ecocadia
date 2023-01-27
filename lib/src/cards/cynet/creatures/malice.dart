import 'package:new_card_game/src/cards/move_types.dart';
import 'package:new_card_game/src/creature.dart';

const cynetMalice = Creature(
  name: 'Malice',
  archetype: 'Cynet',
  type: 'Cybernetic',
  attribute: 'SciFi',
  defence: 40,
  cost: 10,
  moves: [
    Move(
      moveTypes: [MoveTypes.ignition],
      cost: 20,
      damage: 0,
      effect: 'Play up to 2 other "Zero Day" creatures from your deck '
          '(you do pay cost)',
    ),
    Move(
      moveTypes: [MoveTypes.attack],
      cost: 10,
      damage: 0,
      effect: 'You can send one creature of your opponent to the afterlife '
          'for every 3 "Malice" you control',
    ),
  ],
  gatheringOpportunities: [
    GatheringOpportunity(
      resourceType: 'Glitch',
      amount: 2,
      chances: [1, 2],
    ),
    GatheringOpportunity(
      resourceType: 'Omni',
      amount: 2,
      chances: [6],
    ),
  ],
);
