import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:software_engineering_project/cubits/notes_cubit/notes_cubit.dart';
import 'package:software_engineering_project/widgets/custom_text_field.dart';
import 'custom_app_bar.dart';
import 'notes_list_view_bloc_builder.dart';
class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 12),
            CustomTextFormField(
              hint: 'Search',
              onChanged: (value) {
                BlocProvider.of<NotesCubit>(context).search(value);
              },
            ),
            const SizedBox(height: 12),
            const CustomAppBar(
              title: 'Notes',
            ),
            const Expanded(
              child: NotesListViewBlocBuilder(),
            ),
          ],
        ),
      ),
    );
  }
}
