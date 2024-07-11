import 'package:flutter/material.dart';
class News3 extends StatelessWidget {
  const News3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Expanded(child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/images/j1.png",
                          fit: BoxFit.cover, height: 300,),
                      ),),
                    ],
                  ),
                ),

                SizedBox(height: 20,),
                Text(
                  "India's T20 World Cup triumph celebrations from open-bus parade to Wankhede Stadium",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("7 day ago", style: Theme
                        .of(context)
                        .textTheme
                        .labelSmall,)
                  ],
                ),
                SizedBox(height: 20,),
                Text(
                  " The felicitation ceremony for the 2024 T20 World Cup-winning Indian cricket team at Mumbai's Wankhede Stadium concluded on a high. Board of Control for Cricket in India (BCCI) handed the team Rs 125 crore, a prize money the board had already announced for the side after its T20 World Cup triumph. The likes of Virat Kohli, Rohit Sharma, Rahul Dravid and Jasprit Bumrah got a chance to get on the podium and express their emotions. After the felicitation, the players of Indian cricket team walked towards the fans and handed them signed balls before walking out of the ground. Some lucky fans also got selfies with players and their autographs as well. Earlier, a T20 World Cup victory parade of Rohit Sharma and co. kicked off at Marine Drive and concluded at the Wankhde Stadium, crossing a sea of fans who had gathered to celebrate the team's success. The crowd was jam-packed and the Team India bus found hard to get its way. The likes of Virat Kohli, Rohit Sharma, Suryakumar Yadav and ex-coach Rahul Dravid failed to keep their emotions under control as the victory bus slowly and gradually made its way through the massive crowd.\n",
                  style: TextStyle(fontSize: 18, color: Colors.black),),
                Row(
                  children: [
                    Text("Team India's T20 World Cup triumph \ncelebrations:Mumbai halts to salute\n parade; Champions felicitated",style:TextStyle(fontSize:20 ,fontWeight: FontWeight.bold),),                ],
                ), SizedBox(height: 20,),
                Text("The T20 World Cup victory parade of Rohit Sharma and co. concluded in Mumbai on Thursday. The parade, which kicked off from Marine Drive, ended at the Wankhede Stadium.\nAn ocean of humanity greeted the victory parade in South Mumbai's Marine Drive as thousands of passionate fans gathered to catch a glimpse of their favourite stars, bringing the traffic to a complete standstill.\n",
        style: TextStyle(fontSize: 18, color: Colors.black),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
