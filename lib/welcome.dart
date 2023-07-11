import 'package:financebanking/register.dart';
import 'package:flutter/material.dart';
class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5771F9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 41,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             SizedBox(
               height: 100,
             ),
             Image.asset("images/Frame 2.png"),
             SizedBox(
               height: 102.66,
             ),
             Text("Welcome",
             style: TextStyle(
               fontSize: 44,
               fontWeight: FontWeight.w400,
               color: Color(0xffffffff)
             )
             ),
             SizedBox(
               height: 23,
             ),
             Text("Stay on top by effortlessly tracking your subscriptions & bills",
             style: TextStyle(
               fontSize: 18,
               fontWeight: FontWeight.w400,
               color: Color(0xffffffff)
             )
             ),

             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 SizedBox(
                   height: 94,
                   width: 94,
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       shape: CircleBorder(),
                       backgroundColor: Color(0xffffffff),
                     ),
                     onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>
                           Register()));
                     },

                     child: const Icon(Icons.arrow_forward,color: Color(0xff314BCE),)
                   ),
                 ),
           ],
          ),
        ],
    ),
      ),
    ),
    );
  }
}
