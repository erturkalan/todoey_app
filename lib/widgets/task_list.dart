import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemCount: taskData.taskCount,
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return InkWell(
            onLongPress: () => taskData.deleteTask(task),
            child: TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkbox) {
                taskData.updateTask(task);
              },
            ),
          );
        },
      ),
    );
  }
}
