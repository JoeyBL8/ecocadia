import 'card.dart';

class Job extends Card {
  final String resourceType;
  final int tier;
  final List<JobReward> rewards;

  const Job({
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
  final int? coinReward;
  final String? effectReward;
  final int cost;
  JobReward({
    required this.cost,
    this.coinReward,
    this.effectReward,
  }) : assert(!(coinReward == null && effectReward == null));

  @override
  String toString() =>
      'JobReward(coinReward: $coinReward, effectReward: $effectReward, cost: $cost)';
}
