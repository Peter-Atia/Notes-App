import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/note_body_view.dart';
import '../widgets/add_note.dart';


class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NoteBodyView(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return FractionallySizedBox(
                  heightFactor: 0.85,
                  child: AddNote()
              );
            },
          );
        },
        child: const Icon(Icons.add,color: Colors.black,),
      ),
    );
  }
}
