import 'package:new_card_game/src/game_config/creature.dart';
import 'package:new_card_game/src/game_config/job.dart';

const issueTracker = Job(
  image: 'assets/jobs/cynet_issue_tracker.png',
  name: 'Issue Tracker',
  resourceType: ResourceType.glitch,
  tier: 1,
  rewards: [
    JobReward(
      cost: 2,
      pointReward: 20,
    ),
    JobReward(
      cost: 3,
      effectReward: 'Draw 1 job card',
    ),
  ],
);
