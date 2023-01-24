class Job {
  final String name;
  final int cost;
  final int coinReward;
  final String? effectReward;
  final int tier;

  const Job({
    required this.name,
    required this.cost,
    required this.coinReward,
    required this.tier,
    this.effectReward,
  });
}
