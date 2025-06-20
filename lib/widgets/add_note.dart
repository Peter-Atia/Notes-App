
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customButton.dart';

import 'custom_text_field.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      child: Column(
          children: [
            CustomTextField(
              hintText: "Title",
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              maxLines: 5,
              hintText: "Content",
            ),
            Spacer(),
            CustomButton(text: "Add",),

          ]
      ),
    );
  }
}
