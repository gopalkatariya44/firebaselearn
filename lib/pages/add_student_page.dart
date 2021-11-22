import 'dart:ui';

import 'package:firecrud/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddStudentPage extends StatefulWidget {
  const AddStudentPage({Key? key}) : super(key: key);

  @override
  _AddStudentPageState createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {
  final _key = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var name = "";
  var email = "";
  var password = "";

  addUser(){
    print('User Added');
  }

  clearData(){
    nameController.clear();
    emailController.clear();
    passwordController.clear();
    print('Data Cleared');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Student'),
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
                  controller: nameController,
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
                  controller: emailController,
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
                  controller: passwordController,
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
                        if(_key.currentState!.validate()){
                          setState(() {
                            name =nameController.text;
                            email = emailController.text;
                            password = passwordController.text;
                            addUser();
                            // Get.to(HomePage());
                          });
                        }
                      },
                      child: Text('Register',style: TextStyle(fontSize: 20),),
                    ),
                    ElevatedButton(
                      onPressed: () =>clearData(),
                      child: Text('Reset',style: TextStyle(fontSize: 20),),
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
