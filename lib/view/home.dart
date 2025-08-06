import 'package:fee_bee/widget/common_widget.dart';
import 'package:fee_bee/widget/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F5F8),
      body: SafeArea(
        child:ListView(
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: customText("Hi, Bijoy Raju",fontSize: 24),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: customText("Good Morning",color: Color(0xFF64748B))
                  ),
                  SizedBox(height: 20.h),
                  // DashBoard
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      dashBoardContainer("Pending", "₹ 500", "This month pending"),
                      SizedBox(width: 10.w),
                      dashBoardContainer("Income", "₹ 1000", "This month income"),
                    ],
                    
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      dashBoardContainer("", "100", "Students",fontSize: 22),
                      SizedBox(width: 10.w),
                      dashBoardContainer("", "2", "Branches",fontSize: 22),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: customText("Branches",fontSize: 24),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: branchesContainer("Aluva Branch", "55", "100000",Color(0xFF5E91E6)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: branchesContainer("Kochi Branch", "45", "7000",Color(0xFF5E91E6)),
                  ),
                  
                  // NEW ADMISSION

                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: customText("New Admissions",fontSize: 24),
                  ),
                  Padding(padding: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        studentContainer('asset/images/student_image.jpg', "Bijoy Raju"),
                        SizedBox(width: 10),
                        studentContainer('asset/images/student_image.jpg', "Sreehari"),
                        SizedBox(width: 10),
                        studentContainer('asset/images/student_image.jpg', "Prince Biju"),
                      ],
                    ),
                  ),),


                  // PENDING FEES

                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: customText("Pending Fees",fontSize: 24),
                  ),
                  Padding(padding: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        studentContainer('asset/images/student_image.jpg', "Bijoy Raju",colors: Colors.red),
                        SizedBox(width: 10),
                        studentContainer('asset/images/student_image.jpg', "Sreehari",colors:  Colors.red),
                        SizedBox(width: 10),
                        studentContainer('asset/images/student_image.jpg', "Prince Biju",colors: Colors.red),
                      ],
                    ),
                  ),)
                ],
              ),
          ],
        ),
      ),
    );
  }
}