import 'package:flutter/material.dart';
import 'package:news_app/Screens/LatestNews/latestnews.dart';
import 'package:news_app/Screens/LatestNews/news1.dart';

class Screenone extends StatefulWidget {
  const Screenone({super.key});

  @override
  State<Screenone> createState() => _ScreenoneState();
}

class _ScreenoneState extends State<Screenone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 400,
                width: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/news7.png'),fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextButton(onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 330),
                      child: Text("Indian cricket set for transition after T20 World Cup glory",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    )),
              ),
              // )
            ],
          ),SizedBox(height: 15),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Text("Latest News", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),),
              ),SizedBox(width: 130),
              Container(
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Firstscreen()));
                }, child: Text("see more")),
              )
            ],
          ),//SizedBox(height: 3),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 130,
                      width: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/news4.png'),fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      height: 140,
                      width: 200,
                      child: TextButton(onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>News1()));
                      },
                          child: Text("Bihar Weather Update: Light Rain, Thandershower \nlikely in Nine Districts During Next 24 Hours; ", style: TextStyle(fontSize: 17, color: Colors.black),)),
                    )

                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
