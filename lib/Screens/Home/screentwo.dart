import 'package:flutter/material.dart';

class Screentwo extends StatefulWidget {
  const Screentwo({super.key});

  @override
  State<Screentwo> createState() => _ScreentwoState();
}

class _ScreentwoState extends State<Screentwo> {
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
                  child: Text("What to know about the U.K. election, with Labour forecast to knock out Conservatives", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
              //)
            ],
          ),SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/img.png"),fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10)
                ),
              )
            ],
          ),SizedBox(height: 20),
          Row(
            children: [
              Flexible(
               // child: Padding(padding: const EdgeInsets.only(left: 20.0),
                child: Text("LONDON : July 4 may be Independence Day in the United States, but it’s Election Day this year in the United Kingdom. On Thursday, British voters will elect a new prime minister and Parliament — and polls suggest it will be a landslide.\n\nPrime Minister Rishi Sunak's Conservative Party is forecast to lose big. He may even become the first sitting prime minister to lose his own seat in parliament. And the opposition Labour Party is expected to form the next British government.\n\nIt’s the opposite of what’s happening in other parts of Europe, like France, where Marine Le Pen’s far-right party has just won the first round of legislative elections.", textAlign: TextAlign.left
                ),),
              //),
            ],
          ),SizedBox(height: 30),
          Row(
            children: [
              Container(
               // child: Padding(padding: const EdgeInsets.only(left: 20.0),
                child: Text("Conservatives look headed for wipeout", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
              //),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Flexible(
                    child: Text("The Conservative Party, also known as the Tories, has governed the U.K., with a series of different prime ministers, for 14 years. It often considers itself Britain’s “natural party of government.” That’s because the party has dominated politics and has led the government more frequently than any other party in the U.K. for the past century.\n\nBut polls show the Conservatives could lose more than two-thirds of the parliamentary seats they currently hold. It’s a dramatic shift from the last general election in 2019, when the Conservatives and then-leader Boris Johnson won by a huge margin promising to finish Britain's exit from the European Union.", textAlign: TextAlign.justify,),),
            ],
          ),
        ],
      ),
      )
    )
      )
    );
  }
}
