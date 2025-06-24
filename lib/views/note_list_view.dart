import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes/note_states.dart';
import 'package:notes_app/cubits/notes/notes_cubit.dart';
import 'package:notes_app/widgets/note_item.dart';

import '../models/note_model.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteStates>(
      builder: (context, state) {
        BlocProvider.of<NoteCubit>(context).fetchAllNotes();
        List<NoteModel> noteList = BlocProvider.of<NoteCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: ListView.builder(
            itemCount: noteList.length,
            itemBuilder: (context, index) {
              return NoteItem(note: noteList[index],);
            },
          ),
        );
      },
    );
  }
}
