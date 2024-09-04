import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qintproject/view/MainPage/widget/home_app_bar.dart';

import '../ProblemPage/test_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _backColor1 = true;
  bool _backColor2 = true;
  bool _backColor3 = true;
  bool _backColor4 = true;

  bool _borderColor1 = true;
  bool _borderColor2 = true;
  bool _borderColor3 = true;
  bool _borderColor4 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 27.h,
          ),
          Center(
            child: SizedBox(
              width: 345.w,
              height: 84.h,
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _backColor1 = !_backColor1;
                        _borderColor1 = !_borderColor1;
                      });
                    },
                    child: Container(
                      width: 345.w,
                      height: 84.h,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 3.w,
                            color: _borderColor1
                                ? const Color(0xffE4F9F3)
                                : const Color(0xff00EDA6),
                          ),
                          color: _backColor1
                              ? const Color(0xffE4F9F3)
                              : const Color(0xffC7FFEF),
                          borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Center(
                        child: Text(
                          "프론트엔드",
                          style: TextStyle(
                              color: const Color(0xff00EDA6), fontSize: 20.w),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -17.h,
                    right: 0.w,
                    child: Image.asset(
                      'assets/images/frame/Frame 132.png',
                      width: 150.w,
                      height: 150.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Center(
            child: SizedBox(
              width: 345.w,
              height: 84.h,
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _backColor2 = !_backColor2;
                        _borderColor2 = !_borderColor2;
                      });
                    },
                    child: Container(
                      width: 345.w,
                      height: 84.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 3.w,
                          color: _borderColor2
                              ? const Color(0xffE4F9F3)
                              : const Color(0xff00EDA6),
                        ),
                        color: _backColor2
                            ? const Color(0xffE4F9F3)
                            : const Color(0xffC7FFEF),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Center(
                        child: Text(
                          "벡앤드",
                          style: TextStyle(
                              color: const Color(0xff00EDA6), fontSize: 20.w),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -39.h,
                    left: 0.w,
                    child: Image.asset(
                      'assets/images/frame/Frame 133.png',
                      width: 150.w,
                      height: 150.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Center(
            child: SizedBox(
              width: 345.w,
              height: 84.h,
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _backColor3 = !_backColor3;
                        _borderColor3 = !_borderColor3;
                      });
                    },
                    child: Container(
                      width: 345.w,
                      height: 84.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: _borderColor3
                              ? const Color(0xffE4F9F3)
                              : const Color(0xff00EDA6),
                        ),
                        color: _backColor3
                            ? const Color(0xffE4F9F3)
                            : const Color(0xffC7FFEF),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Center(
                        child: Text(
                          "iOS",
                          style: TextStyle(
                              color: const Color(0xff00EDA6), fontSize: 20.w),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -39.h,
                    right: 0.w,
                    child: Image.asset(
                      'assets/images/frame/Frame 134.png',
                      width: 150.w,
                      height: 150.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Center(
            child: SizedBox(
              width: 345.w,
              height: 84.h,
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _backColor4 = !_backColor4;
                        _borderColor4 = !_borderColor4;
                      });
                    },
                    child: Container(
                      width: 345.w,
                      height: 84.h,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 3.w,
                            color: _borderColor4
                                ? const Color(0xffE4F9F3)
                                : const Color(0xff00EDA6),
                          ),
                          color: _backColor4
                              ? const Color(0xffE4F9F3)
                              : const Color(0xffC7FFEF),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Center(
                        child: Text(
                          "플러터",
                          style: TextStyle(
                            color: const Color(0xff00EDA6),
                            fontSize: 20.w,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -17.h,
                    left: 0.w,
                    child: Image.asset(
                      'assets/images/frame/Frame 135.png',
                      width: 150.w,
                      height: 150.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          (!_backColor1 && !_borderColor1) ||
                  (!_backColor2 && !_borderColor2) ||
                  (!_backColor3 && !_borderColor3) ||
                  (!_backColor4 && !_borderColor4)
              ? Column(
                  children: [
                    SizedBox(
                      height: 217.h,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff00EDA6),
                        minimumSize: Size(345.w, 52.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const TestScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "시작하기",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                )
              : SizedBox(
                  width: 340.w,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "카테고리를 한 개 이상 선택해주세요!",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                )
        ],
      ),
    );
  }
}
