import 'package:new_card_game/src/game_config/creature.dart';

import 'card.dart';

class Job extends Card {
  final ResourceType resourceType;
  final int tier;
  final List<JobReward> rewards;

  const Job({
    required super.image,
    required super.name,
    required this.resourceType,
    required this.tier,
    required this.rewards,
  });

  @override
  String toString() =>
      'Job(resourceType: $resourceType, tier: $tier, rewards: $rewards)';
}

class JobReward {
  final int? pointReward;
  final String? effectReward;
  final int cost;
  const JobReward({
    required this.cost,
    this.pointReward,
    this.effectReward,
  }) : assert(!(pointReward == null && effectReward == null));

  @override
  String toString() =>
      'JobReward(coinReward: $pointReward, effectReward: $effectReward, cost: $cost)';
}
