import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Screens/Home/screenfour.dart';
import 'package:news_app/Screens/Home/screenone.dart';
import 'package:news_app/Screens/Home/screenthree.dart';
import 'package:news_app/Screens/Home/screentwo.dart';
//import 'package:newsapp/uihelper.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Column(
              children: [
                ClipRRect(child: Image.asset("assets/images/drawer-removebg-preview.png",
                  height:80,
                ),
                  borderRadius: BorderRadius.circular(20),
                ),
                Text('\nPerson'),
              ],
            ),),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.account_circle_rounded),
                  title: Text('Account'),
                ),
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text('Favorites'),
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Log Out'),
                ),
              ],
            )
          ],
        ),
      ),
        backgroundColor: Colors.white,
        //backgroundColor: Color(0xFF1A237E),
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.search_outlined),
              onPressed: () {
                //showSearch(
                    //context: context,
                    //delegate: SearchField()
                //);
              },
            )
          ],
          bottom: TabBar(tabs: [
            Tab(child: Text("All"),),
            Tab(child: Text("Politics"),),
            Tab(child: Text("Sports"),),
            Tab(child: Text("Travels"),)
          ],unselectedLabelColor: Colors.grey, labelColor: Colors.black,),
          backgroundColor: Colors.white,
          //backgroundColor: Color(0xFF1A237E),
          centerTitle: true,
          title: Text("Grand News", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body:  TabBarView(children: [
          Screenone(),
          Screentwo(),
          Screenthree(),
          Screenfour(),

          // Row(
          //   children: [SizedBox(height: 25),
          //     Container(
          //       // height: double.infinity,
          //       // width: double.infinity,
          //       decoration: BoxDecoration(
          //         borderRadius:BorderRadius.circular(1),
          //         //color: Colors.black,
          //       ),
          //       child: TextButton(onPressed: () {}, child: Text("All", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          //       )),
          //     ),
          //     SizedBox(width: 20),
          //     Container(
          //         child: TextButton(onPressed: () {}, child: Text("Politics", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black))
          //         )
          //     ),SizedBox(width: 20),
          //     Container(child: TextButton(onPressed: () {}, child: Text("Sports", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)))
          //     ),
          //     SizedBox(width: 20),
          //     Container(child: TextButton(onPressed: () {}, child: Text("Moving", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)))
          //       ,),
          //   ],
          // ),
          //SizedBox(height: 20),
          // Row(mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Container(
          //       height: 400,
          //       width: 350,
          //       decoration: BoxDecoration(
          //         image: DecorationImage(image: AssetImage('assets/images/news7.png'),fit: BoxFit.cover),
          //         borderRadius: BorderRadius.circular(8),
          //         //color: Colors.white70
          //       ),
          //         child: TextButton(onPressed: () {},
          //             child: Padding(
          //               padding: const EdgeInsets.only(top: 330),
          //               child: Text("Indian cricket set for transition after T20 World Cup glory",
          //                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
          //                     color: Colors.white)),
          //             )),
          //       ),
          //    // )
          //   ],
          // ),SizedBox(height: 15),
          // // Padding(padding: const EdgeInsets.symmetric(horizontal: 0),
          // //   child: Text("Latest News", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),),
          // // SizedBox(height: 15),
          // Row(mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     Container(
          //       child: Padding(padding: const EdgeInsets.symmetric(horizontal: 18),
          //         child: Text("Latest News", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),),
          //     ),SizedBox(width: 130),
          //     Container(
          //       child: ElevatedButton(onPressed: () {}, child: Text("see more")),
          //     )
          //   ],
          // ),SizedBox(height: 10),
          // Row( mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Container(
          //       height: 150,
          //       width: 150,
          //       decoration: BoxDecoration(
          //       image: DecorationImage(image: AssetImage('assets/images/news4.png'),fit: BoxFit.cover),
          //           borderRadius: BorderRadius.circular(8),
          //            //color: Colors.white70
          //        ),
          //       ),
          //     Container(
          //       height: 100,
          //       width: 200,
          //       child: TextButton(onPressed: () {},
          //           child: Text("Heavy rain likely over most parts of the country till Thursday", style: TextStyle(fontSize: 20, color: Colors.black),)),
          //     )
          //   ],
          // )
        ],),
      ),
    );
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
    //   ),
    // );






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