import 'package:new_card_game/src/game_config/creature.dart';
import 'package:new_card_game/src/game_config/job.dart';

const genericCardMaster = Job(
  image: 'assets/jobs/generic_card_master.png',
  name: 'Card Master',
  resourceType: ResourceType.omni,
  tier: 1,
  rewards: [
    JobReward(
      cost: 4,
      effectReward: 'Draw 2 cards',
    ),
    JobReward(
      cost: 7,
      effectReward: 'Draw 3 cards',
    ),
  ],
);
