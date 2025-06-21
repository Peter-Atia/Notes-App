import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});
  final List <NoteItem>notesList=const [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return NoteItem();
        },
      ),
    );
  }
}
