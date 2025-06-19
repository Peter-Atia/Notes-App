import 'package:flutter/material.dart';
import 'package:notes_app/views/note_body_view.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const NoteBodyView(),
      floatingActionButton: Container(
          decoration: BoxDecoration(
              color: Colors.green,
            borderRadius: BorderRadius.circular(24)
          ),
        
          child: IconButton(onPressed: (){}, icon: const Icon(Icons.add))),
    );
  }
}
