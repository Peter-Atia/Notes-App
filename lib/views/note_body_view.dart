import 'package:flutter/material.dart';
import 'package:notes_app/views/note_list_view.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class NoteBodyView extends StatelessWidget {
  const NoteBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      child: Column(
        children: [
          CustomAppBar(title: "Notes", icon: Icons.search),
          Expanded(child: NoteListView()),
          SafeArea(child: Container()),
        ],
      ),
    );
  }
}
