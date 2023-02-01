import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/creature.dart';

const cynetZeroDay = Creature(
  image: 'assets/creatures/cynet_zero_day.png',
  name: 'Zero Day',
  archetype: 'Cynet',
  type: 'Cybernetic',
  attribute: Attribute.sciFi,
  defence: 30,
  cost: 20,
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
      cost: 20,
      damage: 30,
      effect: 'Damage is increased with 10 for each "Zero Day" on your field',
    ),
    Move(
      moveTypes: [MoveTypes.trigger],
      cost: 40,
      damage: 0,
      effect: 'If this card was revived, '
          'Revive 2 other "Zero Day" creatures from your Afterlife '
          '(you do not pay cost)',
    ),
  ],
  craftingValue: ResourceType.glitch,
  craftingAmount: 3,
  gatheringOpportunities: [
    GatheringOpportunity(
      resourceType: ResourceType.glitch,
      amount: 2,
      chances: [1, 2, 3],
    ),
  ],
);
