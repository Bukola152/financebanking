import 'package:financebanking/forgotpassword.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 41,right: 41),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 93,
                  ),
                  Text("Log In",
                    style: TextStyle(
                      fontSize: 44,
                      color: Color(0xff151940),
                    ),
                  ),
                  SizedBox(
                    height: 41,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 53,
                        width: 161,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffF5F6FA),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              )
                          ),
                          onPressed: (){
                          },
                          child: Text("GOOGLE",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff151940),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 53,
                        width: 161,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffF5F6FA),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              )
                          ),
                          onPressed: (){
                          },
                          child: Text("FACEBOOK",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff151940),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Center(child: Text("or")),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF5F6FA),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextFormField(
                      controller: emailController,
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
                    height: 12.27,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF5F6FA),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility),
                        contentPadding: EdgeInsets.only(left: 13),
                        hintText: "Password ",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff7F8192),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot Password?",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff5771F9)
                      ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 18.27,
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
                        FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text,
                            password: passwordController.text);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>
                            ForgotPassword()));
                      },
                      child: Text("Log In",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffFFFFFF),
                          )),),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  Text("Don’t have an account?"),
                  Row(
                    children: [
                      Text("REGISTER",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff314BCE),
                        ),
                      ),
                      SizedBox(
                        width: 24.65,
                      ),
                      SizedBox(
                        child: Icon(Icons.arrow_forward,color: Color(0xff314BCE),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      );
  }
}



