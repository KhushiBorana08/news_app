import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Screens/LatestNews/Cubits/newscubit.dart';
import 'package:news_app/Screens/LatestNews/Cubits/newsstates.dart';


class NewsfetchScreen extends StatefulWidget {
  const NewsfetchScreen({super.key});

  @override
  State<NewsfetchScreen> createState() => _NewsfetchScreenState();
}

class _NewsfetchScreenState extends State<NewsfetchScreen> {
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
        title: Text("News App"),
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
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(state
                      .latest.articles![index].urlToImage
                      .toString()),
                ),
                title: Text(state
                    .latest.articles![index].title
                    .toString()),
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
