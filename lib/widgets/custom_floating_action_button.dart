import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:software_engineering_project/constans.dart';
import 'package:software_engineering_project/widgets/add_note_bottom_sheet.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          context: context,
          builder: (context) {
            return const AddNoteBottomSheet();
          },
        );
      },
      shape: const CircleBorder(),
      backgroundColor: kPrimaryColor,
      child: const Icon(
        FontAwesomeIcons.plus,
        size: 18,
        color: Colors.black,
      ),
    );
  }
}
