import 'package:bloc/bloc.dart';

import 'package:hive/hive.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:students_list/domain/model/data_model.dart';

part 'addstudent_event.dart';
part 'addstudent_state.dart';
part 'addstudent_bloc.freezed.dart';

class AddstudentBloc extends Bloc<AddstudentEvent, AddstudentState> {
  AddstudentBloc() : super(AddstudentState.initial()) {
    final Box<studentmodel> studentbox = Hive.box<studentmodel>('student_db');
    on<AddStudentToHive>((event, emit) async {
      await studentbox.add(event.student);
    });
    on<ChangeImage>((event, emit) {
      final student = studentmodel(
          name: state.student.name,
          age: state.student.age,
          place: state.student.place,
          adhar: state.student.adhar,
          image: state.student.image);
      emit(AddstudentState(student: student));
    });
  }
}
