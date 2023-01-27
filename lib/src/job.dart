class Job {
  final String name;
  final String resourceType;
  final int tier;
  final List<JobReward> rewards;

  const Job({
    required this.name,
    required this.resourceType,
    required this.tier,
    required this.rewards,
  });
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
}
