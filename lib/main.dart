import 'package:flutter/material.dart';
import 'package:kimurastudy/post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("掲示板デモ"), actions: [
        IconButton(
            icon: Icon(Icons.edit),
            onPressed: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return PostPage();
                    }),
                  )
                }),
      ]),
      body: Center(
        child: Text("ここにみんなの投稿が流れる"),
      ),
    );
  }
}
