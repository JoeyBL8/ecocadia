class Creature {
  /// set of moves
  final List<Move> move;

  /// name
  final String name;

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
  Creature({
    required this.move,
    required this.name,
    required this.archetype,
    required this.type,
    required this.attribute,
    required this.defence,
    required this.cost,
    required this.gatheringOpportunities,
  });
}

class GatheringOpportunity {
  /// The type of resource provided
  final String resourceType;

  /// The amount of the type of resource provided
  final int amount;

  /// the dice numbers resulting in resources
  final List<int> chances;
  GatheringOpportunity({
    required this.resourceType,
    required this.amount,
    required this.chances,
  });
}

class Move {
  /// types of move (quick, continuous, etc)
  final List<MoveType> moveType;

  /// cost to activate the move
  final int cost;

  /// the damage for activating the move
  final int damage;

  /// the description of this effect
  final String effect;

  final bool hardOncePerTurn;
  Move({
    required this.moveType,
    required this.cost,
    required this.damage,
    required this.effect,
    this.hardOncePerTurn = true,
  });
}

class MoveType {
  final String name;
  const MoveType({
    required this.name,
  });
}
