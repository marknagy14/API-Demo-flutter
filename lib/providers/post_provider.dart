


import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../data/models/post_model.dart';

class PostProvider extends ChangeNotifier {
  //final PostWebServices postWebServices;
  PostModel post = PostModel(title: '',userId: 0,body: '',id: 0);

  PostProvider(){
    getPost();
  }

  Future getPost() async {
    print('///');
    try{
      var response = await Dio().get("https://jsonplaceholder.typicode.com/posts/1");
      print(response.data);
      print('data loaded');
      post=PostModel.fromJson(response.data);
      notifyListeners();

    }
    catch(e){
      print(e.toString());
    }



  }

  }


