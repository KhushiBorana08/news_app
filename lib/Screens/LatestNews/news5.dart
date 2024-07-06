import 'package:flutter/material.dart';
class News5 extends StatelessWidget {
  const News5({super.key});

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
                        child: Image.asset("assets/images/n5.png",fit: BoxFit.cover, height: 300,),
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text("NEET PG exam in August,question paper to be finalised hours prior:ources",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("2 day ago",style: Theme.of(context).textTheme.labelSmall,)
                  ],
                ),
                SizedBox(height: 20,),
                Text("A significant meeting was held in the I4C wing of the Home Ministry with Cyber Cell officials to discuss the NEET PG exam. The question paper will be prepared just a few hours before the exam to ensure security. Various government agencies are evaluating potential loopholes, and the investigation is nearly complete. The exam date will be announced soon, with the exam likely to be conducted within a month.\n\nThe revised date for the NEET PG exam is expected to be announced by the end of this week, with the exams likely to be conducted in August.\n\nThe exam conducting process has been entrusted to an Expert Panel headed by Dr Radhakrishnan, a former ISRO official. The National Board of Examinations (NBE), responsible for conducting NEET PG, is currently awaiting approval from this review panel before finalising the new dates.\n",style: TextStyle(fontSize: 18,color: Colors.black),),
              Row(
                children: [
                  Text("KEY UPDATES ON NEET PG EXAM 2024",style:TextStyle(fontSize:20 ,fontWeight: FontWeight.bold),),                ],
              ), SizedBox(height: 20,),
                Text("A significant meeting was recently held in the I4C wing of the Home Ministry concerning the NEET PG exam. This meeting, involving officials from the Cyber Cell, was crucial in the lead-up to the announcement of the exam date.",style: TextStyle(fontSize: 18,color: Colors.black),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
