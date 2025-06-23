import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import '../../constants.dart';
import '../../models/note_model.dart';
import 'note_states.dart';

class NoteCubit extends Cubit<NoteStates> {
  NoteCubit() : super(NoteInitial());
  List<NoteModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNoteBox);
    notes = notesBox.values.toList();
    emit(NoteSuccess());
  }
}
