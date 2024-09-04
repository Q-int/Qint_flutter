import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qintproject/view/MainPage/widget/my_page_app_bar.dart';

import '../LoginPage/login_screen.dart';
import '../ProblemPage/wronganswer_screen.dart';

class MypageScreen extends StatefulWidget {
  const MypageScreen({super.key});

  @override
  State<MypageScreen> createState() => _MypageScreenState();
}

class _MypageScreenState extends State<MypageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE4F9F3),
      appBar: const MyPageAppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 25.h,
            ),
            Stack(
              children: [
                Container(
                  width: 344.w,
                  height: 357.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "나의 정답률",
                      style: TextStyle(fontSize: 27.w),
                    ),
                  ),
                ),
                Positioned(
                  top: 75.h,
                  left: 30.w,
                  child: Container(
                    width: 17.w,
                    height: 17.h,
                    color: const Color(0xff68F665),
                  ),
                ),
                Positioned(
                  top: 71.h,
                  left: 53.w,
                  child: const Text(
                    "정답",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Positioned(
                  top: 100.h,
                  left: 30.w,
                  child: Container(
                    width: 17,
                    height: 17,
                    color: const Color(0xffFF3951),
                  ),
                ),
                Positioned(
                  top: 96.h,
                  left: 53.w,
                  child: const Text(
                    "오답",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Positioned(
                  top: 120.h,
                  right: 30.w,
                  child: SizedBox(
                    width: 250.w,
                    height: 250.h,
                    child: PieChart(
                      PieChartData(
                        sections: getSections(),
                        centerSpaceRadius: 50,
                        borderData: FlBorderData(
                          show: false,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: Size(345.w, 80.h),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WrongAnswerScreen(),
                      ));
                },
                child: const Text(
                  "틀린 문제 다시보기 ↻",
                  style: TextStyle(fontSize: 28),
                )),
            SizedBox(
              height: 180.h,
            ),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("오류 신고 이메일: 1234@dsm.hs.kr"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text("로그아웃"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> getSections() {
    return [
      PieChartSectionData(
        color: const Color(0xff68F665),
        value: 50,
        title: '75%',
        radius: 65,
      ),
      PieChartSectionData(
        color: Colors.red,
        value: 20,
        title: '25%',
        radius: 65,
      ),
    ];
  }
}
