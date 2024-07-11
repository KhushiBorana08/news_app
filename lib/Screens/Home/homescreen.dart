import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/Screens/Home/account.dart';
import 'package:news_app/Screens/Home/screenfour.dart';
import 'package:news_app/Screens/Home/screenone.dart';
import 'package:news_app/Screens/Home/screenthree.dart';
import 'package:news_app/Screens/Home/screentwo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin {
  bool Tohide= false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Column(
              children: [
                ClipRRect(child: Image.asset("assets/images/drawer-removebg-preview.png",
                  height:80 ,),
          borderRadius: BorderRadius.circular(20),
          ),Text('\nPerson'),
              ],
            ),),

                Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.account_circle_rounded),
                      title: TextButton(style: TextButton.styleFrom(fixedSize: const Size(10, 30)),
                          onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Account()));
                      }, child: Text("Account")),
                      //trailing: Icon(Icons.account_circle_rounded),
                    ),
                    const ListTile(
                      leading: Icon(Icons.favorite),
                      title: Text('Favorites'),
                      //trailing: Icon(Icons.favorite),
                    ),
                    ListTile(
                      leading: Icon(Icons.logout),
                      title: TextButton(onPressed: () async {SharedPreferences preferences = await SharedPreferences.getInstance();
                      await preferences.clear();
                      }, child: Text("Log Out")),
                      //trailing: Icon(Icons.logout),
                    ),
                  ],
                ),
          ],
        ),
      ),
        backgroundColor: Colors.white,
        //backgroundColor: Color(0xFF1A237E),
        appBar: AppBar(
          actions: [
            IconButton(
              icon:  Icon(Icons.notifications_active,color:Tohide?Colors.blue:Colors.black,),
              onPressed: () {
                setState(() {
                  Tohide=!Tohide;
                });
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
          centerTitle: true,
          title: Text("Grand News", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body:  TabBarView(children: [
            Screenone(),
          Screentwo(),
          Screenthree(),
          Screenfour(),
        ],),
      ),
    );
  }
}