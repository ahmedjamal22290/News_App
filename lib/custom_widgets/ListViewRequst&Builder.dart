import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:p/custom_widgets/List_news_widget.dart';
import 'package:p/moduls/artical_model.dart';
import 'package:p/services/news_services.dart';

class newsListViewBuilder extends StatelessWidget {
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: newsServices(Dio()).getFootballNews(),
      builder: (context, snapshot) {
        return ListNewsWidget(
          articles: snapshot.data ?? [],
        );
      },
    );
    // return isLoading
    //     ? LoadingWidget()
    //     : articles.isEmpty
    //         ? SliverFillRemaining(
    //             child: Center(
    //               child: Text(
    //                 'oops there is something wrong, try again later',
    //                 style: TextStyle(color: Colors.black, fontSize: 30),
    //               ),
    //             ),
    //           )
    //         : ListNewsWidget(
    //             articles: articles,
    //           );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: Container(
          height: 80,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(126, 158, 158, 158)),
          child: CircularProgressIndicator(
            strokeAlign: -6,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
