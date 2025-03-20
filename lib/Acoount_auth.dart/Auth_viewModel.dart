import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

class AccountAuthModel extends ChangeNotifier {
  final baseUrl = 'https://jsonplaceholder.typicode.com/posts';

  int page = 0;
  final int limit = 20;

  bool hasNextPage = true;

  bool isFirstLoadRunning = false;

  bool isLoadMoreRunning = false;

  List posts = [];
  void firstLoad() async {
    ChangeNotifier();

    isFirstLoadRunning = true;

    try {
      ChangeNotifier();

      final res =
          await http.get(Uri.parse("$baseUrl?_page=$page&_limit=$limit"));

      posts = json.decode(res.body);
    } catch (err) {
      ChangeNotifier();

      if (kDebugMode) {
        print('Something went wrong');
      }
    }

    isFirstLoadRunning = false;
  }

  ScrollController? controller;

  void loadMore() async {
    ChangeNotifier();
    if (hasNextPage == true &&
        isFirstLoadRunning == false &&
        isLoadMoreRunning == false &&
        controller!.position.extentAfter < 300) {
      ChangeNotifier();
      isLoadMoreRunning = true;
      page += 1;
      try {
        ChangeNotifier();
        final res =
            await http.get(Uri.parse("$baseUrl?_page=$page&_limit=$limit"));
        final List fetchedPosts = json.decode(res.body);
        if (fetchedPosts.isNotEmpty) {
          ChangeNotifier();
          posts.addAll(fetchedPosts);
        } else {
          hasNextPage = false;
          ChangeNotifier();
        }
      } catch (err) {
        if (kDebugMode) {
          print('Something went wrong!');
        }
      }

      isLoadMoreRunning = false;
      ChangeNotifier();
    }
  }

  @override
  void dispose() {
    controller!.removeListener(loadMore);
    super.dispose();
  }
}
