import 'package:new_card_game/src/game_config/job.dart';

const cardMaster = Job(
  name: 'Card Master',
  resourceType: 'Omni',
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
