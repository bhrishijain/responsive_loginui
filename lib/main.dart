import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
      designSize: const Size(360, 640),
    );
  }


}

class HomePage extends StatelessWidget {

  final border = Colors.black;

  Widget getTextField({ @required String hint}){
    return  TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Colors.transparent, width: 0),

          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Colors.transparent, width: 0),

          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
          filled: true,
          fillColor: Colors.grey.shade300,
          hintText: hint,
          hintStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400
          )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 52.h,),
              Text('Sign Up MaterMind',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
              ),
              SizedBox(height: 4.h,),
              Wrap(
                children:[
                  Text('Already Have an Account?',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey
                  ),
                ),
                  Text('Login',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue
                    ),
                  ),
          ]
              ),
              SizedBox(height: 24.h,),
              getTextField(hint: 'First Name'),
              SizedBox(height: 16.h,),
              getTextField(hint: 'Email'),
              SizedBox(height: 16.h,),
              getTextField(hint: 'Password'),
              SizedBox(height: 16.h,),
              getTextField(hint: 'Confirm Password'),
              SizedBox(height: 16.h,),
              SizedBox(
                width: double.infinity,
                child: TextButton(onPressed: (){},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 14.h)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700))
                ),
                    child: Text(
                      'Create Account'
                    )),
              ),
              SizedBox(height: 16.w,),
              Row(
                children: [
                  Expanded(child: Divider()),
                  SizedBox(width: 16.w,),
                  Text('Sing up via',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                    ),),
                  SizedBox(width: 16.w,),
                  Expanded(child: Divider()),
                  SizedBox(height: 16.w,),

                ],
              ),
              SizedBox(height: 16.w,),
              SizedBox(
                width: double.infinity,
                child: TextButton(onPressed: (){},
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(BorderSide(color: border)),
                        foregroundColor: MaterialStateProperty.all(Colors.black),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 14.h)),
                        textStyle: MaterialStateProperty.all(TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700))
                    ),
                    child: Text(
                        'Google'
                    )),
              ),
            ]
          ),
        ),
      ),
    );

  }
}




