import 'package:new_card_game/src/game_config/creature.dart';
import 'package:new_card_game/src/game_config/job.dart';

const tester = Job(
  image: 'assets/unknown.png',
  name: 'Tester',
  resourceType: ResourceType.glitch,
  tier: 1,
  rewards: [
    JobReward(
      cost: 5,
      pointReward: 90,
    ),
    JobReward(
      cost: 6,
      effectReward: 'Draw 2 job cards, '
          'then return 1 of them to your job deck.',
    ),
  ],
);
