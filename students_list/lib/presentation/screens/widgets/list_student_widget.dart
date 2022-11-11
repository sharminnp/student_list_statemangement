import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:students_list/db/functions/db_functions.dart';
import 'package:students_list/domain/model/data_model.dart';

import 'package:students_list/presentation/screens/edit/edit_list.dart';
import 'package:students_list/presentation/screens/details/view_student_details.dart';

class ListStudentWidget extends StatelessWidget {
  final Box<studentmodel> studentbox = Hive.box<studentmodel>('student_db');
  ListStudentWidget({Key? key}) : super(key: key);

//   @override
//   State<ListStudentWidget> createState() => _ListStudentWidgetState();
// }

// class _ListStudentWidgetState extends State<ListStudentWidget> {
  @override
  Widget build(BuildContext context) {
    // getAllstudents();

    return ValueListenableBuilder(
        valueListenable: studentbox.listenable(),
        builder:
            (BuildContext ctx, Box<studentmodel> studentbox, Widget? child) {
          return studentbox.isEmpty
              ? const Center(
                  child: Text("list is empty"),
                )
              : ListView.separated(
                  separatorBuilder: ((context, index) {
                    return const Divider();
                  }),
                  itemCount: studentbox.length,
                  itemBuilder: (context, index) {
                    final key = studentbox.keys.toList()[index];
                    final student = studentbox.get(key);
                    File imagefile = File(student!.image);
                    // final data = studentbox;
                    return ListTile(
                        leading:
                            CircleAvatar(backgroundImage: FileImage(imagefile)),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ViewStudentDetails(
                                student: student,
                              ),
                            ),
                          );
                        },
                        title: Text(student.name),
                        subtitle: Text(student.age),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            IconButton(
                                onPressed: () {
                                  if (student.key != null) {
                                    deleteStudentAlert(
                                        context: context,
                                        displayStudent: studentbox,
                                        student: student);
                                    print("worked");
                                  } else {
                                    print(
                                        'student id is null.unable to delete');
                                  }
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.deepPurple,
                                )),
                            IconButton(
                                onPressed: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => editlist(
                                          student: student,
                                          studentKey: key,
                                        ),
                                      ),
                                    ),
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.deepPurple,
                                ))
                          ],
                        )

                        // IconButton(
                        //     onPressed: () {
                        //       if (data.key != null) {
                        //         deleteStudent(data.key);
                        //         print("worked");
                        //       } else {
                        //         print('student id is null.unable to delete');
                        //       }
                        //     },
                        //     icon: Icon(
                        //       Icons.delete,
                        //       color: Colors.deepPurple,
                        //     )),
                        );
                  },
                );
        });
  }

  void deleteStudentAlert(
      {required Box<studentmodel> displayStudent,
      required studentmodel student,
      required BuildContext context}) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Text('Confirm Deletion'),
            content: Text('Do you want to delete'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(ctx);
                },
                child: Text('No'),
              ),
              TextButton(
                onPressed: () async {
                  await displayStudent.delete(student.key);
                  Navigator.pop(ctx);
                },
                child: Text('Yes'),
              )
            ],
          );
        });
  }
}
// BuildContext context, key