import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/addTaskScreen.dart';
import 'package:todoapp/controller/TaskController.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final TaskController taskController = Get.put(TaskController());
    
    return Scaffold(

      appBar: AppBar(
        title: Text(
          'to-do app',
          style: GoogleFonts.sourceCodePro(
            textStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
      //  backgroundColor: const Color.fromARGB(255, 255, 106, 7),
        toolbarHeight: 50,
      ),

      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
    //    color: Colors.indigoAccent,
        child: 
          Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Hey John,',
                    style: GoogleFonts.sourceCodePro(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Obx(
                    () =>  Text(
                          'Your Tasks (${taskController.tasks.length})',
                          style: GoogleFonts.sourceCodePro(
                             textStyle: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                         ),
                     ),
                  )
                 
                ],
              ),
            ),
            SizedBox(height: 20),

            Expanded(
              child: Obx(
                () {
                  if (taskController.tasks.isEmpty){
                    return Center(
                      child: Text(
                        'No Tasks pending!',
                        style: GoogleFonts.sourceCodePro(
                          textStyle: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    );
                }
                return ListView.builder(
                  itemCount: taskController.tasks.length,
                  itemBuilder: (context, index){
                    return Container(
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(16),
                         color: const Color.fromARGB(255, 211, 209, 209),
                      ),
                      child: ListTile(
                        title:Text(
                          taskController.tasks[index],
                          style: TextStyle(color: Colors.black),
                        ),
                        trailing: IconButton(
                          onPressed: (){taskController.deleteTask(index);},
                          icon: Icon(Icons.delete)
                        ),
                      ),              
                    );
                  }
                );
                }
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.indigoAccent,
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Get.to(() => Addtaskscreen());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Add task',
                        style: GoogleFonts.sourceCodePro(
                          textStyle: TextStyle(
                             fontSize: 20,
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                          )
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.add)
                    ]
                    
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
