import 'package:flutter/material.dart';

class Task {
  String title;
  bool isCompleted;
  String name;
  Task(this.title, this.isCompleted,this.name);
}

class animation2 extends StatefulWidget {
  const animation2({super.key});

  @override
  State<animation2> createState() => _animation2State();
}

class _animation2State extends State<animation2> {
  List<Task> task = [];
  bool isLoading = false;
  final GlobalKey<AnimatedListState> _animatedListKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To do List"),
      ),
      body: AnimatedList(
        key: _animatedListKey,
        initialItemCount: task.length,
        itemBuilder: (context, index, animation) {
          return _buildTaskItem(task[index], animation, index);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTask,
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.grey,
    );
  }
  Widget _buildTaskItem(Task task, Animation<double> animation, int index) {
    return SizeTransition(
      sizeFactor: animation,
      child: Card(
        color: Colors.blue,
        child: ListTile(
          title: Text(task.title),
          onLongPress: () => removeTask(index),
        ),
      ),
    );
  }

  void _addTask() async {
    Task newTask = Task('New Task ${task.length + 1}', false,'sid');
    task.add(newTask);
    _animatedListKey.currentState!.insertItem(task.length - 2);
  }

  void removeTask(int index) {
    _animatedListKey.currentState!.removeItem(index, (context, animation) => _buildTaskItem(task[index], animation, index));
    task.removeAt(index);
  }


}
