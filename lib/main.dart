import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:qintproject/view/LoginPage/login_screen.dart';
import 'package:qintproject/viewModel/question_view_model.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 853),
      child: ChangeNotifierProvider(
        create: (_)=> QuestionViewModel(),
        child: MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
                surfaceTintColor: Colors.white
            ),
            bottomSheetTheme: const BottomSheetThemeData(
              backgroundColor: Colors.white,
            ),
            fontFamily: 'Pretendard',
          ),
          debugShowCheckedModeBanner: false,
          home: const LoginScreen(),
        ),
      )
    );
  }
}
