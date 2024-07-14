import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<Container> cards = [
    Container(
      height: 400,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/news7.png'), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(8)),
      child: const Text('1'),
    ),
    Container(
      height: 400,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/anant.png'), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(8)),
      child: const Text('2'),
    ),
    Container(
      height: 400,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/pushpa.png'), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(8)),
      child: const Text('3'),
    ),
    Container(
      height: 400,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Khatron-Ke-Khiladi-12.gif'),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(8)),
      child: const Text('4'),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flexible(
        child: CardSwiper(
            cardBuilder:
                (context, index, percentThresholdX, percentThresholdY) =>
                    cards[index],
            cardsCount: cards.length),
      ),
    );
  }
}
