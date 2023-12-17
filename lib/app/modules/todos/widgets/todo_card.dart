import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:deck2dark/app/data/schema.dart';
import 'package:deck2dark/app/controller/controller.dart';
import 'package:deck2dark/app/services/notification.dart';
import 'package:deck2dark/main.dart';

class TodoCard extends StatefulWidget {
  const TodoCard({
    super.key,
    required this.todo,
    required this.allTodos,
    required this.calendare,
    required this.onLongPress,
    required this.onTap,
  });
  final Todos todo;
  final bool allTodos;
  final bool calendare;
  final Function() onLongPress;
  final Function() onTap;

  @override
  State<TodoCard> createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {
  final todoController = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, innerState) {
        return GestureDetector(
          onTap: widget.onTap,
          onLongPress: widget.onLongPress,
          child: Card(
            shape: todoController.isMultiSelectionTodo.isTrue &&
                    todoController.selectedTodo.contains(widget.todo)
                ? RoundedRectangleBorder(
                    side: BorderSide(
                        color: context.theme.colorScheme.onPrimaryContainer),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  )
                : null,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        Checkbox(
                          value: widget.todo.done,
                          shape: const CircleBorder(),
                          onChanged: (val) {
                            innerState(() {
                              widget.todo.done = val!;
                            });
                            widget.todo.done
                                ? flutterLocalNotificationsPlugin
                                    .cancel(widget.todo.id)
                                : widget.todo.todoCompletedTime != null
                                    ? NotificationShow().showNotification(
                                        widget.todo.id,
                                        widget.todo.name,
                                        widget.todo.description,
                                        widget.todo.todoCompletedTime,
                                      )
                                    : null;
                            Future.delayed(
                                const Duration(milliseconds: 300),
                                () => todoController
                                    .updateTodoCheck(widget.todo));
                          },
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.todo.name,
                                style: widget.todo.description.isNotEmpty
                                    ? context.textTheme.titleLarge?.copyWith(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )
                                    : context.textTheme.titleLarge?.copyWith(
                                        fontSize: 16,
                                      ),
                                overflow: TextOverflow.visible,
                              ),
                              widget.todo.description.isNotEmpty
                                  ? Text(
                                      widget.todo.description,
                                      style: context.textTheme.labelLarge
                                          ?.copyWith(
                                        color: Colors.grey,
                                      ),
                                      overflow: TextOverflow.visible,
                                    )
                                  : const SizedBox.shrink(),
                              widget.allTodos || widget.calendare
                                  ? Text(
                                      widget.todo.task.value!.title,
                                      style:
                                          context.textTheme.bodyLarge?.copyWith(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    )
                                  : const SizedBox.shrink(),
                              widget.todo.todoCompletedTime != null &&
                                      widget.calendare == false
                                  ? Text(
                                      widget.todo.todoCompletedTime != null
                                          ? DateFormat.yMMMEd(
                                                  locale.languageCode)
                                              .add_Hm()
                                              .format(widget
                                                  .todo.todoCompletedTime!)
                                          : '',
                                      style: context.textTheme.labelLarge,
                                    )
                                  : const SizedBox.shrink(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  widget.calendare
                      ? Text(
                          DateFormat.Hm(locale.languageCode)
                              .format(widget.todo.todoCompletedTime!),
                          style: context.textTheme.bodyLarge?.copyWith(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
