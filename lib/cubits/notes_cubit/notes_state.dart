part of 'notes_cubit.dart';

@immutable
sealed class NotesStates {}

final class NotesInitial extends NotesStates {}

final class NoteSuccess extends NotesStates{}

final class SearchResults extends NotesStates{
  final List<NoteModel> notes;
  SearchResults(this.notes);
}
