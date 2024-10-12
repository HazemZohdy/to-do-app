import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
 import 'package:notes_app/models/note_model.dart';
import '../../constants.dart';
part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fetchAllNotes() async {
    var notesBox = Hive.box<NoteModel>(kNoteBox);
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}










// warning هنا لازم اتاكد من اي ميثود تنهت مش future علشان لو هي كدا ومستخدم var معاها يبقي صباحي فل ومش هلاقي ال error