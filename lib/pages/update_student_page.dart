import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateStudentPage extends StatefulWidget {
  const UpdateStudentPage({Key? key}) : super(key: key);

  @override
  State<UpdateStudentPage> createState() => _UpdateStudentPageState();
}

class _UpdateStudentPageState extends State<UpdateStudentPage> {
  final _key = GlobalKey<FormState>();

  var name = "";
  var email = "";
  var password = "";

  updateUser() {
    print('User Updated');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Student'),
      ),
      body: Form(
        key: _key,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextFormField(
                  onChanged: (value) => '',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'PLease Enter Name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Name:',
                    labelStyle: TextStyle(fontSize: 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    errorStyle: TextStyle(color: Colors.red, fontSize: 15),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextFormField(
                  onChanged: (value) => '',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'PLease Enter Name';
                    } else if (!value.contains('@')) {
                      return 'PLease Enter Valid Email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Email:',
                    labelStyle: TextStyle(fontSize: 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    errorStyle: TextStyle(color: Colors.red, fontSize: 15),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextFormField(
                  obscureText: true,
                  onChanged: (value) => '',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'PLease Enter Name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Password:',
                    labelStyle: TextStyle(fontSize: 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    errorStyle: TextStyle(color: Colors.red, fontSize: 15),
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          updateUser();
                          Get.back();
                        }
                      },
                      child: Text(
                        'Update',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => '',
                      child: Text(
                        'Reset',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
