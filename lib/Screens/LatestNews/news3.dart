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
          child:SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Expanded(child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/images/n3.png",fit: BoxFit.cover, height: 300,),
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text("India's T20 World Cup triumph celebrations from open-bus parade to Wankhede Stadium",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("7 day ago",style: Theme.of(context).textTheme.labelSmall,)
                  ],
                ),
                SizedBox(height: 20,),
                Text("data",style: TextStyle(fontSize: 18,color: Theme.of(context).colorScheme.secondaryContainer),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
