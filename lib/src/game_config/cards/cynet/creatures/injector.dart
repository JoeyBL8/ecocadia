import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/creature.dart';

const cynetInjector = Creature(
  image: 'assets/creatures/cynet_injector.png',
  name: 'Injector',
  archetype: 'Cynet',
  type: 'Cybernetic',
  attribute: Attribute.sciFi,
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
      effect: 'If this card is sent to the afterlife, you can send up to '
          '3 "Zero Day" to your afterlife',
    ),
  ],
  craftingValue: ResourceType.glitch,
  craftingAmount: 3,
  gatheringOpportunities: [
    GatheringOpportunity(
      resourceType: ResourceType.glitch,
      amount: 2,
      chances: [2, 4, 6],
    ),
    GatheringOpportunity(
      resourceType: ResourceType.glitch,
      amount: 1,
      chances: [3, 5],
    ),
    GatheringOpportunity(
      resourceType: ResourceType.omni,
      amount: 1,
      chances: [4],
    ),
  ],
);
