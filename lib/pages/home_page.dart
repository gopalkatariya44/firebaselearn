import 'package:firecrud/pages/add_student_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'list_student_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Flutter Firestore CRUD'),
            ElevatedButton(
              onPressed: () {
                Get.to(AddStudentPage());
              },
              child: Text(
                'ADD',
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
            ),
          ],
        ),
      ),
      body: ListStudentPage(),
    );
  }
}
