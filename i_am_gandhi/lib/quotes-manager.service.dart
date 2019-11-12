import 'dart:math';


List<String> quotes=[

  "A man is but a product of his thoughts. What he thinks he becomes",
  "I will not let anyone walk through my mind with their dirty feet.",
  "Nobody can hurt me without my permission.",
  "The weak can never forgive. Forgiveness is an attribute of the strong.",
  "Freedom is not worth having if it does not include the freedom to make mistakes.",
  "In a gentle way, you can shake the world.",
  "Earth provides enough to satisfy every man’s needs, but not every man’s greed.",
  "I object to violence because when it appears to do good, the good is only temporary; the evil it does is permanent.",
  "First they ignore you, then they laugh at you, then they fight you, then you win",

];


const IMAGE_COUNT=7;

class Quote{
  String quote;
  String image;
  Quote(this.quote,this.image);
}

class QuotesManager{

  Random r=Random();

  Quote getRandomQuote(){

    int selectedImageIndex=r.nextInt(IMAGE_COUNT);
    String selectedImage='images/gandhi0$selectedImageIndex.jpg';
    int selectedQuoteIndex=r.nextInt(quotes.length);
    String selectedQuote= quotes[selectedQuoteIndex];

    return Quote(selectedQuote,selectedImage);

  }


}