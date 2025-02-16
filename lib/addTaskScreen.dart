import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/controller/TaskController.dart';

class Addtaskscreen extends StatelessWidget {

  final TextEditingController _taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          'Create Task',
          style: GoogleFonts.sourceCodePro(
                  textStyle: TextStyle(
                     fontSize: 36,
                     fontWeight: FontWeight.w900,
                     color: Colors.black,
            ),
          ),
        ),
    //    backgroundColor: const Color.fromARGB(255, 255, 106, 7),
        toolbarHeight: 50,
      ),

      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 100,),
            Text(
               'Task name',
                style: GoogleFonts.sourceCodePro(
                  textStyle: TextStyle(
                     fontSize: 16,
                     fontWeight: FontWeight.w400,
                     color: Colors.black,
                   ),
                  ),
            ),
            TextField(
              controller: _taskController,
              decoration: InputDecoration(
                hintText: 'Enter task name'
              ),
            ),
            SizedBox(height: 20),
            Text(
               'Description',
                style: GoogleFonts.sourceCodePro(
                  textStyle: TextStyle(
                     fontSize: 16,
                     fontWeight: FontWeight.w400,
                     color: Colors.black,
                   ),
                  ),
            ),
            TextField(
              controller: _taskController,
              decoration: InputDecoration(
                hintText: 'Enter task description'
              ),
            ),

            ElevatedButton(
              onPressed: (){
                final taskName = _taskController.text;
                if(taskName.isNotEmpty){
                  Get.find<TaskController>().addTask(taskName);
                  Get.back();
                }
              }, child: Text('Create Task'))

            
          ],
        ),
      )
      ,
    );
  }
}