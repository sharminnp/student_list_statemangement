part of 'edit_student_bloc.dart';

@freezed
class EditStudentEvent with _$EditStudentEvent {
  const factory EditStudentEvent.updateEditImage({required String newImage}) =
      UpdateEditImage;
  const factory EditStudentEvent.editStudentHive(
      {required studentmodel student, required int key}) = EditStudentHive;
}
