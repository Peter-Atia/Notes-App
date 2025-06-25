import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/notes/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteBodyView extends StatefulWidget {
  EditNoteBodyView({super.key, required this.note});
  NoteModel note;

  @override
  State<EditNoteBodyView> createState() => _EditNoteBodyViewState();
}

class _EditNoteBodyViewState extends State<EditNoteBodyView> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      child: Form(
        key: formKey,
        autovalidateMode: autoValidateMode,
        child: Column(
          children: [
            CustomAppBar(
              title: "Edit",
              icon: Icons.check,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  widget.note.title = title ?? widget.note.title;
                  widget.note.subTitle = subTitle ?? widget.note.subTitle;
                  widget.note.date = DateFormat(
                    'h:mm a, dd MMM yyyy',
                  ).format(DateTime.now()).toString();
                  widget.note.save();
                  BlocProvider.of<NoteCubit>(context).fetchAllNotes();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "Edited successfully",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                  Navigator.pop(context);
                } else {
                  autoValidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
            SizedBox(height: 10),

            CustomTextField(
              initialValue: widget.note.title,
              hintText: "Title",
              onSaved: (value) {
                title = value;
              },
            ),
            SizedBox(height: 15),
            CustomTextField(
              initialValue: widget.note.subTitle,
              maxLines: 5,
              hintText: "Content",
              onSaved: (value) {
                subTitle = value;
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
