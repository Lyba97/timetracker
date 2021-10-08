import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:timetracker/designSystem/colors.dart';
import 'package:timetracker/designSystem/text_styles.dart';
import 'package:timetracker/models/task_model.dart';
import 'dart:math' as math;

class TaskCard extends StatelessWidget {
  final TaskModel task;
  const TaskCard({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xffFAFAFF),
      ),
      child: Row(
        children: [
          Container(
              padding: const EdgeInsets.all(10),
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                  color: Color(task.color),
                  borderRadius: BorderRadius.circular(30)),
              child: SvgPicture.asset(
                task.img,
              )),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        task.taskTitle,
                        style: regular14.apply(color: Colors.black),
                      ),
                    ),
                    Text(
                      task.time,
                      style: medium12.apply(color: gray2),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ...task.tags.map(
                          (e) {
                            double v = math.Random().nextDouble() * 0.2;
                            print(v);
                            Color tempColor = Color((v * 0xFFFFFF).toInt());
                            return Container(
                              margin: const EdgeInsets.only(right: 8),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: tempColor.withOpacity(0.1)),
                              child: Text(
                                e,
                                style: medium12.apply(
                                    color: tempColor.withOpacity(1.0)),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                    Container(
                        padding: const EdgeInsets.all(3),
                        height: 38,
                        width: 38,
                        child: Icon(Icons.play_arrow_rounded,
                            size: 30, color: gray3))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
