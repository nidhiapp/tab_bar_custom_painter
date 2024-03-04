import 'package:flutter/material.dart';
import 'package:tab_bar_custom_painter/widgets/notched_card.dart';
import 'package:tab_bar_custom_painter/widgets/package_content.dart';

class QueuedConatiner extends StatelessWidget {
  const QueuedConatiner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16)),
        color:  Color.fromARGB(255, 195, 210, 196),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            
            const Customcards(
                shapeColor: Color.fromARGB(255, 162, 13, 2),
                circleColor: Color.fromARGB(255, 162, 13, 2),
                arrowColor: Colors.white,
                child: PackageContent(
                  backGroundColor: Color.fromARGB(47, 48, 16, 14),
                  progressColor: Colors.white,
                )),
                const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_circle_outline_rounded),
                  SizedBox(
                    width: 8,
                  ),
                  Text('Add new Package')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}