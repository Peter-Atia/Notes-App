import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../constants.dart';
import '../../models/note_model.dart';
import 'note_states.dart';

class NoteCubit extends Cubit<NoteStates> {
  NoteCubit() : super(NoteInitial());
  fetchAllNotes() {
    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);
      emit(NoteSuccess(notesBox.values.toList()));
    } catch (e) {
      emit(NoteFailure(errorMessage: e.toString()));
    }
  }
}
