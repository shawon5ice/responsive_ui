import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme.dart';

class CustomTextField extends StatefulWidget {
  final controller;
  final hint;
  final isPassword;

  const CustomTextField({
    Key? key,
    this.controller,
    this.hint,
    this.isPassword,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword?_isObscure:false,
      style: TextStyle(
        fontSize: 14.sp,
        decoration: TextDecoration.none,
      ),
      controller: widget.controller,
      decoration: InputDecoration(
          suffixIcon: widget.isPassword
              ? TextButton(
            style: ButtonStyle(overlayColor: MaterialStateProperty.all(Colors.transparent),),
                  child: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,size: 24.w,),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  })
              : null,
          hintText: widget.hint,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.transparent, width: 0)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.transparent, width: 0)),
          fillColor: textFieldColor,
          filled: true,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
          hintStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400)),
    );
  }
}

class BlankSpace extends StatelessWidget {
  final h;

  const BlankSpace({
    Key? key,
    this.h,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h,
    );
  }
}

class CustomButton extends StatelessWidget {
  final text;
  final imgUrl;
  final fColor;
  final bColor;
  final side;

  const CustomButton({
    Key? key,
    this.text,
    this.imgUrl,
    this.fColor,
    this.bColor,
    this.side,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
          style: ButtonStyle(
            side: MaterialStateProperty.all(
                side ? BorderSide(color: borderColor) : null),
            textStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700)),
            padding:
                MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 14.h)),
            foregroundColor: MaterialStateProperty.all(fColor),
            backgroundColor: MaterialStateProperty.all(bColor),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r), // <-- Radius
              ),
            ),
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (imgUrl != null)
                Image.asset(
                  imgUrl,
                  width: 18.w,
                  height: 18.h,
                ),
              if (imgUrl != null)
                SizedBox(
                  width: 5.w,
                ),
              Text(
                text,
              ),
            ],
          )),
    );
  }
}
