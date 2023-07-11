import 'package:financebanking/signin.dart';
import 'package:flutter/material.dart';
class Verified extends StatefulWidget {
  const Verified({Key? key}) : super(key: key);

  @override
  State<Verified> createState() => _VerifiedState();
}

class _VerifiedState extends State<Verified> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5771F9),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 18,right: 17),
            child: Column(
              children: [
                Image.asset("images/Illustration.png"),
                SizedBox(
                  height: 23,
                ),
                Text("Welcome Mickey!",
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffffffff)
                  ),
                ),
                SizedBox(
                  height: 23,
                ),
                Text("It seems everything went well and your",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffffffff)
                  ),
                ),
                Text(" app is ready to work with you",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffffffff)
                  ),
                ),
                SizedBox(
                  height: 39,
                ),
                SizedBox(
                  height: 56,
                  width: 185,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          SignIn()));
                    },
                    child: Text("Get Started ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff151940),
                        )),),
                )
              ],
            ),
          )
      ),
    );
  }
}
