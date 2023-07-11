import 'package:financebanking/invitefriends.dart';
import 'package:flutter/material.dart';
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 34,right: 34),
        child: Column(
          children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 74,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 16,
                  width: 15,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        backgroundColor: Color(0xffffffff),
                      ),
                      onPressed: (){
                      },

                      child: const Icon(Icons.arrow_back,color: Color(0xff314BCE),)
                  ),
                ),
              ],
            ),
          ],
          ),
            SizedBox(
              height: 100,
            ),
            Text("Forgot Password",
            style: TextStyle(
              fontSize: 44,
              fontWeight: FontWeight.w400,
            ),
            ),
            SizedBox(
              height: 17,
            ),
            Row(
              children: [
                Text("Please enter your",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                ),
                Text("email address or",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text("phone number ",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
                ),
                Text("to reset your password",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffF5F6FA),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 13),
                  hintText: "Enter Email Address ",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7F8192),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 64,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff5771F9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                      InviteFriends()));
                },
                child: Text("Send",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFFFFFF),
                    )),),
            ),
          ],
        ),
      ),
    );
  }
}
