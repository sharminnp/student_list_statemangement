import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:students_list/domain/model/data_model.dart';

part 'edit_student_event.dart';
part 'edit_student_state.dart';
part 'edit_student_bloc.freezed.dart';

class EditStudentBloc extends Bloc<EditStudentEvent, EditStudentState> {
  EditStudentBloc() : super(EditStudentState.initial()) {
    final Box<studentmodel> studentbox = Hive.box<studentmodel>('student_db');
    on<UpdateEditImage>((event, emit) {
      final student = studentmodel(
        name: state.student.name,
        age: state.student.age,
        place: state.student.place,
        adhar: state.student.adhar,
        image: event.newImage,
      );
      emit(EditStudentState(student: student));
    });
    on<EditStudentHive>((event, emit) async {
      await studentbox.put(event.key, event.student);
      log('${event.student.name} edited name');
    });
  }
}
