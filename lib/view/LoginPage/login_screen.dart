import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qintproject/view/LoginPage/signup_screen.dart';

import '../MainPage/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailController = TextEditingController();
  late TextEditingController _passwordController = TextEditingController();

  bool _obscureText = true;

  bool _idBackColor = true;
  final FocusNode _focusNode = FocusNode();

  bool _pwBackColor = true;
  final FocusNode _focusNode2 = FocusNode();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _focusNode.addListener(_changeIdFocus);
    _focusNode2.addListener(_changePwFocus);
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _focusNode.removeListener(_changeIdFocus);
    _focusNode2.removeListener(_changePwFocus);
    _focusNode.dispose();
    _focusNode2.dispose();
  }

  void _changeIdFocus() {
    if (_focusNode.hasFocus) {
      setState(() {
        _idBackColor = false;
      });
    } else {
      _idBackColor = true;
    }
  }

  void _changePwFocus() {
    if (_focusNode2.hasFocus) {
      setState(() {
        _pwBackColor = false;
      });
    } else {
      _pwBackColor = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 70.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "로그인",
                style:
                    TextStyle(color: const Color(0xff00EDA6), fontSize: 37.sp),
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          SizedBox(
            width: 345.w,
            height: 52.h,
            child: TextFormField(
              focusNode: _focusNode,
              decoration: InputDecoration(
                border: InputBorder.none,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelText: "이메일",
                hintText: "이메일",
                filled: true,
                fillColor:
                    _idBackColor ? const Color(0xffF4F4F4) : Colors.white,
                labelStyle: const TextStyle(
                  color: Color(0xffB4B4B4),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: const Color(0xffE0E0E0),
                  width: 2.w,
                )),
              ),
              keyboardType: TextInputType.emailAddress,
              controller: _emailController,
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Container(
            width: 345.w,
            height: 76.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: TextFormField(
              obscureText: _obscureText,
              focusNode: _focusNode2,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                suffixIcon: IconButton(
                  icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(
                      () {
                        _obscureText = !_obscureText;
                      },
                    );
                  },
                ),
                border: InputBorder.none,
                labelText: "비밀번호",
                hintText: "비밀번호",
                filled: true,
                fillColor:
                    _pwBackColor ? const Color(0xffF4F4F4) : Colors.white,
                focusColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color(0xffE0E0E0),
                    width: 2.w,
                  ),
                ),
                labelStyle: const TextStyle(
                  color: Color(0xffB4B4B4),
                ),
              ),
              controller: _passwordController,
            ),
          ),
          SizedBox(
            height: 381.h,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff00EDA6),
              minimumSize: Size(345.w, 52.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                CupertinoPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            child: Text(
              "로그인",
              style: TextStyle(
                fontSize: 16.sp,
                color: const Color(0xffFFFFFF),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffE4F9F3),
                minimumSize: Size(345.w, 52.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const SignupScreen(),
                    ));
              },
              child: Text(
                "회원가입하러 가기",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: const Color(0xff00EDA6),
                ),
              )),
        ],
      ),
    );
  }
}
