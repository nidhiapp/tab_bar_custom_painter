import 'package:flutter/material.dart';
import 'package:tab_bar_custom_painter/widgets/notched_card.dart';
import 'package:tab_bar_custom_painter/widgets/package_content.dart';

class ActiveContainer extends StatelessWidget {
  const ActiveContainer({super.key});

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
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Customcards(shapeColor: Color.fromARGB(255, 7, 6, 65), circleColor: Color.fromARGB(255, 7, 6, 65), arrowColor: Colors.white, child: PackageContent(backGroundColor: Colors.grey,progressColor: Colors.blue,isAttention: true,)),
            SizedBox(
              height: 20,
            ),
            Customcards(shapeColor: Color.fromARGB(255, 241, 27, 12), circleColor: Color.fromARGB(255, 241, 27, 12), arrowColor: Colors.white, child: PackageContent(backGroundColor: Color.fromARGB(17, 74, 24, 20),progressColor: Colors.white,)),
          ],
        ),
        // ListView.builder(
          //   itemCount: 5,
          //   itemBuilder: (context,index){
          //     return ListTile(title: Text('$index'),tileColor: Colors.amber,);
          // }),
      ),
    );
  }
}
