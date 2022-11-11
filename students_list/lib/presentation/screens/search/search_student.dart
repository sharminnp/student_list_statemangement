import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:students_list/application/searchStudents/search_students_bloc.dart';

import 'package:students_list/presentation/screens/viewStudent/student_list.dart';

class searchstudent extends StatelessWidget {
  final _searchController = TextEditingController();
  searchstudent({Key? key}) : super(key: key);

  // @override
  // State<searchstudent> createState() => _searchstudentState();

// class _searchstudentState extends State<searchstudent> {
  // String? image;
  // Future<void> pickedImage() async {
  //   final pickedImage =
  //       await ImagePicker().pickImage(source: ImageSource.gallery);
  //   if (pickedImage == null) {
  //     return;
  //   }
  //   setState(() {
  //     this.image = pickedImage.path;
  //   });
  // }

  // List<studentmodel> studentList =
  //     Hive.box<studentmodel>('student_db').values.toList();
  // late List<studentmodel> displayStudent = List<studentmodel>.from(studentList);

  // void updateList(String value) {
  //   setState(() {
  //     displayStudent = studentList
  //         .where((element) =>
  //             element.name.toLowerCase().contains(value.toLowerCase()))
  //         .toList();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchStudentsBloc>(context).add(const InitialSearch());
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Students"),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => StudentDatabase())),
            icon: Icon(
              Icons.home,
              size: 40,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          TextFormField(
            // validator: (value) {
            //   return;
            // },
            controller: _searchController,
            onChanged: (value) {
              // updateList(value);
              BlocProvider.of<SearchStudentsBloc>(context)
                  .add(SearchStudentDone(searchValue: value));
            },
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
            ),
          ),
          BlocBuilder<SearchStudentsBloc, SearchStudentsState>(
            builder: (context, state) {
              return Expanded(
                child: (state.displayStudent.isNotEmpty)
                    ? ListView.separated(
                        itemBuilder: (context, index) {
                          File imagefile =
                              File(state.displayStudent[index].image);

                          return Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage: FileImage(imagefile),
                                radius: 30,
                              ),
                              title: Text(state.displayStudent[index].name),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => Divider(),
                        itemCount: state.displayStudent.length)
                    : Center(child: Text("The name is not found")),
              );
            },
          )
        ]),
      ),
    );
  }
}
                        // itemBuilder: (context, index) => ListTile(
                        //       leading: CircleAvatar(
                        //           backgroundImage: FileImage(
                        //         File(state.displayStudent[index].image),
                        //       )),
                        //       title: Text(state.displayStudent[index].name),
                        //     ),
                        // separatorBuilder: (context, index) => Divider(),