import 'package:new_card_game/src/game_config/creature.dart';
import 'package:new_card_game/src/game_config/job.dart';

const genericNurse = Job(
  image: 'assets/unknown.png',
  name: 'Nurse',
  resourceType: ResourceType.omni,
  tier: 1,
  rewards: [
    JobReward(
      cost: 3,
      pointReward: 40,
    ),
    JobReward(
      cost: 6,
      pointReward: 90,
    ),
  ],
);
