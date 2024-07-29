import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Screens/LatestNews/Cubits/newscubit.dart';
import 'package:news_app/Screens/LatestNews/Cubits/newsstates.dart';


class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<Newscubit>().getnews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latest News",style: TextStyle(fontFamily: 'Times New Roman',fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black),),
        centerTitle: true,
      ),
      body: BlocBuilder<Newscubit, NewsStates>(builder: (context, state) {
        if (state is NewsLoadingStates) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is NewsLoadedStates) {
          return ListView.builder(
            itemBuilder: (context, index) {
              // return ListTile(
              //   leading: CircleAvatar(
              //     backgroundImage: NetworkImage(state
              //         .latest.articles![index].urlToImage
              //         .toString(), ),
              //   ),
              //   title: Text(state
              //       .latest.articles![index].title
              //       .toString(), style: TextStyle(fontSize: 20, fontFamily: "Times New Roman"),),
              // );
              return ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0), // Adjust the radius for rounded corners
                  child: Image.network(
                    state.latest.articles![index].urlToImage.toString(),
                    width: 70, // Adjust width as needed
                    height: 100, // Adjust height as needed
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  state.latest.articles![index].title.toString(),
                  style: TextStyle(fontSize: 20),
                ),
              );
            },
            itemCount: state
                .latest.articles!.length,
          );
        } else if (state is NewsErrorStates) {
          return Center(
            child: Text(state.error.toString()),
          );
        }
        return Center(
          child: Text("No Data Found!!"),
        );
      }),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:news_app/Screens/LatestNews/Cubits/newscubit.dart';
// import 'package:news_app/Screens/LatestNews/Cubits/newsstates.dart';
// import 'package:news_app/Screens/LatestNews/news1.dart';
// import 'package:news_app/Screens/LatestNews/news2.dart';
// import 'package:news_app/Screens/LatestNews/news3.dart';
// import 'package:news_app/Screens/LatestNews/news4.dart';
// import 'package:news_app/Screens/LatestNews/news5.dart';
//
// class Firstscreen extends StatefulWidget {
//   const Firstscreen({super.key});
//
//   @override
//   State<Firstscreen> createState() => _FirstscreenState();
// }
//
// class _FirstscreenState extends State<Firstscreen> {
//   @override
//   void initState() {
//     super.initState();
//     context.read<Newscubit>().getnews();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Latest News"),
//       ),
//       body: BlocBuilder<Newscubit, NewsStates>(
//         builder: (context, state) {
//           if (state is NewsLoadingStates) {
//             return Center(child: CircularProgressIndicator());
//           } else if (state is NewsLoadedStates) {
//             return CustomScrollView(
//               slivers: [
//                 SliverToBoxAdapter(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(10),
//                         child: Text(
//                           "Latest News",
//                           style: TextStyle(
//                             fontFamily: 'Times New Roman',
//                             fontWeight: FontWeight.bold,
//                             fontSize: 50,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       _buildStaticNews(
//                         'assets/images/news4.png',
//                         "Bihar Weather Update:\nLight Rain,Thander\nshower likely in Nine\nDistricts During Next\n24 Hours;",
//                         "5 days ago",
//                         News1(),
//                       ),
//                       SizedBox(height: 10),
//                       _buildStaticNews(
//                         'assets/images/n1.png',
//                         "Hathras stampede: 121\ndead,special team to \nprobe incident,says\nYogi Adityanath",
//                         "2 days ago",
//                         News2(),
//                       ),
//                       SizedBox(height: 10),
//                       _buildStaticNews(
//                         'assets/images/j1.png',
//                         "India's T20 World Cup \ntriumph celebrations\nfrom open-bus parade\nto Wankhede Stadium",
//                         "7 days ago",
//                         News3(),
//                       ),
//                       SizedBox(height: 10),
//                       _buildStaticNews(
//                         'assets/images/n4.png',
//                         "Multibagger stock gains\n720%. Check Prabhudas \nLilladher's view on it",
//                         "3 days ago",
//                         News4(),
//                       ),
//                       SizedBox(height: 10),
//                       _buildStaticNews(
//                         'assets/images/n5.png',
//                         "NEET PG exam in \nAugust,question paper \nto be finalised hours\nprior:ources",
//                         "2 days ago",
//                         News5(),
//                       ),
//                       SizedBox(height: 20),
//                     ],
//                   ),
//                 ),
//                 SliverList(
//                   delegate: SliverChildBuilderDelegate(
//                         (context, index) {
//                       final article = state.latest.articles![index];
//                       return ListTile(
//                         leading: CircleAvatar(
//                           backgroundImage: NetworkImage(article.urlToImage.toString()),
//                         ),
//                         title: Text(article.title.toString()),
//                       );
//                     },
//                     childCount: state.latest.articles!.length,
//                   ),
//                 ),
//               ],
//             );
//           } else if (state is NewsErrorStates) {
//             return Center(child: Text(state.error.toString()));
//           } else {
//             return Center(child: Text("No Data Found!!"));
//           }
//         },
//       ),
//     );
//   }
//
//   Widget _buildStaticNews(String imagePath, String title, String date, Widget destination) {
//     return Container(
//       padding: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 120,
//             height: 120,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(20),
//               child: Image.asset(imagePath, fit: BoxFit.cover),
//             ),
//           ),
//           SizedBox(width: 10),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 TextButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => destination),
//                     );
//                   },
//                   child: Text(
//                     title,
//                     style: TextStyle(fontSize: 17, color: Colors.black),
//                   ),
//                 ),
//                 Text(date, style: Theme.of(context).textTheme.labelSmall),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
