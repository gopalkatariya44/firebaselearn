import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'update_student_page.dart';

class ListStudentPage extends StatefulWidget {
  const ListStudentPage({Key? key}) : super(key: key);

  @override
  State<ListStudentPage> createState() => _ListStudentPageState();
}

class _ListStudentPageState extends State<ListStudentPage> {

  deleteUser(id){
    print('User Deleted $id');
  }
  @override
  Widget build(BuildContext context) {
    Widget cell(String text, TextStyle textStyle) {
      return TableCell(
        child: Container(
          color: Colors.greenAccent,
          child: Center(
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ),
      );
    }

    Widget secondcell(String text, TextStyle textStyle) {
      return TableCell(
        child: Center(
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      );
    }
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Table(
          border: TableBorder.all(),
          columnWidths: const <int, TableColumnWidth>{
            1: FixedColumnWidth(140),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              children: [
                cell('Name', TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                cell('Email', TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                cell('Action', TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
              ],
            ),
            TableRow(
              children: [
                secondcell('Parth', TextStyle(fontSize: 18.0)),
                secondcell('Parth@gmail.com', TextStyle(fontSize: 18.0)),
                TableCell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () =>deleteUser(1),
                        icon: Icon(Icons.delete),
                      ),
                      IconButton(
                        onPressed: () =>Get.to(UpdateStudentPage()),
                        icon: Icon(Icons.edit),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
