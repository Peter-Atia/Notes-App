import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';


class EditNoteBodyView extends StatelessWidget {
  const EditNoteBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      child: Column(
        children: [
          CustomAppBar(title: "Edit",icon: Icons.check,),

          CustomTextField(hintText: "Title"),
          SizedBox(height: 15),
          CustomTextField(maxLines: 5, hintText: "Content"),
          Spacer(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
