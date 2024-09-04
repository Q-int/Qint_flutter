import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:qintproject/viewModel/question_view_model.dart';

import '../../model/question.dart';
import '../MainPage/home_screen.dart';
import '../MainPage/mypage_screen.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final PageController _pageController = PageController(initialPage: 0);

  int _count = 1;
  final int _problemId = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<QuestionViewModel>(
        builder: (context, provider, child) {
          List<Question> questionList = provider.questionList.questions!;
          if (questionList.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            itemCount: questionList.length,
            itemBuilder: (context, index) {
              return Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 65.h,
                    ),
                    Container(
                      padding: EdgeInsets.all(8.w),
                      width: 353.w,
                      height: 215.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: const Color(0xffE4F9F3),
                      ),
                      child: Center(
                        child: Text(
                          questionList[index].contents!,
                          style: TextStyle(fontSize: 25.sp),
                        ),
                      ),
                    ),
                    Text(
                      "$_count/15",
                      style: TextStyle(fontSize: 20.sp),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    SizedBox(
                      height: 330.h,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: questionList[0].options!.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                width: 353.w,
                                height: 75.h,
                                decoration: BoxDecoration(
                                  color: const Color(0xffE4F9F3),
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      questionList[index].options![_problemId].text!,
                                      style: TextStyle(fontSize: 18.sp),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Padding(
                      padding: EdgeInsets.all(30.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            iconSize: 35.h,
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              );
                            },
                            icon: const Icon(Icons.home),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff265CFF),
                              minimumSize: Size(105.w, 44.h),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                            onPressed: () {
                              if (_count != 15) {
                                setState(() {
                                  _count++;
                                });
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text("총 문제 수 : 15"),
                                      content: SizedBox(
                                        height: 60.h,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "정답 : 10",
                                              style: TextStyle(fontSize: 17.w),
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text(
                                              "오답 : 5",
                                              style: TextStyle(fontSize: 17.w),
                                            ),
                                          ],
                                        ),
                                      ),
                                      actions: [
                                        Center(
                                          child: Column(
                                            children: [
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xff00EDA6),
                                                  minimumSize:
                                                      Size(222.w, 45.h),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  Navigator.pushReplacement(
                                                    context,
                                                    CupertinoPageRoute(
                                                      builder: (context) =>
                                                          const HomeScreen(),
                                                    ),
                                                  );
                                                },
                                                child: const Text(
                                                  "메인 페이지로 이동",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xff265CFF),
                                                  minimumSize:
                                                      Size(222.w, 45.h),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  Navigator.pushReplacement(
                                                    context,
                                                    CupertinoPageRoute(
                                                      builder: (context) =>
                                                          const MypageScreen(),
                                                    ),
                                                  );
                                                },
                                                child: const Text(
                                                  "마이 페이지로 이동",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
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
              );
            },
          );
        },
      ),
    );
  }
}
