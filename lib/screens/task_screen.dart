import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whattodo/widgets/tasks_list.dart';
import 'package:whattodo/screens/add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:whattodo/models/task_data.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreenAccent,
        child: Icon(
          Icons.add
        ),
        onPressed: (){
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen(),
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60,left: 30,bottom: 30,right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 33,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.format_list_bulleted,
                    size: 35,
                    color: Colors.lightGreenAccent,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'What To Do',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 45,
                    color: Colors.white
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}




