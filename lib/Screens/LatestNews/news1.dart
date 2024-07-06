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
                  Text("Patna: Four of the five constituencies going to polls on Tuesday are likely to witness thunderstorm and lightning with gusty winds, as the Indian meteorological department (IMD) has issued ‘orange alert’ for north-east parts of Bihar for the next 48 hours. The constituencies that are likely to be affected are Madhepura, Jhanjharpur, Araria and Supaul.\n\nThe India Meteorological Department (IMD) has issued an orange alert for Karnataka, Maharashtra, Bihar, Assam, and Meghalaya, hinting at the possibility of heavy showers during the day. Uttar Pradesh is set to experience heatwaves during the day, the IMD indicated with a yellow alert.\n\nIn a press release dated June 20, the weather agency said that the Southwest monsoon has advanced into Maharashtra, Chhattisgarh, Odisha, West Bengal, and Bihar.\n",style: TextStyle(fontSize: 18,color: Colors.black),)
                ],
            ),
          ),
        ),
      ),
    );

  }
}
