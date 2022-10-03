
import 'package:assignment_thirteen/providers/PostsProvider.dart';
import 'package:assignment_thirteen/providers/post_provider.dart';
import 'package:assignment_thirteen/view/screens/PostsScreen.dart';
import 'package:assignment_thirteen/view/screens/post_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context)=>PostProvider()),
      ChangeNotifierProvider(create: (context)=>PostsProvider())

    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,

      home:PostsScreen(),
    );
  }
}

