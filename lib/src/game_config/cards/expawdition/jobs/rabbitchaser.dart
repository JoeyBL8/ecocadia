import 'package:new_card_game/src/game_config/creature.dart';
import 'package:new_card_game/src/game_config/job.dart';

const expawditionRabbitChaser = Job(
  image: 'assets/unknown.png',
  name: 'Rabbitchaser',
  resourceType: ResourceType.gems,
  tier: 1,
  rewards: [
    JobReward(
      cost: 2,
      pointReward: 40,
    ),
    JobReward(
      cost: 4,
      effectReward: 'Send one Expawdition card from your deck to the afterlife',
    ),
    JobReward(
      cost: 6,
      pointReward: 150,
    ),
  ],
);
