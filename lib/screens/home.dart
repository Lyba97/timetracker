import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:timetracker/designSystem/text_styles.dart';
import 'package:timetracker/models/task_model.dart';
import 'package:timetracker/widgets/task_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            ListTile(
              title: const Text('Task'),
              trailing: SvgPicture.asset('assets/more.svg'),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
              //height: 120,
              decoration: BoxDecoration(
                  color: const Color(0xffFAFAFF),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      '00:32:10',
                      style: bold32,
                    ),
                    trailing: const Icon(
                      CupertinoIcons.forward,
                      color: Colors.black,
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    minVerticalPadding: 0,
                    title: Text(
                      'Rasion project',
                      style: medium16,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 32),
            ListTile(
              title: Text(
                'Today',
                style: regular20,
              ),
              trailing: Text(
                'See all',
                style: regular14,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...tasks.map((e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TaskCard(task: e),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
