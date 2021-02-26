import 'package:flutter/material.dart';
import 'package:whattodo/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:whattodo/models/task_data.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
            itemBuilder: (context,index){
              final task = taskData.tasks[index];
              return TaskTile(
                  taskTitle: task.name,
                  isChecked: task.isDone,
                  checkboxCallback: (checkboxState) {
                    taskData.updateTask(task);
                  },
                  deleteTaskCallback: (){
                    taskData.deleteTask(task);
              },
              );
            }, itemCount: taskData.taskCount);
      },
    );
  }
}