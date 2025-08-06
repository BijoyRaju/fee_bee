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

Widget branchesContainer(String branchName, String totalNo, String totalRevenue,Color colors){
  return Container(
    height: 90.h,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.r),
      color: colors,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(branchName,color: Colors.white,fontSize: 16.sp),
                customText("Total Admission : $totalNo",color: Colors.white,fontSize: 16.sp),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customText("₹ $totalRevenue",color: Colors.white,fontSize: 16.sp)
            ],
          )
        ],
      ),
    ),
  );
}

Widget studentContainer(String imagePath,String studentName,{Color colors = const Color(0xFFD8E6FF)}){
  return Container(
    height: 144.h,
    width: 156.w,
    decoration: BoxDecoration(
      color: colors,
      borderRadius: BorderRadius.circular(20),
    ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.r,
            backgroundImage: AssetImage(imagePath),
          ),
          SizedBox(height: 10.h),
          customText(studentName),
        ],
      ),
    );
}