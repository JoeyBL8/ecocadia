import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/creature.dart';

const cynetDigiwipe = Creature(
  // TODO: ADD IMAGE
  image: 'assets/unknown.png',
  name: 'Digiwipe',
  archetype: 'Cynet',
  type: 'Cybernetic',
  attribute: Attribute.sciFi,
  defence: 150,
  cost: 250,
  moves: [
    Move(
      moveTypes: [MoveTypes.quick],
      cost: 40,
      damage: 0,
      effect: 'You can play this card from the hand by '
          'sending 3 cynet cards with the same name to the afterlife '
          'from your field',
    ),
    Move(
      moveTypes: [MoveTypes.attack],
      cost: 50,
      damage: 300,
      effect: 'After the attack has completed, '
          'if an opponents creature was sent to the afterlife: '
          'You can initiate this attack again.',
    ),
  ],
  craftingValue: ResourceType.glitch,
  craftingAmount: 10,
  gatheringOpportunities: [
    GatheringOpportunity(
      resourceType: ResourceType.glitch,
      amount: 2,
      chances: [1, 2, 3],
    ),
  ],
);
