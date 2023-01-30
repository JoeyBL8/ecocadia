import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/creature.dart';

const cynetInjector = Creature(
  name: 'Injector',
  archetype: 'Cynet',
  type: 'Cybernetic',
  attribute: 'SciFi',
  cost: 40,
  defence: 70,
  moves: [
    Move(
      moveTypes: [MoveTypes.defensive],
      cost: 10,
      damage: 0,
      effect: 'Reduce the damage of an attack by 30',
    ),
    Move(
      moveTypes: [MoveTypes.ignition],
      cost: 20,
      damage: 0,
      effect: 'Play up to 2 other "Injector" creatures from your deck '
          'in defence (you do pay cost)',
    ),
    Move(
      moveTypes: [MoveTypes.trigger],
      cost: 20,
      damage: 0,
      effect: 'If this card is sent to the graveyard, you can send up to '
          '3 "Zero Day" to your graveyard',
    ),
  ],
  gatheringOpportunities: [
    GatheringOpportunity(
      resourceType: 'Glitch',
      amount: 2,
      chances: [2, 4, 6],
    ),
    GatheringOpportunity(
      resourceType: 'Glitch',
      amount: 1,
      chances: [3, 5],
    ),
    GatheringOpportunity(
      resourceType: 'Omni',
      amount: 1,
      chances: [4],
    ),
  ],
);
