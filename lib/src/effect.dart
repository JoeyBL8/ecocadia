import 'package:new_card_game/src/creature.dart';

import 'card.dart';

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
}
