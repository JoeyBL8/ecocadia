import 'package:new_card_game/src/creature.dart';

class Effect {
  final int cost;
  final String name;
  final String archetype;
  final String description;
  final List<MoveType> moveType;
  const Effect({
    required this.archetype,
    required this.cost,
    required this.name,
    required this.description,
    required this.moveType,
  });
}
