import 'package:flutter/cupertino.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [Task(name: 'Buy milk')];

  int get taskCount {
    return tasks.length;
  }

  void AddNewTask(String newValue) {
    final task = Task(name: newValue);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
