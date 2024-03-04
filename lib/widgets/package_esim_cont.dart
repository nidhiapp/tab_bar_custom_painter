import 'package:flutter/material.dart';

class PackageEsimContainer extends StatelessWidget {
  final Color boxcolor;
  final String boxtext;
  final Color textcolor;
  const PackageEsimContainer({super.key, required this.boxcolor, required this.boxtext, required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
                // width: MediaQuery.of(context).size.width / 3,
                height: 43,
                decoration: BoxDecoration(
                  color: boxcolor,
                  borderRadius: BorderRadius.circular(40)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:17.0),
                  child: Center(child: Text(boxtext,style: TextStyle(color: textcolor,fontSize: 16),),),
                ),
              );
  }
}