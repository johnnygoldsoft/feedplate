import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Feed"),
            Text("Feed"),
          ],
        ),
      ),
    );
  }
}
