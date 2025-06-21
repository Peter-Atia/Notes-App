import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return EditNoteView();
              },
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.blueGrey,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete, size: 26),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text("Title"),
                  ),
                  titleTextStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: Text(
                    "Sub Title",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitleTextStyle: TextStyle(fontSize: 14),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    "21May, 2025",
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
