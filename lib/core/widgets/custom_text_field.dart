import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.onSaved, this.onChange, this.isObscureText, this.suffixIcon, this.backgroundColor, this.prefixIcon});
  final String hintText;

  final void Function(String?)? onSaved;
  final void Function(String)? onChange;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:48.h,
      width: 331.w,
      child: TextFormField(


        onChanged: onChange,
        onSaved: onSaved,
        //maxLines: maxLine,
        decoration: InputDecoration(
          suffixIcon:suffixIcon,
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xff929BAB),fontSize: 14.sp,fontWeight: FontWeight.normal),
          border: borderCustom(),
          enabledBorder:  borderCustom(),
          focusedBorder: borderCustom(Colors.lightBlue.shade100),
          contentPadding: EdgeInsets.only(bottom:45,left:1,),
        ),
        validator: (val){
          if(val?.isEmpty ?? true){
            return 'Field';
          }else{
            return null;
          }

        },


      ),
    );
  }
  OutlineInputBorder borderCustom([Color? color]){
    return OutlineInputBorder(

        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: color ?? Color(0xffB2CCFF),width: 1.5),


    );
  }
}
