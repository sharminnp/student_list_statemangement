part of 'search_students_bloc.dart';

@freezed
class SearchStudentsEvent with _$SearchStudentsEvent {
  const factory SearchStudentsEvent.searchStudentDone(
      {required String searchValue}) = SearchStudentDone;
  const factory SearchStudentsEvent.initialSearch() = InitialSearch;
}
