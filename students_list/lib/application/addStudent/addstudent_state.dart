part of 'addstudent_bloc.dart';

@freezed
class AddstudentState with _$AddstudentState {
  const factory AddstudentState({required studentmodel student}) =
      _AddstudentState;

  factory AddstudentState.initial() {
    // String name;
    return AddstudentState(
        student: studentmodel(
      adhar: '',
      image: '',
      age: '',
      place: '',
      name: '',
    ));
  }
}
