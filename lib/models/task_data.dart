import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Wake Up'),
    Task(name: 'Go Sleep'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
}

  int get taskCount {
    return _tasks.length;
  }

  void addTask (String newTask) {
    final task = Task(name: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask (Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask (Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}