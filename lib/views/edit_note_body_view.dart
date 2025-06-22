import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteBodyView extends StatefulWidget {
  const EditNoteBodyView({super.key});

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
                } else {
                  autoValidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
            SizedBox(height: 10),

            CustomTextField(
              hintText: "Title",
              onSaved: (value) {
                title = value;
              },
            ),
            SizedBox(height: 15),
            CustomTextField(
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
