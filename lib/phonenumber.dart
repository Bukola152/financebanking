import 'package:flutter/material.dart';
class PhoneNumber extends StatefulWidget {
  const PhoneNumber({Key? key}) : super(key: key);

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 41,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(
              height: 93,
            ),
            Text("Register",
              style: TextStyle(
                fontSize: 44,
                color: Color(0xff151940),
              ),
            ),
            SizedBox(
              height:58 ,
            ),
            Row(
              children: [
                Text("Please enter",
                style:TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
                ),
                Text(" your phone number ",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff151940),
                ),
                ),
                Text("and ",
                  style:TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
              Row(
                children: [
                  Text("location ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff151940),
                    ),
                  ),
                  Text("so we can verify you.",
                    style:TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 65,
              ),
              Text("Enter your location",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              )
          ],
          ),
        ),
      ),
    );
  }
}
