import 'package:get/get.dart';
import 'package:todoapp/model/Task.dart';

class TaskController extends GetxController{
  var tasks = <String>[].obs;

  void addTask(String task){
    tasks.add(task);
  }

  void deleteTask(int index){
    tasks.removeAt(index);
  }
}