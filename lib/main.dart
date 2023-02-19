import 'package:flutter/material.dart';
import 'package:post/data/providers/post_provider.dart';
import 'package:post/screens/post_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Posts App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => PostProvider()),
          ],
          child: const PostScreen()
      ),
    );
  }
}