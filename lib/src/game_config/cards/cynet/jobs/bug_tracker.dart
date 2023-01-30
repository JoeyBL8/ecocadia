import 'package:new_card_game/src/game_config/creature.dart';
import 'package:new_card_game/src/game_config/job.dart';

const bugTracker = Job(
  name: 'Bug Tracker',
  resourceType: ResourceType.glitch,
  tier: 2,
  rewards: [
    JobReward(
      cost: 1,
      pointReward: 30,
    ),
    JobReward(
      cost: 2,
      effectReward: 'Draw 1 card',
    ),
  ],
);
