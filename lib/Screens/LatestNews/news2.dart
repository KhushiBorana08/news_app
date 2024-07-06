import 'package:flutter/material.dart';
class News2 extends StatelessWidget {
  const News2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child:SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Expanded(child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/images/n1.png",fit: BoxFit.cover, height: 300,),
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text("Hathras stampede: 121 dead , special team to probe incident , says Yogi Adityanath",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("2 day ago",style: Theme.of(context).textTheme.labelSmall,)
                  ],
                ),
                SizedBox(height: 20,),
                Text("The stampede at a 'satsang' killed 121 people as devotees suffocated to their deaths and bodies piled atop each other in the worst such tragedy in recent years. Envoys of several countries mourned the loss of lives in the incident.\n\nA deadly stampede during a 'satsang' in Uttar Pradesh's Hathras claimed the lives of 121 people on Tuesday. Scores of bodies were lying on blocks of ice inside a government hospital, as wailing relatives of the victims waited outside to take mortal remains back home. The victims were part of the crowd of thousands that had gathered near Phulrai village in the Sikandrarau area for the 'satsang' by religious preacher Bhole Baba.",style: TextStyle(fontSize: 18,color: Colors.black),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
