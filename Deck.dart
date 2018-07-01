import 'dart:math';
import 'Card.dart';
class Deck
{
  List<Card> list = new List();

  Deck()
  {
   var suits = ["Diamonds","Spades","clubs","Hearts"];
   for(String suit in suits)
     initCards(suit);
  }
  initCards(String suitName)
  {
    List<String> allRanks = getRanks();
    for(int i=0;i<13;i++)
      {
        list.add(new Card(allRanks.elementAt(i),suitName));
      }
  }
  Card findCard(String rank,String suit)
  {

    for(Card c in list){
      if(c.getSuit()==suit&&c.getRank()==rank)
      {
        return list.elementAt(list.indexOf(c));
      }
    }
    return null;
  }
  void shuffle()
  {
    this.list.shuffle();
  }
  Deck deal(int num)
  {
    Deck tempDeck = new Deck();
    tempDeck.list.removeWhere((Card)=>true);

    for(int i=0;i<num;i++)
        tempDeck.list.add(this.list.removeAt(i));

    return tempDeck;
  }
  void printCards()
  {
    for(Card c in list)
      print(c.rank+" of "+c.suit);
  }
  List<Card> findCardWithSuit(String suit)
  {
    List<Card> tempList=new List();
    for(Card c in list)
      {
        if(c.suit==suit)
          tempList.add(c);
      }
      return tempList;
  }
   String remove(String rank,String suit)
  {

    Card rem = findCard(rank,suit);
    if(rem!=null)
    {
      list.remove(rem);
      return "card removed";
    }
    return "card doesn't exist";
  }

   List<String> getRanks() {
    List<String> temp = ["Ace","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten","Jack","Queen","King",];
    return temp;
  }

}