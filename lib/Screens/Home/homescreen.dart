import 'package:flutter/material.dart';
//import 'package:newsapp/uihelper.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Colors.white,
        //backgroundColor: Color(0xFF1A237E),
        appBar: AppBar(
          backgroundColor: Colors.white,
          //backgroundColor: Color(0xFF1A237E),
          centerTitle: true,
          title: Text("Grand News", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(children: [
          Row(
            children: [SizedBox(height: 25),
              Container(
                // height: double.infinity,
                // width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(1),
                  //color: Colors.black,
                ),
                child: TextButton(onPressed: () {}, child: Text("All", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                )),
              ),
              SizedBox(width: 20),
              Container(
                  child: TextButton(onPressed: () {}, child: Text("Politics", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black))
                  )
              ),SizedBox(width: 20),
              Container(child: TextButton(onPressed: () {}, child: Text("Sports", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)))
              ),
              SizedBox(width: 20),
              Container(child: TextButton(onPressed: () {}, child: Text("Moving", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)))
                ,),
            ],
          ),
          SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 400,
                width: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/news1.png'),fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(8),
                  //color: Colors.white70
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                  child: TextButton(onPressed: () {},
                      child: Text("PM's 'Emergency' Jab At Congress As Parliament Meets, M Kharge's NEET Reply",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                            color: Colors.white, decoration: TextDecoration.underline),)),
                ),
              )
            ],
          ),SizedBox(height: 15),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Text("Latest News", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),),
          SizedBox(height: 15),
          Row(
            children: [
              Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black
                ),
              ),
              Container(
                height: 100,
                width: 200,
                child: TextButton(onPressed: () {}, child: Text("")),
              )
            ],
          )
        ],)
      //Uihelper.CustomContainer(50.0, 1500.0, Colors.black),


      // Row(
      //   children: [
      //     Container(
      //       height: 20,
      //       width: 20,
      //       child: TextButton(onPressed: () {},
      //           child: Text("All", style: TextStyle(color: Colors.black),)),
      //     )
      //   ],
      // ),
    );






    // return Container(
    //     //   decoration: BoxDecoration(
    //     //     color: Colors.black,
    //     //   ),
    //     //   child: Scaffold(
    //     //     backgroundColor: Colors.black,
    //     //     appBar: AppBar(
    //     //       title: Text("Grand News", style: TextStyle(color: Colors.white),),
    //     //       backgroundColor: Colors.black,
    //     //     ),
    //     //   ),
    //     //
    //     // );


  }
}