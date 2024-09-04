import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../MainPage/home_screen.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(13.w),
          child: Column(
            children: [
              SizedBox(
                height: 65.h,
              ),
              Container(
                width: 353.w,
                height: 215.h,
                decoration: BoxDecoration(
                  color: const Color(0xffE4F9F3),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0.w),
                  child: Center(
                    child: Text(
                      "문제 설명",
                      style: TextStyle(fontSize: 20.sp),
                    ),
                  ),
                ),
              ),
              Text(
                "01/15",
                style: TextStyle(fontSize: 20.sp),
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                width: 353.w,
                height: 75.h,
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: const Color(0xff68F665)),
                  color: const Color(0xffE4F9F3),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Center(
                  child: Text(
                    "맞은 문제",
                    style: TextStyle(fontSize: 20.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                width: 353.w,
                height: 250.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: const Color(0xffE4F9F3),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0.w),
                  child: Text(
                    "해설해설해설해설해설해설해설",
                    style: TextStyle(fontSize: 20.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 29.h,
              ),
              Padding(
                padding: EdgeInsets.all(10.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                        icon: const Icon(Icons.home)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff265CFF),
                        minimumSize: Size(105.w, 44.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      onPressed: () {
                        debugPrint("다음 문제");
                      },
                      child: const Text(
                        "다음 문제",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
