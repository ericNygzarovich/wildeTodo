import 'package:flutter/material.dart';
import 'package:wildtodo/modules/tasks/widgets/task.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 4,
      itemBuilder: (context, index) => const Task(
        status: TaskStatus.undone,
        time: '12:00 AM',
        category: 'Importance',
        isPrivat: false,
        starred: true,
        details: true,
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 5,
      ),
    );
  }
}

enum TaskStatus {
  undone,
  success,
  failed,
}
