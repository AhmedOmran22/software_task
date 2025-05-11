import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:software_engineering_project/helpers.dart';
import '../cubits/notes_cubit/notes_cubit.dart';
import '../models/note_model.dart';
import 'custom_app_bar.dart';
import 'custom_text_field.dart';
import 'edit_note_color_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  late TextEditingController titleController, subtitleController;

  @override
  void initState() {
    titleController = TextEditingController(text: widget.note.title);
    subtitleController = TextEditingController(text: widget.note.subTitle);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppBar(
              onTap: () {
                widget.note.title = titleController.text;
                widget.note.subTitle = subtitleController.text;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
                snackBarMessage(context, 'Your note is edited successfuly');
              },
              icon: Icons.check,
              title: 'Edit Note',
            ),
            const SizedBox(height: 32),
            CustomTextFormField(
              controller: titleController,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              controller: subtitleController,
              maxLines: 8,
            ),
            const SizedBox(height: 16),
            EditNoteColorListView(
              note: widget.note,
            ),
          ],
        ),
      ),
    );
  }
}
