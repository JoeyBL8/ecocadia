
import 'card.dart';

class Item extends Card {
  final String archetype;
  final int cost;
  final String requirement;
  final String? placementEffect;
  final String equipEffect;
  const Item({
    required super.name,
    required this.archetype,
    required this.cost,
    required this.requirement,
    required this.equipEffect,
    this.placementEffect,
  });
}
