import 'dart:math';

class Deck
{
  List<Card> list = new List();

  Deck()
  {
    initCard("Hearts");
    initCard("Diamonds");
    initCard("Spades");
    initCard("clubs");
  }
  initCards(String suitName)
  {
    List<String> allRanks = getRanks();
    for(int i=0;i<13;i++)
      {
        list.add(new Card(allRanks.elementAt(i),suitName));
      }
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
  List<Card> deal(int num)
  {
    List<Card> tempDeck = new List();

    for(int i=0;i<num;i++)
        tempDeck.add(list.elementAt(i));

    return tempDeck;
  }
  void printCards()
  {
    for(Card c in list)
      print("\n",c.suit,c.rank);
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

   List<String> getRanks() {
    List<String> temp = ["Ace","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten","Jack","Queen","King",];
    return temp;
  }

}