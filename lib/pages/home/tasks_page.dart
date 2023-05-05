import 'package:cse_organizers_app/Widget/tasks_list.dart';
import 'package:cse_organizers_app/Widget/tasks_task.dart';
import 'package:cse_organizers_app/icons/c_s_e_organizers_app_icons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cse_organizers_app/constants.dart' as constants;
import 'package:auto_size_text/auto_size_text.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  int activebutton = 1;
  int index = 1;

  void clicked(int index) {
    setState(() {
      activebutton = index;
    });
  }

  List<Task> taskList = [];

  List<Task> taskListDay1 = [
    const Task(
        normal_task: true,
        hour: '11:00 - 12:30',
        task_type: 'Normal task',
        task_content:
            "Lorem ipsum dolor sit amet, consetetur adipiscing elit."),
    const Task(
        normal_task: false,
        hour: '11:00 - 12:30',
        task_type: 'Check-in task',
        task_content:
            "Lorem ipsum dolor sit amet, consetetur adipiscing elit."),
    const Task(
        normal_task: true,
        hour: '11:00 - 12:30',
        task_type: 'Normal task',
        task_content:
            "Lorem ipsum dolor sit amet, consetetur adipiscing elit."),
    const Task(
        normal_task: false,
        hour: '11:00 - 12:30',
        task_type: 'Check-in task',
        task_content:
            "Lorem ipsum dolor sit amet, consetetur adipiscing elit."),
    const Task(
        normal_task: true,
        hour: '11:00 - 12:30',
        task_type: 'Normal task',
        task_content:
            "Lorem ipsum dolor sit amet, consetetur adipiscing elit."),
    const Task(
        normal_task: false,
        hour: '11:00 - 12:30',
        task_type: 'Check-in task',
        task_content:
            "Lorem ipsum dolor sit amet, consetetur adipiscing elit."),
  ];
  List<Task> taskListDay2 = [
    const Task(
        normal_task: false,
        hour: '11:00 - 12:30',
        task_type: 'Check-in task',
        task_content:
            "Lorem ipsum dolor sit amet, consetetur adipiscing elit."),
    const Task(
        normal_task: false,
        hour: '11:00 - 12:30',
        task_type: 'Check-in task',
        task_content:
            "Lorem ipsum dolor sit amet, consetetur adipiscing elit."),
    const Task(
        normal_task: false,
        hour: '11:00 - 12:30',
        task_type: 'Check-in task',
        task_content:
            "Lorem ipsum dolor sit amet, consetetur adipiscing elit."),
  ];
  List<Task> taskListDay3 = [
    const Task(
        normal_task: true,
        hour: '11:00 - 12:30',
        task_type: 'Normal task',
        task_content:
            "Lorem ipsum dolor sit amet, consetetur adipiscing elit."),
    const Task(
        normal_task: true,
        hour: '11:00 - 12:30',
        task_type: 'Normal task',
        task_content:
            "Lorem ipsum dolor sit amet, consetetur adipiscing elit."),
    const Task(
        normal_task: true,
        hour: '11:00 - 12:30',
        task_type: 'Normal task',
        task_content:
            "Lorem ipsum dolor sit amet, consetetur adipiscing elit."),
  ];

  @override
  void initState() {
    super.initState();
    List<Task> taskList = taskListDay1;
  }

  @override
  Widget build(BuildContext context) {
    final double largeur = MediaQuery.of(context).size.width;
    final double hauteur = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        color: constants.colors['background']!['light'],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: hauteur * 0.019),
              alignment: Alignment.center,
              color: Colors.white,
              height: hauteur * 0.19,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: largeur * 0.33,
                      height: hauteur * 0.06,
                      alignment: Alignment.center,
                      child: AutoSizeText(
                        'My tasks',
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 32,
                            //       fontFamily: "CSEOrganizersApp",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: hauteur * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            clicked(1);
                            setState(() {
                              taskList = taskListDay1;
                            });
                          },
                          style: activebutton == 1
                              ? ElevatedButton.styleFrom(
                                  backgroundColor:
                                      constants.colors['primary']![600],
                                  fixedSize:
                                      Size(largeur * 0.25, hauteur * 0.056),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 0,
                                )
                              : ElevatedButton.styleFrom(
                                  backgroundColor:
                                      constants.colors['background']!['light'],
                                  fixedSize:
                                      Size(largeur * 0.25, hauteur * 0.056),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 0,
                                ),
                          child: AutoSizeText('DAY 1',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: activebutton == 1
                                      ? constants.colors['background']!['light']
                                      : constants.colors['neutral']![900]),
                              maxLines: 1),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              clicked(2);
                              setState(() {
                                taskList = taskListDay2;
                              });
                            },
                            style: activebutton == 2
                                ? ElevatedButton.styleFrom(
                                    backgroundColor:
                                        constants.colors['primary']![600],
                                    fixedSize:
                                        Size(largeur * 0.27, hauteur * 0.07),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    elevation: 0,
                                  )
                                : ElevatedButton.styleFrom(
                                    backgroundColor: constants
                                        .colors['background']!['light'],
                                    fixedSize:
                                        Size(largeur * 0.27, hauteur * 0.07),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    elevation: 0,
                                  ),
                            child: AutoSizeText('DAY 2',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: constants.colors['neutral']![900]),
                                maxLines: 1)),
                        ElevatedButton(
                            onPressed: () {
                              clicked(3);
                              setState(() {
                                taskList = taskListDay3;
                              });
                            },
                            style: activebutton == 3
                                ? ElevatedButton.styleFrom(
                                    backgroundColor:
                                        constants.colors['primary']![600],
                                    fixedSize:
                                        Size(largeur * 0.27, hauteur * 0.07),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    elevation: 0,
                                  )
                                : ElevatedButton.styleFrom(
                                    backgroundColor: constants
                                        .colors['background']!['light'],
                                    fixedSize:
                                        Size(largeur * 0.27, hauteur * 0.07),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    elevation: 0,
                                  ),
                            child: AutoSizeText('DAY 3',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: constants.colors['neutral']![900]),
                                maxLines: 1))
                      ],
                    )
                  ]),
            ),
            TaskList(listTask: taskList),
          ],
        ),
      ),
    );
  }
}
