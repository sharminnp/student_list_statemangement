import 'package:flutter/material.dart';

import 'package:students_list/presentation/screens/addStudent/add_student_widget.dart';

import '../viewStudent/student_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Students'),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => StudentDatabase(),
                )),
            icon: Icon(
              Icons.home,
              size: 40,
            )),
      ),
      body: SafeArea(
        child: AddStudentWidget(
          ctx: context,
        ),
      ),
    );
  }
}
