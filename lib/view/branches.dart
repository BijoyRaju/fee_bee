import 'package:fee_bee/widget/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Branches extends StatelessWidget {
  const Branches({super.key});

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
            title: customText("Branches",fontSize: 24),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.add),iconSize: 35)
            ],
            elevation: 4,
          ),
        ),
      ),
      body: null,
    );
  }
}