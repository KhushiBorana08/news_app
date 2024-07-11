import 'package:flutter/material.dart';

class Screenthree extends StatefulWidget {
  const Screenthree({super.key});

  @override
  State<Screenthree> createState() => _ScreenthreeState();
}

class _ScreenthreeState extends State<Screenthree> {
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
                            //child: Padding(padding: const EdgeInsets.only(left: 20.0),
                            child: Text("U-17 Football Tournament’s National Finals kickstarts from June 1", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
                          //)
                        ],
                      ),SizedBox(height: 20),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 300,
                            width: 371,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/news.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10)
                            ),
                          )
                        ],
                      ),SizedBox(height: 20),
                      Row(
                        children: [
                          Flexible(
                            // child: Padding(padding: const EdgeInsets.only(left: 20.0),
                            child: Text("The Dream Sports Championship returns to action for the National Finals on Saturday, June 1, as eight teams fight for the ultimate title after proving their mettle in their respective regional rounds. The National Finals will be a week-long affair, culminating with the decider to be played at the Cooperage Football Ground, Mumbai on June 7.\n\nThe U17 tournament is being held by Dream Sports Foundation – the philanthropic arm of Dream Sports, India’s leading sports technology company. The regional rounds were held from April 1 to 18 across six major football hubs in India, under the aegis of the All India Football Federation.\n\nThe football spectacle witnessed 37 teams from across the country. The participants included top AIFF-accredited academy sides from the ISL and I-League. The winners of each leg (as well as the runners-up from Shillong and Goa) secured their tickets to Mumbai for the National Finals.\n\n", textAlign: TextAlign.left
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
