import 'package:fee_bee/widget/common_widget.dart';
import 'package:fee_bee/widget/student_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StudentList extends StatelessWidget {
  const StudentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0.h),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25.r),
          ),
          child: AppBar(
            automaticallyImplyLeading: false,
            title: customText("Students",fontSize: 24),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.add),iconSize: 35)
            ],
            elevation: 4,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                studentListContainer("Bijooy Raju", "III", "Pending"),
                studentListContainer("Sreehari", "III", "Pending"),
                studentListContainer("SathyaJith", "III", "Pending"),
                studentListContainer("Thoufeeq", "III", "Pending"),
                studentListContainer("Prince Biju", "III", "Pending"),
                studentListContainer("Cejil", "I", "Pending"),
              ],
            )
          ]
        )
      )
    );
  }
}
