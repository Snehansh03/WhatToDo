import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whattodo/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String newTask;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50,vertical: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
                'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 30
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue){
                newTask = newValue;
              },
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              color: Colors.lightGreenAccent,
              onPressed: (){
                newTask == null ? newTask = 'Sorry Problem Occured!' : newTask = newTask ;
                Provider.of<TaskData>(context,listen: false).addTask(newTask);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
