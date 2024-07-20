import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:news_app/Screens/LatestNews/Cubits/newsstates.dart';
import 'package:news_app/Screens/LatestNews/latestnews.dart';
import 'package:news_app/Screens/LatestNews/news1.dart';

import '../LatestNews/Cubits/newscubit.dart';

class Screenone extends StatefulWidget {
  const Screenone({super.key});

  @override
  State<Screenone> createState() => _ScreenoneState();
}

class _ScreenoneState extends State<Screenone> {
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<Newscubit>().getnews();
  }

  List<Container> cards = [
    Container(
      height: 400,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/news7.png'), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(8)),
      child: TextButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Text(
                "Indian cricket set for transition after T20 World Cup glory",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          )),
    ),
    Container(
      height: 400,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/pushpa.png'), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(8)),
      child: TextButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.only(top: 280),
            child: Text(
                "‘Puspha 2’ suffers a delay, Allu Arjun’s action extravaganza to release on this date",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          )),
    ),
    Container(
      height: 400,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/ambani.png'), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(8)),
      child: TextButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Text(
                "The marathon Indian wedding turning heads around the world",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          )),
    ),
    Container(
      height: 400,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Khatron-Ke-Khiladi-12.gif'),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(8)),
      child: TextButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Text("Fear Factor: Khatron Ke Khiladi 12",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          )),
    ),
  ];
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //
  //     backgroundColor: Colors.white,
  //
  //           body: Column(
  //       children: [SizedBox(height: 10),

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<Newscubit, NewsStates>(builder: (context, state) {
        if (state is NewsLoadingStates) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        else if (state is NewsLoadedStates) {
          return Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Flexible(
                        child: CardSwiper(
                          cardBuilder: (context, index, percentThresholdX,
                                  percentThresholdY) =>
                              cards[index],
                          cardsCount: cards.length,
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // child: TextButton(onPressed: () {},
                            //     child: Padding(
                            //       padding: const EdgeInsets.only(top: 330),
                            //       child: Text("Indian cricket set for transition after T20 World Cup glory",
                            //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                            //               color: Colors.white)),
                            //     )),
                            //),
                            // )
                          ]),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18),
                              child: Text(
                                "Latest News",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ),
                          SizedBox(width: 130),
                          Container(
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Firstscreen()));
                                },
                                child: Text("see more")),
                          )
                        ],
                      ), //SizedBox(height: 3),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 130,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/news4.png'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                Container(
                                  height: 140,
                                  width: 200,
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => News1()));
                                      },
                                      child: Text(
                                        "Bihar Weather Update: Light Rain, Thandershower \nlikely in Nine Districts During Next 24 Hours; ",
                                        style: TextStyle(
                                            fontSize: 17, color: Colors.black),
                                      )),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  );
                },
                itemCount: state.latest.articles!.length),
          );
        } else if (state is NewsErrorStates) {
          return Center(
            child: Text(state.error.toString()),
          );
        }
        return Center(
          child: Text("No Data Found!!"),
        );
      }),
    );
  }
}
