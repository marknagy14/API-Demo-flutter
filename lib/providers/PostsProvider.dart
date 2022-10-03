import 'package:assignment_thirteen/data/models/PostsModel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';


class PostsProvider extends ChangeNotifier{

  List<PostsModel> posts=[];

  PostsProvider(){
    getPosts();
  }

  Future getPosts() async{
    try {
      print('///');
      var response = await Dio().get("https://jsonplaceholder.typicode.com/posts");
      print(response.data);
      posts =List<PostsModel>.from(response.data.map((e) =>PostsModel.fromJson(e)));
      notifyListeners();
    }
    catch(e){
      print(e);

    }

  }


}