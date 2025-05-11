part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteStates {}

final class AddNoteInitial extends AddNoteStates {}

final class AddNoteLoading extends AddNoteStates {}

final class AddNoteSucess extends AddNoteStates {}

final class AddNoteFailure extends AddNoteStates {
  final String errMessage;

  AddNoteFailure({required this.errMessage});
}
