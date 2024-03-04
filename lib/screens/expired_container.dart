import 'package:flutter/material.dart';
import 'package:tab_bar_custom_painter/widgets/notched_card.dart';
import 'package:tab_bar_custom_painter/widgets/package_content.dart';


class ExpiredContainer extends StatelessWidget {
  const ExpiredContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16)),
          color:  Color.fromARGB(255, 195, 210, 196),
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [              
              Customcards(
                shapeColor: Colors.grey,
                circleColor: Colors.grey,
                arrowColor: Colors.white,
                child: PackageContent(
                  backGroundColor: Color.fromARGB(255, 99, 99, 99),
                  progressColor: Color.fromARGB(255, 99, 99, 99),
                )),
                SizedBox(
              height: 20,
            ),
              Customcards(
                shapeColor: Colors.grey,
                circleColor: Colors.grey,
                arrowColor: Colors.white,
                child: PackageContent(
                  backGroundColor: Color.fromARGB(255, 99, 99, 99),
                  progressColor: Color.fromARGB(255, 99, 99, 99),
                )),
            ],
          ),
        ),
      );
  }
}