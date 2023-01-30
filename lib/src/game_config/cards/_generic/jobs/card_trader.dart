import 'package:new_card_game/src/game_config/creature.dart';
import 'package:new_card_game/src/game_config/job.dart';

const cardTrader = Job(
  name: 'Card Trader',
  resourceType: ResourceType.omni,
  tier: 1,
  rewards: [
    JobReward(
      cost: 3,
      pointReward: 50,
    ),
    JobReward(
      cost: 6,
      effectReward: 'Draw 2 cards',
    ),
  ],
);
