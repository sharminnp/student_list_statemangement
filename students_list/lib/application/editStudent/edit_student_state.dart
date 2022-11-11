part of 'edit_student_bloc.dart';

@freezed
class EditStudentState with _$EditStudentState {
  const factory EditStudentState({required studentmodel student}) =
      _EditStudentState;
  factory EditStudentState.initial() {
    return EditStudentState(
        student:
            studentmodel(name: '', age: '', place: '', adhar: '', image: ''));
  }
}
