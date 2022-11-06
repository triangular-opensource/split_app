import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:split_app/custom/CustomButton.dart';
import 'package:split_app/custom/CustomTextField.dart';
import 'package:split_app/utils/Global.dart';
import 'package:split_app/utils/StringValues.dart';

class PhoneAuth extends StatefulWidget {
  static String routeNamed = StringValues.phoneAuth;
  const PhoneAuth({super.key});

  @override
  State<PhoneAuth> createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {
  String phoneNumber = "";
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (BuildContext context, Widget? child) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 64,
                ),
                Text(
                  "Enter Phone Number",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  child: CustomTextField(
                    hintText: "",
                    hintTextSize: 16,
                    initialValue: '',
                    onChanged: (value) {
                      phoneNumber = value!;
                    },
                    onSaved: () {},
                    validator: () {},
                    labelText: '+91',
                  ),
                ),
                CustomButton(
                    postIcon: Icons.arrow_forward_ios,
                    visiblepostIcon: false,
                    labelText: "Send Otp",
                    onTap: () {
                      authService.sendSms(phoneNumber: "+91"+phoneNumber);
                    },
                    containerColor: Colors.orange)
              ],
            ),
          ),
        ),
      );
    });
  }
}
