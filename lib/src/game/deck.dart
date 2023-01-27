import 'package:new_card_game/src/game/game_card.dart';
import 'package:new_card_game/src/game_config/card.dart';

class Deck {
  List<GameCard> _cards;
  Deck({
    required List<GameCard> cards,
  }) : _cards = cards;

  factory Deck.fromCards(List<Card> cards) {
    return Deck(
      cards: cards.map((card) => GameCard(card: card)).toList(),
    );
  }

  void shuffle() {
    _cards.shuffle();
  }

  bool canDraw() {
    return _cards.isNotEmpty;
  }

  GameCard draw() {
    return _cards.removeLast();
  }

  void returnToTop(GameCard card) {
    _cards = [
      ..._cards,
      card,
    ];
  }

  void returnToBottom(GameCard card) {
    _cards = [
      card,
      ..._cards,
    ];
  }
}
