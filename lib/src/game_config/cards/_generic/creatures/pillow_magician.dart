import 'package:new_card_game/src/game_config/cards/move_types.dart';
import 'package:new_card_game/src/game_config/creature.dart';

const genericPillowMagician = Creature(
  // TODO: ADD IMAGE
  image: 'assets/unknown.png',
  name: 'Pillow Magician',
  archetype: 'Generic',
  type: 'Wizard',
  attribute: Attribute.magic,
  cost: 20,
  defence: 10,
  moves: [
    Move(
      moveTypes: [MoveTypes.trigger],
      cost: 20,
      damage: 0,
      effect: 'If this is sent to the afterlife after being in defence: '
          'You can play another "Pillow magician" for '
          'twice the cost you paid to summon this.',
    ),
    Move(
      moveTypes: [MoveTypes.defensive],
      cost: 0,
      damage: 0,
      effect: 'You take no damage to your own points by attacks '
          'for the rest of this turn',
    ),
  ],
  craftingValue: ResourceType.orbs,
  craftingAmount: 2,
  gatheringOpportunities: [
    GatheringOpportunity(
      resourceType: ResourceType.orbs,
      amount: 1,
      chances: [1],
    ),
  ],
);
