import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';

import '../../constans.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesStates> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  var notesBox = Hive.box<NoteModel>(kNotesBox);
  fetchAllNotes() {
    notes = notesBox.values.toList();
    emit(NoteSuccess());
  }

  void search(String query) {
    final lowerQuery = query.toLowerCase();
    final results = notesBox.values
        .where((note) =>
            note.title.toLowerCase().contains(lowerQuery) ||
            note.subTitle.toLowerCase().contains(lowerQuery))
        .toList();
    emit(SearchResults(results));
  }
}
