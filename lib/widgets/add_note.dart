import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note/add_note_states.dart';
import '../cubits/notes/notes_cubit.dart';
import 'add_note_form.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> AddNoteCubit() ,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 24
        ),
        child: Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: BlocConsumer<AddNoteCubit, AddNoteStates>(
            builder: (context, state) {
              return AbsorbPointer(
                absorbing: state is AddNoteLoading ? true :false,
                  child: AddNoteForm()
              );
            },
            listener: (context, state) {
              if(state is AddNoteSuccess){
                BlocProvider.of<NoteCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              }
            },
          ),
        ),
      ),
    );
  }
}
