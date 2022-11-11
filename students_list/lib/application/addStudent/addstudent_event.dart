part of 'addstudent_bloc.dart';

@freezed
class AddstudentEvent with _$AddstudentEvent {
  const factory AddstudentEvent.addStudentToHive(
      {required studentmodel student}) = AddStudentToHive;
  const factory AddstudentEvent.changeImage({required String imagepath}) =
      ChangeImage;
}
