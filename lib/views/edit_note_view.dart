import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_body_view.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteBodyView(),
    );
  }
}
