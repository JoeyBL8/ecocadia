import 'package:new_card_game/src/game_config/job.dart';

const issueTracker = Job(
  name: 'Issue Tracker',
  resourceType: 'Glitch',
  tier: 1,
  rewards: [
    JobReward(
      cost: 2,
      pointReward: 10,
    ),
    JobReward(
      cost: 3,
      effectReward: 'Draw 1 job card',
    ),
  ],
);
