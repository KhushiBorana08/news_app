import 'package:flutter/material.dart';

class Screenfour extends StatefulWidget {
  const Screenfour({super.key});

  @override
  State<Screenfour> createState() => _ScreenfourState();
}

class _ScreenfourState extends State<Screenfour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [SizedBox(height: 20),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text("MEA issues travel advisory for Israel, Iran over rising tensions", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
                        ],
                      ),SizedBox(height: 20),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 300,
                            width: 371,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/travel.jpeg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10)
                            ),
                          )
                        ],
                      ),SizedBox(height: 20),
                      Row(
                        children: [
                          Flexible(
                            // child: Padding(padding: const EdgeInsets.only(left: 20.0),
                            child: Text("India on Friday issued an advisory urging its citizens not to travel to Iran or Israel following a sharp rise in tensions between the two sides, and asking all Indian nationals living in the two countries to observe “utmost precautions” for their safety.\n\nThere are about 18,000 Indian nationals in Israel, a majority of them are caregivers and professionals in sectors such as information technology. Iran is home to some 4,000 Indian nationals, including traders and academics.\n\nIsraeli authorities had plans to operate an “air shuttle” to bring in the Indian workers after the Prime Minister’s Office, finance ministry and construction ministry decided to subsidise charter flights.\n\nLast week, India expressed concern at the Israeli air strike on a building in the Iranian embassy complex in Damascus on April 1 that killed seven people, including Brig Gen Mohammad Reza Zahedi, a senior commander of the Islamic Revolutionary Guard Corps (IRGC) who oversaw operations in Syria and Lebanon.", textAlign: TextAlign.left
                            ),),
                          //),
                        ],
                      )
                    ],
                  ),
                )
            )
        )
    );
  }
}
