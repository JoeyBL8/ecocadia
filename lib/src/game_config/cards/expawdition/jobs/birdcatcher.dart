import 'package:new_card_game/src/game_config/creature.dart';
import 'package:new_card_game/src/game_config/job.dart';

const expawditionBirdcatcher = Job(
  image: 'assets/unknown.png',
  name: 'Birdcatcher',
  resourceType: ResourceType.orbs,
  tier: 1,
  rewards: [
    JobReward(
      cost: 3,
      pointReward: 60,
    ),
    JobReward(
      cost: 6,
      effectReward: 'Play an expawdition "Echanted" creature from your hand',
    ),
  ],
);
