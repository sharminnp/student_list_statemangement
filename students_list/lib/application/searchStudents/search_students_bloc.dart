import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:students_list/domain/model/data_model.dart';
import 'package:students_list/presentation/screens/search/search_student.dart';

part 'search_students_event.dart';
part 'search_students_state.dart';
part 'search_students_bloc.freezed.dart';

class SearchStudentsBloc
    extends Bloc<SearchStudentsEvent, SearchStudentsState> {
  SearchStudentsBloc() : super(SearchStudentsState.initial()) {
    on<InitialSearch>((event, emit) {
      final Box<studentmodel> studentbox = Hive.box<studentmodel>('student_db');
      emit(SearchStudentsState(
          studentList: studentbox.values.toList(),
          displayStudent: studentbox.values.toList()));
    });

    on<SearchStudentDone>((event, emit) {
      List<studentmodel> _searchStudentList = state.displayStudent;
      // emit(SearchStudentsState(
      //     studentList: state.studentList,
      //     displayStudent: state.displayStudent));
      _searchStudentList = state.studentList
          .where((element) => element.name
              .toLowerCase()
              .contains(event.searchValue.toLowerCase()))
          .toList();
      emit(SearchStudentsState(
        studentList: state.studentList,
        displayStudent: _searchStudentList,
      ));
    });
  }
}
