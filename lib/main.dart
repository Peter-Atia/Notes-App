import 'package:flutter/material.dart';
import 'package:notes_app/views/note_view.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  NotesApp({super.key});
  bool darkTheme = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: darkTheme ? Brightness.dark : Brightness.light,
      ),
      home: NoteView(),
    );
  }
}
