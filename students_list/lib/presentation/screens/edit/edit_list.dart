import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:students_list/application/editStudent/edit_student_bloc.dart';
import 'package:students_list/domain/model/data_model.dart';
import 'package:students_list/presentation/screens/viewStudent/student_list.dart';

class editlist extends StatelessWidget {
  final studentmodel student;
  final int studentKey;
  late TextEditingController? _nameController;
  late TextEditingController? _ageController;
  late TextEditingController? _placeController;
  late TextEditingController? _adharController;

  String? imagepath;

  final _formkey = GlobalKey<FormState>();

  editlist({Key? key, required this.student, required this.studentKey})
      : super(key: key);
  getTextEditingControllerValues(BuildContext context) {
    _nameController = TextEditingController(text: student.name);
    _ageController = TextEditingController(text: student.age);
    _placeController = TextEditingController(text: student.place);
    _adharController = TextEditingController(text: student.adhar);
    imagepath = student.image;
  }

// final _mycontroller = TextEditingController();

  Future<void> pickImage(BuildContext context) async {
    log('099999');
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage == null) {
      return;
    }
    imagepath = pickedImage.path;
    log('Image Busfdfdgsdfgsfdgsdfgtton pressed');

    BlocProvider.of<EditStudentBloc>(context)
        .add(UpdateEditImage(newImage: imagepath!));
    log('Image Button pressed');
  }
  //   setState(() {
  //     this.image = pickedImage.path;
  //   });
  // }

  // @override
  // void initState() {
  //   image = widget.student.image;
  //   _nameController = TextEditingController(text: widget.student.name);
  //   _ageController = TextEditingController(text: widget.student.age);
  //   _placeController = TextEditingController(text: widget.student.place);
  //   _adharController = TextEditingController(text: widget.student.adhar);

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    getTextEditingControllerValues(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Students'),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const StudentDatabase(),
                )),
            icon: const Icon(
              Icons.home,
              size: 40,
            )),
      ),

      //   leading: IconButton(onPressed: ()=>Navigator.of(context)
      //   .push(MaterialPageRoute(builder:(context)=>StudentDatabase(),),
      //  icon   : Icon(Icons.home)),),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: _formkey,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Text(widget.listkey.toString()),
                Stack(children: [
                  BlocBuilder<EditStudentBloc, EditStudentState>(
                    builder: (context, state) {
                      return CircleAvatar(
                        radius: 60,
                        backgroundImage: FileImage(File(imagepath!)),
                      );
                    },
                  ),
                  Positioned(
                    bottom: 30,
                    right: 0,
                    child: IconButton(
                      onPressed: () async {
                        log('1243265');
                        await pickImage(context);
                      },
                      icon: const Icon(
                        Icons.arrow_circle_up,
                        size: 60,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  // Positioned(
                  //   top: 60,
                  //   left: 70,
                  //   child: IconButton(
                  //     onPressed: () {
                  //       pickImage(context);
                  //     },
                  //     icon: const Icon(
                  //       Icons.arrow_circle_up,
                  //       size: 60,
                  //       color: Colors.deepPurple,
                  //     ),
                  //   ),
                  // ),
                ]),
                SizedBox(
                  height: 30,
                ),

                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    hintText: "Name",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "The Name is empty";
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _ageController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    hintText: "Age",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "The Age is empty";
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _placeController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    hintText: "Place",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "The Place is empty";
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _adharController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    hintText: "Adhar",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "The Adhar is empty";
                    }
                  },
                ),

                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        editStudentAlert(context);
                      }
                    },
                    // style: ButtonStyle(backgroundColor: Colors.),
                    icon: const Icon(Icons.save),
                    label: const Text('Save')),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> onEditListButtonClicked(BuildContext ctx) async {
    final _name = _nameController!.text.trim();
    final _age = _ageController!.text.trim();
    final _place = _placeController!.text.trim();
    final _adhar = _adharController!.text.trim();
    if (_name.isEmpty || _age.isEmpty || _place.isEmpty || _adhar.isEmpty) {
      return;
    }

    final _edit = studentmodel(
        name: _name,
        age: _age,
        place: _place,
        adhar: _adhar,
        image: imagepath!);
    log('hdgfdh');
    BlocProvider.of<EditStudentBloc>(ctx)
        .add(EditStudentHive(student: _edit, key: studentKey));
    editStudentAlert(ctx);
    // final studentDB = await Hive.openBox<studentmodel>('student_db');
    // studentListNotifier.notifyListeners();

    // await studentDB.put(student.key, _edit);
    // getAllstudents();
    //editstudent(widget.listkey, _edit);
    // print(_edit.name);
    // getAllstudents();
    // (_edit);
  }

  void editStudentAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text('Student edited successfuly'),
            actions: [
              TextButton(
                onPressed: () {
                  onEditListButtonClicked(ctx);
                  // Navigator.pop(ctx);
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
}
