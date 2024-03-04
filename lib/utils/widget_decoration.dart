
import 'package:flutter/material.dart';

class WidgetDecorationUtils{
  static BoxDecoration decoration({Color? borderColor,bool? borderEnabled,double? borderRadius=12,Color? boxColor=Colors.white,}){
    return BoxDecoration(
      
      color: boxColor,
      borderRadius: BorderRadius.all(Radius.circular(borderRadius!)),
      border: borderEnabled!=null ? Border.all(
        color: borderColor ?? Colors.black
      ) : null,
    );
  }
}