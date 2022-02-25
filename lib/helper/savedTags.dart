import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

const biggerFont = TextStyle(fontSize: 18.0);

class _SavedTagsState extends State<SavedTags> {
  @override
  Widget build(BuildContext context) {
    final tiles = widget.saved.map(
      (pair) {
        return ListTile(
          title: Text(
            pair.asPascalCase,
            style: biggerFont,
          ),
        );
      },
    );
    final divided = tiles.isNotEmpty
        ? ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList()
        : <Widget>[];

    return ListView(children: divided);
  }
}

class SavedTags extends StatefulWidget {
  final Set<WordPair> saved;
  const SavedTags({Key? key, required this.saved}) : super(key: key);

  @override
  _SavedTagsState createState() => _SavedTagsState();
}
