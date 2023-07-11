import 'package:flutter/material.dart';
class InviteFriends extends StatefulWidget {
  const InviteFriends({Key? key}) : super(key: key);

  @override
  State<InviteFriends> createState() => _InviteFriendsState();
}

class _InviteFriendsState extends State<InviteFriends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 41,right: 41),
            child: Column(
              children: [
                SizedBox(
                  height: 58,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 47,
                      width: 47,
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
                    SizedBox(
                      height: 47,
                      width: 47,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            backgroundColor: Color(0xffffffff),
                          ),
                          onPressed: (){
                          },
                          child: const Icon(Icons.arrow_forward_rounded,color: Color(0xff314BCE),)
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 132,
                ),
                Image.asset("images/illustrations.png"),
                SizedBox(
                  height: 40,
                ),
                Text("Earn \$100",
                style: TextStyle(
                  fontSize: 46,
                  fontWeight: FontWeight.w400
                ),
                ),
                SizedBox(
                  height: 17,
                ),
                Text("Invite your friend and you can earn up to \$100",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400
                ),
                ),
                Text(" for every 5 friends who transfer over \$400",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(
                  height: 62,
                ),
                Text("Terms and Conditions",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                    color: Color(0xff486484)
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 332,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff5771F9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                    ),
                    onPressed: (){
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Invite friends now",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffFFFFFF),
                            )),
                        SizedBox(
                          height: 29,
                          width: 50,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                backgroundColor: Color(0xffffffff),
                              ),
                              onPressed: (){
                              },
                              child: const Icon(Icons.arrow_forward_rounded,color: Color(0xff314BCE),)
                          ),
                        ),
                      ],
                    ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
