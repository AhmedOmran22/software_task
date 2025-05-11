import 'package:flutter/material.dart';
import 'package:software_engineering_project/widgets/custom_floating_action_button.dart';
import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  NotesViewBody(),
      floatingActionButton:  CustomFloatingActionButton(),
    );
  }
}
