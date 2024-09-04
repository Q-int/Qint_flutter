import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late TextEditingController _signEmController = TextEditingController();
  late TextEditingController _checkController = TextEditingController();
  late TextEditingController _signPwController = TextEditingController();
  late TextEditingController _checkPwController = TextEditingController();
  bool _obscureText = true;
  bool _chObscureText = true;

  bool _idBackColor = true;
  bool _certificationNumber = true;
  bool _passwordBackColor = true;
  bool _checkPasswordbackColor = true;

  final FocusNode _idFocusNode = FocusNode();
  final FocusNode _certificationFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _checkPasswordFocusNode = FocusNode();

  final RegExp emailRegexp = RegExp(r'^.+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*$');
  final RegExp pwRegexp = RegExp(r'^(?=.*[A-Za-z])(?=.*\\d)(?=.*[!@#$%^&*()\\-_=+<>?]).{8,64}$');

  final _formKey = GlobalKey<FormState>();
  // String _id = "";
  String _pw = "";
  String _chPw = "";

  @override
  void initState() {
    super.initState();
    _signEmController = TextEditingController();
    _checkController = TextEditingController();
    _signPwController = TextEditingController();
    _checkPwController = TextEditingController();

    _idFocusNode.addListener(_focusNode1);
    _certificationFocusNode.addListener(_focusNode2);
    _passwordFocusNode.addListener(_focusNode3);
    _checkPasswordFocusNode.addListener(_focusNode4);
  }

  @override
  void dispose() {
    super.dispose();
    _signEmController.dispose();
    _checkController.dispose();
    _signPwController.dispose();
    _checkPwController.dispose();

    _idFocusNode.removeListener(_focusNode1);
    _certificationFocusNode.removeListener(_focusNode2);
    _passwordFocusNode.removeListener(_focusNode3);
    _checkPasswordFocusNode.removeListener(_focusNode4);

    _idFocusNode.dispose();
    _certificationFocusNode.dispose();
    _passwordFocusNode.dispose();
    _checkPasswordFocusNode.dispose();
  }

  void _focusNode1() {
    if (_idFocusNode.hasFocus) {
      setState(() {
        _idBackColor = false;
      });
    } else {
      _idBackColor = true;
    }
  }

  void _focusNode2() {
    if (_certificationFocusNode.hasFocus) {
      setState(() {
        _certificationNumber = false;
      });
    } else {
      _certificationNumber = true;
    }
  }

  void _focusNode3() {
    if (_passwordFocusNode.hasFocus) {
      setState(() {
        _passwordBackColor = false;
      });
    } else {
      _passwordBackColor = true;
    }
  }

  void _focusNode4() {
    if (_checkPasswordFocusNode.hasFocus) {
      setState(() {
        _checkPasswordbackColor = false;
      });
    } else {
      _checkPasswordbackColor = true;
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
                "회원가입",
                style:
                    TextStyle(color: const Color(0xff00EDA6), fontSize: 37.w),
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
              autovalidateMode: AutovalidateMode.always,
              key: _formKey,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return null;
                } else if (!emailRegexp.hasMatch(value)) {
                  return "이메일 형식이 일치하지 않습니다.";
                }
                return null;
              },
              focusNode: _idFocusNode,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                border: InputBorder.none,
                labelText: "이메일",
                hintText: "이메일",
                errorStyle: const TextStyle(
                  height: 0,
                ),
                filled: true,
                fillColor: _idBackColor ? const Color(0xffF4F4F4) : Colors.white,
                labelStyle: const TextStyle(
                  color: Color(0xffB4B4B4),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffE0E0E0),
                    width: 2,
                  ),
                ),
                focusedErrorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2,
                  )
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              controller: _signEmController,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff00EDA6),
                    minimumSize: Size(65.w, 40.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  onPressed: () {
                    debugPrint("인증코드 발송");
                  },
                  child: Text(
                    "Send",
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: const Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 345.w,
            height: 52.h,
            child: TextFormField(
              focusNode: _certificationFocusNode,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                border: InputBorder.none,
                labelText: "인증번호",
                hintText: "인증번호",
                filled: true,
                fillColor: _certificationNumber
                    ? const Color(0xffF4F4F4)
                    : Colors.white,
                labelStyle: const TextStyle(
                  color: Color(0xffB4B4B4),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color(0xffE0E0E0),
                    width: 2.w,
                  ),
                ),
              ),
              controller: _checkController,
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Container(
            width: 345.w,
            height: 65.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.always,
              onSaved: (value){
                _pw = value.toString();
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return null;
                } else if(!pwRegexp.hasMatch(value)){
                  return "영어, 숫자, 특수기호를 모두 한 개 이상 포함한 8~64 문자 사이의 비밀번호";
                } return null;
              },
              focusNode: _passwordFocusNode,
              obscureText: _obscureText,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                suffixIcon: IconButton(
                  icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
                border: InputBorder.none,
                labelText: "비밀번호",
                hintText: "비밀번호",
                filled: true,
                fillColor:
                    _passwordBackColor ? const Color(0xffF4F4F4) : Colors.white,
                labelStyle: const TextStyle(
                  color: Color(0xffB4B4B4),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color(0xffE0E0E0),
                    width: 2.w,
                  ),
                ),
              ),
              controller: _signPwController,
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          SizedBox(
            width: 345.w,
            height: 52.h,
            child: TextFormField(
              focusNode: _checkPasswordFocusNode,
              autovalidateMode: AutovalidateMode.always,
              onSaved: (value){
                _chPw = value.toString();
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return null;
                } else if(!(_pw == _chPw)){
                  return "비밀번호가 일치하지 않습니다.";
                } return null;
              },
              obscureText: _chObscureText,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                suffixIcon: IconButton(
                  icon: Icon(
                      _chObscureText ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _chObscureText = !_chObscureText;
                    });
                  },
                ),
                border: InputBorder.none,
                labelText: "비밀번호 재입력",
                hintText: "비밀번호 재입력",
                filled: true,
                fillColor: _checkPasswordbackColor
                    ? const Color(0xffF4F4F4)
                    : Colors.white,
                labelStyle: const TextStyle(
                  color: Color(0xffB4B4B4),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color(0xffE0E0E0),
                    width: 2.w,
                  ),
                ),
              ),
              controller: _checkPwController,
            ),
          ),
          SizedBox(
            height: 165.h,
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
                  builder: (context) => const LoginScreen(),
                ),
              );
              if(_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            },
            child: const Text(
              "회원가입",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xffFFFFFF),
              ),
            ),
          ),
          SizedBox(
            height: 7.h,
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
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              child: Text(
                "로그인 하러 가기",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: const Color(0xff00EDA6),
                ),
              )),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}