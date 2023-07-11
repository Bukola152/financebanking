import 'package:financebanking/verified.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class VerifyCode extends StatefulWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  State<VerifyCode> createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 41,right: 41),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 73,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_back,color: Colors.black,),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Text("Verify Code",
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff151940)
                ),
                ),
                 SizedBox(
                   height: 11,
                 ),
                 Row(
                   children: [
                     Text("Check your SMS inbox, we have sent",
                style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff151940)
                ),
                ),
                   ],
                 ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("you the code at ",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff151940)
                      ),
                    ),
                    Text("+0 000 000 0000. ",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff151940)
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 94,
                ),
                PinCodeTextField(
                  keyboardType: TextInputType.number,
                  appContext: context,
                  length: 4,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    activeColor: Color(0xff5771F9),
                    inactiveColor:Color(0xff5771F9),
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                  ),
                  animationDuration: Duration(milliseconds: 300),
                  onCompleted: (v) {
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Verified()));
                     print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                    setState(() {
                    });
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  },
                ),
                Row(
                  children: [
                    Text("Didn’t receive a code?",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff486484)
                    ),
                    ),
                    Text("Resend Code",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff5771F9)
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
