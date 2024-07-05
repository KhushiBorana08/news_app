import 'package:flutter/material.dart';
class News2 extends StatelessWidget {
  const News2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child:SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        var Get;
                        Get.back;
                      },
                      child: Container(
                        child: const Row(
                          children: [
                            Icon(Icons.arrow_back_ios_new),
                            Text("Back"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30,),
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
                Text("data",style: TextStyle(fontSize: 18,color: Theme.of(context).colorScheme.secondaryContainer),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
