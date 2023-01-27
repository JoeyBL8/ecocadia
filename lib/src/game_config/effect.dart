import 'card.dart';
import 'creature.dart';

class Effect extends Card {
  final int cost;
  final String archetype;
  final String description;
  final List<MoveType> moveType;
  const Effect({
    required super.name,
    required this.archetype,
    required this.cost,
    required this.description,
    required this.moveType,
  });

  @override
  String toString() {
    return 'Effect(cost: $cost, archetype: $archetype, description: $description, moveType: $moveType)';
  }
}
