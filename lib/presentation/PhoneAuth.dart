import 'package:flutter/material.dart';
import 'package:split_app/custom/CustomButton.dart';
import 'package:split_app/custom/CustomTextField.dart';
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
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 64,
          ),
          const Text(
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
              onTap: () {},
              containerColor: Colors.orange)
        ],
      ),
    );
  }
}
