import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:image_picker/image_picker.dart';
import 'package:students_list/application/addStudent/addstudent_bloc.dart';

import 'package:students_list/db/functions/db_functions.dart';
import 'package:students_list/domain/model/data_model.dart';
import 'package:students_list/presentation/screens/details/view_student_details.dart';
import 'package:students_list/presentation/screens/viewStudent/student_list.dart';

// import 'package:students_list/domain/model/data_model.dart';

class AddStudentWidget extends StatelessWidget {
  final BuildContext ctx;
  AddStudentWidget({Key? key, required this.ctx}) : super(key: key);

  final _formkey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _placeController = TextEditingController();
  final _adharController = TextEditingController();

  String? imagepath;
  Future<void> addImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    }
    imagepath = image.path;
    BlocProvider.of<AddstudentBloc>(ctx)
        .add(ChangeImage(imagepath: imagepath!));
  }

  //   setState(() {
  //     this.image = pickedimage!.path;
  //   });
  // }

  Future<void> addButtonClicked() async {
    final _name = _nameController.text;
    final _age = _ageController.text;
    final _place = _placeController.text;
    final _adhar = _adharController.text;
    if (_name.isEmpty ||
        _age.isEmpty ||
        _place.isEmpty ||
        _adhar.isEmpty ||
        imagepath == null) {
      return;
    }
    final _student = studentmodel(
        name: _name,
        age: _age,
        place: _place,
        adhar: _adhar,
        image: imagepath!);
    BlocProvider.of<AddstudentBloc>(ctx)
        .add(AddStudentToHive(student: _student));
    addStudentAlert(ctx);
    // await addstudent(_student);
  }

  void addStudentAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text('Student added successfuly'),
            actions: [
              TextButton(
                onPressed: () {
                  addButtonClicked();
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StudentDatabase()),
                      (route) => false);
                },
                child: Text('Ok'),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: _formkey,
        child: ListView(
          children: [
            SizedBox(height: 20),
            BlocBuilder<AddstudentBloc, AddstudentState>(
              builder: (context, state) {
                return CircleAvatar(
                  radius: 60,
                  backgroundImage: (imagepath != null)
                      ? FileImage(File(imagepath!))
                      : AssetImage("assest/image/images.png") as ImageProvider,
                );
              },
            ),
            IconButton(
              onPressed: () {
                addImage();
              },
              icon: Icon(Icons.add_a_photo),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                hintText: "Name",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Name is empty";
                }
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: _ageController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                hintText: "Age",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Age is empty";
                }
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _placeController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                hintText: "Place",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Place is empty";
                }
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: _adharController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                hintText: "Adhar",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Adhar is empty";
                }
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    addStudentAlert(context);
                  }
                },
                child: Text("Add Student")),
          ],
        ),
      ),
    );
  }
}
