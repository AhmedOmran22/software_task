import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/notes_cubit/notes_cubit.dart';
import '../models/note_model.dart';
import 'note_item.dart';
class NotesListViewBlocBuilder extends StatelessWidget {
  const NotesListViewBlocBuilder({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesStates>(
      builder: (context, state) {
        if (state is SearchResults) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.notes.length,
              itemBuilder: (BuildContext context, int index) {
                return NoteItem(
                  note: state.notes[index],
                );
              },
            ),
          );
        }
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (BuildContext context, int index) {
              return NoteItem(
                note: notes[index],
              );
            },
          ),
        );
      },
    );
  }
}
