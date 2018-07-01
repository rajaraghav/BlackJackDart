import 'Deck.dart';

void main()
{
  var deck = new Deck();
//  deck.shuffle();
//  deck.printCards();
  deck.shuffle();
  var dealtDeck = deck.deal(5);
  dealtDeck.printCards();
  var dealtDeck2 = deck.deal(5);
  dealtDeck2.printCards();
  print("Cards left");
  print("\n");
  deck.printCards();
}