import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'comment_screen.dart';

import '../MainPage/home_screen.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  int _count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 65.h,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              width: 353.w,
              height: 215.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffE4F9F3),
              ),
              child: const Center(
                child: Text(
                  "문제",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            Text(
              "$_count/15",
              style: const TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              width: 353.w,
              height: 75.h,
              decoration: BoxDecoration(
                color: const Color(0xffE4F9F3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                  child: Text(
                "답 1",
                style: TextStyle(fontSize: 20),
              )),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 353.w,
              height: 75.h,
              decoration: BoxDecoration(
                color: const Color(0xffE4F9F3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                  child: Text(
                "답 2",
                style: TextStyle(fontSize: 20),
              )),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 353.w,
              height: 75.h,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffFF3951), width: 3),
                color: const Color(0xffE4F9F3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                  child: Text(
                "답 3",
                style: TextStyle(fontSize: 20),
              )),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 353.w,
              height: 75.h,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff68F665), width: 3),
                color: const Color(0xffE4F9F3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  "답 4",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    iconSize: 35.h,
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ));
                    },
                    icon: const Icon(Icons.home),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff00EDA6),
                          minimumSize: Size(67.w, 44.h),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const CommentScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "해설",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 10.h,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff265CFF),
                          minimumSize: Size(110.w, 44.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          if (_count == 15) {

                          } else {
                            _count++;
                            Navigator.pop(context);
                          }
                        },
                        child: const Text(
                          "다음 문제",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
