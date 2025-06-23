import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes/notes_cubit.dart';
import 'package:notes_app/views/note_list_view.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class NoteBodyView extends StatelessWidget {
  const NoteBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NoteCubit>(
      create: (context) => NoteCubit()..fetchAllNotes(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
        child: Column(
          children: [
            CustomAppBar(title: "Notes", icon: Icons.search),
            Expanded(child: NoteListView()),
            SafeArea(child: Container()),
          ],
        ),
      ),
    );
  }
}
