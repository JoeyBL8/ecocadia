// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'card.dart';

class Creature extends Card {
  /// set of moves
  final List<Move> moves;

  /// archetype
  final String archetype;

  /// type
  final String type;

  /// attribute
  final String attribute;

  /// defence value
  final int defence;

  /// summoning cost
  final int cost;

  /// The resource opportuninities when on field
  final List<GatheringOpportunity> gatheringOpportunities;
  const Creature({
    required super.name,
    required this.archetype,
    required this.type,
    required this.attribute,
    required this.cost,
    required this.defence,
    required this.moves,
    required this.gatheringOpportunities,
  });

  @override
  String toString() {
    return 'Creature(moves: $moves, archetype: $archetype, type: $type, attribute: $attribute, defence: $defence, cost: $cost, gatheringOpportunities: $gatheringOpportunities)';
  }
}

class GatheringOpportunity {
  /// The type of resource provided
  final String resourceType;

  /// The amount of the type of resource provided
  final int amount;

  /// the dice numbers resulting in resources
  final List<int> chances;
  const GatheringOpportunity({
    required this.resourceType,
    required this.amount,
    required this.chances,
  });

  @override
  String toString() =>
      'GatheringOpportunity(resourceType: $resourceType, amount: $amount, chances: $chances)';
}

class Move {
  /// types of move (quick, continuous, etc)
  final List<MoveType> moveTypes;

  /// cost to activate the move
  final int cost;

  /// the damage for activating the move
  final int damage;

  /// the description of this effect
  final String effect;

  final bool hardOncePerTurn;
  const Move({
    required this.moveTypes,
    required this.cost,
    required this.damage,
    required this.effect,
    this.hardOncePerTurn = true,
  });

  @override
  String toString() {
    return 'Move(moveTypes: $moveTypes, cost: $cost, damage: $damage, effect: $effect, hardOncePerTurn: $hardOncePerTurn)';
  }
}

class MoveType {
  final String name;
  const MoveType({
    required this.name,
  });

  @override
  String toString() => 'MoveType(name: $name)';
}