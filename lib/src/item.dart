
class Item {
  final String name;
  final String archetype;
  final int cost;
  final String requirement;
  final String? placementEffect;
  final String equipEffect;
  const Item({
    required this.name,
    required this.archetype,
    required this.cost,
    required this.requirement,
    this.placementEffect,
    required this.equipEffect,
  });
}
