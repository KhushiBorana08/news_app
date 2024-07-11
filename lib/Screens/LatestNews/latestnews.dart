import 'package:flutter/material.dart';
import 'package:news_app/Screens/LatestNews/news1.dart';
import 'package:news_app/Screens/LatestNews/news2.dart';
import 'package:news_app/Screens/LatestNews/news3.dart';
import 'package:news_app/Screens/LatestNews/news4.dart';
import 'package:news_app/Screens/LatestNews/news5.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(10),
          //Padding(padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 70),),
          child: SingleChildScrollView(
              child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 3),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest News",
                    style: TextStyle(
                        fontFamily: 'Times New Roman',
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height:2),
              Column(
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          // color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              //color: Theme.of(context).colorScheme.background,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/images/news4.png',
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    //SizedBox(width: 10),
                                    // CircleAvatar(
                                    //   radius: 15,
                                    //   backgroundColor: Theme.of(context).colorScheme.primary,
                                    // ),
                                    SizedBox(width: 10),
                                    Container(
                                      child: TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        News1()));
                                          },
                                          child: Text(
                                            "Bihar Weather Update:\nLight Rain,Thander\nshower likely in Nine\nDistricts During Next\n24 Hours;",
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.black),
                                          )),
                                    ),
                                  ],
                                ),
                                Text("\t\t\t\t\t\t\t5 days ago ",
                                    style:
                                        Theme.of(context).textTheme.labelSmall),
                              ],
                            ),
                          ),
                        ],
                      )),
                  SizedBox(height: 2),
                  Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              //color: Theme.of(context).colorScheme.primaryContainer,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                //child: Image.asset('assets/images/news4.png',fit: BoxFit.cover),
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).colorScheme.background,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset('assets/images/n1.png',
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 10),
                                        Container(
                                          child: TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            News2()));
                                              },
                                              child: Text(
                                                "Hathras stampede: 121\ndead,special team to \nprobe incident,says\nYogi Adityanath",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    color: Colors.black),
                                              )),
                                        ),
                                      ],
                                    ),
                                    Text("\t\t\t\t\t\t\t2 days ago ",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall),

                                    // Text(
                                    //     "Hathras stampede: 121 dead, special team to probe incident, says Yogi Adityanath"
                                    // ),
                                    //Text(" days ago ",style :Theme.of(context).textTheme.labelSmall),
                                  ],
                                ),
                              )
                            ],
                          )),
                      SizedBox(height: 2),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                //color: Theme.of(context).colorScheme.primaryContainer,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Container(
                                  //child: Image.asset('assets/images/news4.png',fit: BoxFit.cover),
                                  width: 120,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset('assets/images/j1.png',
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(width: 10),
                                          Container(
                                            child: TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              News3()));
                                                },
                                                child: Text(
                                                  "India's T20 World Cup \ntriumph celebrations\nfrom open-bus parade\nto Wankhede Stadium",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.black),
                                                )),
                                          ),
                                        ],
                                      ),
                                      Text("\t\t\t\t\t\t\t7 days ago ",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall),

                                      // Text(
                                      //     "Hathras stampede: 121 dead, special team to probe incident, says Yogi Adityanath"
                                      // ),
                                      // Text("2 days ago ",style :Theme.of(context).textTheme.labelSmall),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 2),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    //color: Theme.of(context).colorScheme.primaryContainer,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  children: [
                                    Container(
                                      //child: Image.asset('assets/images/news4.png',fit: BoxFit.cover),
                                      width: 120,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                            'assets/images/n4.png',
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              SizedBox(width: 8),
                                              Container(
                                                child: TextButton(
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      News4()));
                                                    },
                                                    child: Text(
                                                      "Multibagger stock gains\n720%. Check Prabhudas \nLilladher's view on it",
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          color: Colors.black),
                                                    )),
                                              )
                                              // Text("Hathras stampede")
                                            ],
                                          ),
                                          Text("\t\t\t\t\t\t\t3 days ago ",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall),

                                          // Text(
                                          //     "Hathras stampede: 121 dead, special team to probe incident, says Yogi Adityanath"
                                          // ),
                                          // Text("2 days ago ",style :Theme.of(context).textTheme.labelSmall),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 2),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        //color: Theme.of(context).colorScheme.primaryContainer,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Row(
                                      children: [
                                        Container(
                                          //child: Image.asset('assets/images/news4.png',fit: BoxFit.cover),
                                          width: 120,
                                          height: 120,
                                          decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .background,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            child: Image.asset(
                                                'assets/images/n5.png',
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  SizedBox(width: 8),
                                                  Container(
                                                    child: TextButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          News5()));
                                                        },
                                                        child: Text(
                                                          "NEET PG exam in \nAugust,question paper \nto be finalised hours\nprior:ources",
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              color:
                                                                  Colors.black),
                                                        )),
                                                  )
                                                  // Text("Hathras stampede")
                                                ],
                                              ),
                                              Text("\t\t\t\t\t\t\t2 days ago ",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelSmall),

                                              // Text(
                                              //     "Hathras stampede: 121 dead, special team to probe incident, says Yogi Adityanath"
                                              // ),
                                              // Text("2 days ago ",style :Theme.of(context).textTheme.labelSmall),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          )),
        ));
  }
}
