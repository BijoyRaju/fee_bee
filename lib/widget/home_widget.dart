import 'package:fee_bee/widget/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget dashBoardContainer(String? heading, String title,String subTitle,{double fontSize = 14}){
  return Container(
    height: 120.h,
    width: 170.w,
    padding: EdgeInsets.all(16.w),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 8.r,
          offset: Offset(0, 4),
        )
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (heading != null)
        customText(heading,color: Color(0xFF64748B),fontSize: 16.sp),
        customText(title,color: Color(0xFF4178D4),fontSize: 20.sp),
        customText(subTitle,color: Color(0xFF64748B),fontSize: fontSize.sp)
      ],
    ),
  );
}