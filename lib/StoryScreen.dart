import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'helper/savedTags.dart';
import 'helper/textBox.dart';

const biggerFont = TextStyle(fontSize: 18.0);

class _StoryScreenState extends State<StoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Enter Your Story'),
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 200,
              child: SavedTags(saved: widget.saved),
            ),
            const SizedBox(
              height: 200,
              child: TextBox(),
            ),
          ],
        ));
  }
}

class StoryScreen extends StatefulWidget {
  final Set<WordPair> saved;
  const StoryScreen({Key? key, required this.saved}) : super(key: key);

  @override
  _StoryScreenState createState() => _StoryScreenState();
}
