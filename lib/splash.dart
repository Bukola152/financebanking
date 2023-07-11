import 'package:flutter/material.dart';

import 'onboarding.dart';
class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5771F9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 40,
            left: 40,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 216.81,
              ),
              Image.asset("images/Vector.png"),
              SizedBox(
                height: 24.21,
              ),
              Text("Wallet",
              style: TextStyle(
                fontSize: 65,
                fontWeight: FontWeight.w600,
                color: Color(0xffffffff),
              )),
              SizedBox(
                height: 3,
              ),
              Text("Money Transfer, Wallet & Finance UI Kit",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xffffffff),
              )),
              SizedBox(
                height: 78,
              ),
              // Container(
              //   height: 56,
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8),
              //     color: Color(0xffffffff),
              //   ),
              //   child: Center(
              //     child: Text("Get Started Now",
              //         style: TextStyle(
              //           fontSize: 18,
              //           fontWeight: FontWeight.w700,
              //           color: Color(0xff5771F9),
              //         )),
              //   ),
              // )
              SizedBox(
                height: 56,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffffffff),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoarding()));
                  },
                    child: Text("Get Started Now",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff5771F9),
                        )),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
