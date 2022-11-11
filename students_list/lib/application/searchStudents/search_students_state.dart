part of 'search_students_bloc.dart';

@freezed
class SearchStudentsState with _$SearchStudentsState {
  const factory SearchStudentsState({
    required List<studentmodel> studentList,
    required List<studentmodel> displayStudent,
  }) = _SearchStudentsState;
  factory SearchStudentsState.initial() {
    return const SearchStudentsState(
      displayStudent: [],
      studentList: [],
    );
  }
}
