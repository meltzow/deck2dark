import 'package:deck2dark/app/controller/controller.dart';
import 'package:deck2dark/app/modules/tasks/widgets/task_card.dart';
import 'package:deck2dark/app/widgets/list_empty.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
    required this.archived,
    required this.searhTask,
  });
  final bool archived;
  final String searhTask;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  final todoController = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Obx(
        () {
          var tasks = todoController.writableCalendars
              .where((task) => (widget.searhTask.isEmpty ||
                  task.name!.toLowerCase().contains(widget.searhTask)))
              .toList()
              .obs;
          return tasks.isEmpty
              ? ListEmpty(
                  img: 'assets/images/Category.png',
                  text: widget.archived
                      ? 'addArchiveCategory'.tr
                      : 'addCategory'.tr,
                )
              : ListView(
                  children: [
                    ...tasks.map(
                      (task) {
                        // var createdTodos =
                        //     todoController.createdAllTodosTask(task);
                        // var completedTodos =
                        //     todoController.completedAllTodosTask(task);
                        // var precent = (completedTodos / createdTodos * 100)
                        //     .toStringAsFixed(0);

                        return TaskCard(
                          key: ValueKey(task),
                          task: task,
                          createdTodos: 100,
                          completedTodos: 18,
                          precent: "30",
                          onTap: () {
                            //   todoController.isMultiSelectionTask.isTrue
                            //       ? todoController.doMultiSelectionTask(task)
                            //       : Get.to(
                            //           () => TodosTask(task: task),
                            //           transition: Transition.downToUp,
                            //         );
                          },
                          onLongPress: () {
                            //   todoController.isMultiSelectionTask.value = true;
                            //   todoController.doMultiSelectionTask(task);
                          },
                        );
                      },
                    ),
                  ],
                );
        },
      ),
    );
  }
}
