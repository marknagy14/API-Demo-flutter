
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/PostsProvider.dart';


class PostsScreen extends StatelessWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<PostsProvider>(context);
    return Scaffold(
        appBar: AppBar(backgroundColor: const Color.fromRGBO(139, 214, 7, 1),
          title: const Text("Posts"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(elevation: 10,shadowColor: Colors.indigo,semanticContainer: true,
              child: Column(
                children: [
                  ListTile(
                    title: Text(provider.posts[index].body.toString()),
                    subtitle: Text(provider.posts[index].title.toString()),
                  ),const SizedBox(height: 30,)
                ],
              ),
            );
          },
          itemCount: provider.posts.length,
        ));
  }
}
