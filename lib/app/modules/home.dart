import 'package:deck2dark/app/controller/controller.dart';
import 'package:deck2dark/app/modules/settings/view/settings.dart';
import 'package:deck2dark/app/modules/tasks/view/all_tasks.dart';
import 'package:deck2dark/app/modules/tasks/widgets/tasks_action.dart';
import 'package:deck2dark/app/modules/todos/view/all_todos.dart';
import 'package:deck2dark/app/modules/todos/view/calendar_todos.dart';
import 'package:deck2dark/app/modules/todos/widgets/todos_action.dart';
import 'package:deck2dark/theme/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final todoController = Get.put(TodoController());
  final themeController = Get.put(ThemeController());
  int tabIndex = 0;

  final pages = const [
    AllTasks(),
    AllTodos(),
    CalendarTodos(),
    SettingsPage(),
  ];

  void changeTabIndex(int index) {
    setState(() {
      tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.refresh,
            ),
            onPressed: () {
              // do something
              todoController.refreshTasks();
            },
          )
        ],
      ),
      body: IndexedStack(
        index: tabIndex,
        children: pages,
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) => changeTabIndex(index),
        selectedIndex: tabIndex,
        destinations: [
          NavigationDestination(
            icon: const Icon(Iconsax.folder_2),
            selectedIcon: const Icon(Iconsax.folder_25),
            label: 'categories'.tr,
          ),
          NavigationDestination(
            icon: const Icon(Iconsax.task_square),
            selectedIcon: const Icon(Iconsax.task_square5),
            label: 'allTasks'.tr,
          ),
          NavigationDestination(
            icon: const Icon(Iconsax.calendar_1),
            selectedIcon: const Icon(Iconsax.calendar5),
            label: 'calendar'.tr,
          ),
          NavigationDestination(
            icon: const Icon(Iconsax.category),
            selectedIcon: const Icon(Iconsax.category5),
            label: 'settings'.tr,
          ),
        ],
      ),
      floatingActionButton: tabIndex == 3
          ? null
          : FloatingActionButton(
              onPressed: () {
                showModalBottomSheet(
                  enableDrag: false,
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    switch (tabIndex) {
                      case 0:
                        return TasksAction(
                          text: 'create'.tr,
                          edit: false,
                        );
                      default:
                        return TodosAction(
                          text: 'create'.tr,
                          edit: false,
                          category: true,
                        );
                    }
                  },
                );
              },
              child: const Icon(Iconsax.add),
            ),
    );
  }
}
