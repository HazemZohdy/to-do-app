 import 'package:flutter/material.dart';
 import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_note_cubit/cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/note_list_view.dart';

class CustomNoteBody extends StatefulWidget {
  const CustomNoteBody({super.key});

  @override
  State<CustomNoteBody> createState() => _CustomNoteBodyState();
}

class _CustomNoteBodyState extends State<CustomNoteBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}
