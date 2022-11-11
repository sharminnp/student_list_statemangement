import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:students_list/application/addStudent/addstudent_bloc.dart';
import 'package:students_list/application/editStudent/edit_student_bloc.dart';
import 'package:students_list/application/searchStudents/search_students_bloc.dart';

import 'package:students_list/domain/model/data_model.dart';

import 'package:students_list/presentation/screens/viewStudent/student_list.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(studentmodelAdapter().typeId)) {
    Hive.registerAdapter(studentmodelAdapter());
  }
  await Hive.openBox<studentmodel>('student_db');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddstudentBloc()),
        BlocProvider(create: (context) => EditStudentBloc()),
        BlocProvider(create: (context) => SearchStudentsBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.purpleAccent,
            primarySwatch: Colors.deepPurple),
        home: StudentDatabase(),
      ),
    );
  }
}
