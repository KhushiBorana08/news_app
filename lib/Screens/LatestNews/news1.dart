import 'package:flutter/material.dart';
class News1 extends StatelessWidget {
  const News1({super.key});

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
                          child: Image.asset("assets/images/news4.png",fit: BoxFit.cover, height: 300,),
                        ),),
                      ],
                    ),
                    ),
                  SizedBox(height: 20,),
                  Text("Bihar Weather Update:Light Rain,Thandershower likely in Nine Districts During Next 24 Hours",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("5 days ago",style: Theme.of(context).textTheme.labelSmall,)
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
