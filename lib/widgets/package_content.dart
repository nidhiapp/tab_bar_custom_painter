import 'package:flutter/material.dart';
import 'package:tab_bar_custom_painter/utils/app_colors.dart';
import 'package:tab_bar_custom_painter/utils/linear_progress.dart';
import 'package:tab_bar_custom_painter/utils/widget_decoration.dart';

import '../utils/custom_textstyle.dart';

class PackageContent extends StatefulWidget {
  final String packageName;
  final String attentionText;
  final String remainingText;
  final double progressValue;
  final String progressIndicatorText;
  final String renewalStatusText;
  final String esimText;
  final String expiryDayText;
  final String expiryDateText;
  final double secondProgressValue;
  final String secondProgressIndicatorText;
  final Color progressColor;
  final Color backGroundColor;
  // final CustomLinearProgressIndicator customLinearProgressIndicator;
  final String autoRenewText;
  final bool isRenewnalStatusOn;
  final bool isAttention;

  const PackageContent({
    super.key,
    this.isAttention=false,
    this.packageName = "Tanzania Package",
    this.attentionText = "ATTENTION",
    this.remainingText = "6GBs of 10GBs remaining",
    this.esimText = "Adam’s eSIM",
    this.expiryDayText = "Expires in 24 days",
    this.expiryDateText = "Expires on 30/11/2023",
    this.progressValue = 0.3,
    this.progressIndicatorText = "60% remaining",
   this.renewalStatusText="ON",
   this.isRenewnalStatusOn=true,
   this.progressColor = Colors.white,
      this.backGroundColor=Colors.white,
    // required this.customLinearProgressIndicator,
    this.secondProgressValue=0.5,
     this.secondProgressIndicatorText="Expires in 24 days",
   this.autoRenewText="Auto-renewal",
  });

  @override
  State<PackageContent> createState() => _PackageContentState();
}

class _PackageContentState extends State<PackageContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.packageName,
                style: CustomTextStyle.interNormal(22, AppColors.whiteColor),
              ),
              // hSpace(12),
              SizedBox(width: 12,),
              widget.isAttention? Container(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                decoration: WidgetDecorationUtils.decoration(
                  borderRadius: 6,
                  boxColor: AppColors.darkRedColor,
                ),
                child: Text(
                  widget.attentionText,
                  style: CustomTextStyle.interNormal(11, AppColors.whiteColor),
                ),
              ):SizedBox()
            ],
          ),
          SizedBox(height: 25),
          Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomLinearProgressIndicator(
                      backgroundColor: widget.backGroundColor,
                      value: widget.progressValue,
                      minHeight: 8,
                      borderRadius: BorderRadius.circular(8),
                      progressColor: widget.progressColor,
                    ),
                    Text(
                      widget.remainingText,
                      style: CustomTextStyle.interSemiBold(
                          14, AppColors.whiteColor),
                    ),
                    Text(
                      widget.progressIndicatorText,
                      style: CustomTextStyle.interNormal(12, AppColors.gray200),
                    ),
                  ],
                ),
              ),
              // hSpace(27),
              SizedBox(width: 27,),
              Padding(
                padding: const EdgeInsets.only(right:10.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "AUTO-RENEWAL",
                      style: CustomTextStyle.interNormal(12, AppColors.gray200),
                    ),
                   SizedBox(height: 5,),
                   widget.isRenewnalStatusOn? Text(
                      widget.renewalStatusText,
                      style:
                          CustomTextStyle.interMedium(16, AppColors.whiteColor),
                    ): Text(
                    "OFF",
                      style:
                          CustomTextStyle.interMedium(16, AppColors.whiteColor),
                    )
                  ],
                ),
              )
            ],
          ),
            SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomLinearProgressIndicator(
                      backgroundColor: widget.backGroundColor,
                      value: widget.secondProgressValue,
                      minHeight: 8,
                      borderRadius: BorderRadius.circular(8),
                      progressColor: widget.progressColor,
                    ),

                 
                    Text(
                      widget.expiryDayText,
                      style: CustomTextStyle.interSemiBold(
                          14, AppColors.whiteColor),
                    ),
                 
                    Text(
                      widget.expiryDateText,
                      style: CustomTextStyle.interNormal(12, AppColors.gray200),
                    ),
                  ],
                ),
              ),
              // hSpace(8),
              SizedBox(width: 8,),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                child: Row(
                  children: [
                    // Image.asset(
                    //   "assets/SIM Cards.png",
                    //   height: 25,
                    //   width: 25,
                    // ),
                    // hSpace(6),
                    SizedBox(width: 6,),
                    Text(widget.esimText,style: CustomTextStyle.interMedium(12, AppColors.backgroundImageColor),),
                  ],
                ),
                decoration: WidgetDecorationUtils.decoration(
                  borderRadius: 18,
                  boxColor: AppColors.whiteColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
