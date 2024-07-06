import 'package:flutter/material.dart';
class News4 extends StatelessWidget {
  const News4({super.key});

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
                        child: Image.asset("assets/images/n4.png",fit: BoxFit.cover, height: 300,),
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text("Multibagger stock gains 720%. Check Prabhudas Lilladher's view on it",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("3 day ago",style: Theme.of(context).textTheme.labelSmall,)
                  ],
                ),
                SizedBox(height: 20,),
                Text("The filing mentioned that this order is from the group company and that the products will be part of a larger project being executed by the group company for the end customer.\n\nIn another filing, the company shared it had won an order from Grid Solutions SAS, France. This order is also for the supply and supervision of high voltage products over two years, worth 64 million Euros. Like the first order, this also falls under related party transactions and is conducted at arm’s length.\n\nFollowing these announcements, shares of GE T&D India hit the upper circuit limit of 5%, reaching Rs 1,723.55 on Thursday. This gave the company a market capitalization close to Rs 44,000 crore. The stock had closed at Rs 1,641.50 in the previous trading session on Wednesday.The stock has seen a remarkable increase of over 720% from its 52-week low of Rs 210 on July 7, 2023. So far in 2024, the stock has gained more than 235%. In the last month alone, it has risen nearly 30%. Over the past five years, the stock has increased by 670%.",style: TextStyle(fontSize: 18,color: Colors.black),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
