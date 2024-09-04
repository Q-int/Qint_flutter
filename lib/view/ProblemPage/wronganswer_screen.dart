import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qintproject/view/MainPage/mypage_screen.dart';

class WrongAnswerScreen extends StatefulWidget {
  const WrongAnswerScreen({super.key});

  @override
  State<WrongAnswerScreen> createState() => _WrongAnswerScreenState();
}

class _WrongAnswerScreenState extends State<WrongAnswerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 75.h,
            ),
            Container(
              padding: EdgeInsets.all(8.w),
              width: 345.h,
              height: 200.h,
              decoration: BoxDecoration(
                color: const Color(0xffE4F9F3),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Center(
                child: Text(
                  "π를 제대로 기술한 것은?   ",
                  style: TextStyle(fontSize: 24.sp),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 345.w,
              height: 69.h,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: const Color(0xff68F665)),
                color: const Color(0xffE4F9F3),
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Center(
                child: Text(
                  "3.1415926535...",
                  style: TextStyle(fontSize: 24.sp),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 345.w,
              height: 69.h,
              decoration: BoxDecoration(
                border: Border.all(width: 3.w, color: const Color(0xffFF3951)),
                color: const Color(0xffE4F9F3),
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Center(
                child: Text(
                  "3.14259253332...",
                  style: TextStyle(fontSize: 24.sp),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              padding: EdgeInsets.all(13.w),
              width: 345.w,
              height: 250.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: const Color(0xffE4F9F3),
              ),
              child: Text(
                "어쩌구 저쩌구 해서 쨌든 그냥 니가 틀리고 내가 맞음 어쩔팁이",
                style: TextStyle(fontSize: 15.sp),
              ),
            ),
            SizedBox(
              height: 23.h,
            ),
            Padding(
              padding: EdgeInsets.all(33.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      iconSize: 33.sp,
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MypageScreen(),
                            ));
                      },
                      icon: const Icon(Icons.home)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff265CFF),
                      minimumSize: Size(110.w, 44.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                    onPressed: () {
                      debugPrint("다음 문제");
                    },
                    child: Text(
                      "다음 문제",
                      style: TextStyle(fontSize: 17.sp, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
