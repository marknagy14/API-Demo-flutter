import 'package:assignment_thirteen/providers/post_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostScreen extends StatelessWidget {


  const PostScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    var provider = Provider.of<PostProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Post"),
          backgroundColor: Color.fromRGBO(139, 210, 0, 1),
          centerTitle: true,
        ),body: Card(elevation: 10,shadowColor: Colors.indigo,
          child: ListTile(title:Text(
      provider.post.body.toString(),style: TextStyle(color: Colors.black),
    ),subtitle: Text(
      provider.post.title.toString(),),
    ),
        )
    );
  }
}
