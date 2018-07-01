import 'dart:math';

class Deck
{
  List<Card> list = new List();

  void add(String suit,String rank)
  {
    list.add(new Card(rank,suit));
  }

  Card findCard(String suit,String rank)
  {

    for(Card c in list){

      if(c.getSuit==suit&&c.getRank==rank)
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
  List<Card> findCardWithSuit(String suit)
  {
    List<Card> tempList=new List();
    for(Card c in list)
      {
        if(c.suit==suit)
          tempList.add(list);
      }
  }
   String remove(String suit,String rank)
  {
    Card rem = findCard(suit,rank);
    if(rem!=null)
    {
      list.remove(rem);
      return "card removed";
    }
    return "card doesn't exist";
  }

}