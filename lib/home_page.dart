import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_flutter/core/widgets/common_widgets.dart';
import 'package:responsive_flutter/theme.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  var full_name_controller = TextEditingController();
  var email_controller = TextEditingController();
  var password_controller = TextEditingController();
  var re_password_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlankSpace(h: 52.h),
                Text(
                  "Sign Up to Masterminds",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp,
                    color: darkTextColor,
                  ),
                ),
                BlankSpace(h: 4.h),
                RichText(
                  text: TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: lightTextColor),
                    children: const <TextSpan>[
                      TextSpan(
                        text: ' Login',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: purpleColor,
                        ),
                      ),
                    ],
                  ),
                ),
                BlankSpace(h: 24.h),
                CustomTextField(hint: "Full Name",isPassword: false, controller: full_name_controller),
                BlankSpace(h: 16.h),
                CustomTextField(hint: "Email",isPassword: false, controller: email_controller),
                BlankSpace(h: 16.h),
                CustomTextField(hint: "Password",isPassword: true, controller: password_controller),
                BlankSpace(h: 16.h),
                CustomTextField(hint: "Confirm Password",isPassword: true,controller: re_password_controller),
                BlankSpace(h: 16.h),
                const CustomButton(
                    side: false,
                    fColor: Colors.white,
                    bColor: purpleColor,
                    text: "Register",
                    imgUrl: null),
                BlankSpace(h: 24.h),
                Row(
                  children: [
                    Expanded(child: Divider(color: borderColor,thickness: 1.h,indent: 10.w,)),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      "Or sign up via",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: lightTextColor,
                      ),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Expanded(child: Divider(color: borderColor,thickness: 1.h,endIndent: 10.w,)),
                  ],
                ),
                BlankSpace(h: 16.h),
                const CustomButton(
                  side: true,
                  fColor: Colors.black87,
                  bColor: Colors.white,
                  text: "Google",
                  imgUrl: 'assets/images/google_icon.png',
                ),
                BlankSpace(h: 16.h),
                RichText(
                  text: TextSpan(
                    text: 'By sign up to Masterminds you are agree with our ',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: lightTextColor),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'terms and conditions',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: purpleColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
