import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/note_view.dart';

void main()async {
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  final bool darkTheme = true;

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
