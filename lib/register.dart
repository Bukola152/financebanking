import 'package:financebanking/phonenumber.dart';
import 'package:financebanking/signin.dart';
import 'package:financebanking/verifycode.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class Register extends StatefulWidget {
   Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}
 
class _RegisterState extends State<Register> {
  bool isChecked = false;
  bool _obscure = false;
  String errorMessage ='';
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  bool loading =false;

  final formkey =GlobalKey<FormState>();
  late final email,password;

  String? validateEmail(String? formEmail){
    if (formEmail == null || formEmail.isEmpty)
      return 'E-mail address is required.';

    String pattern = r'\w+@\w+\w+';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(formEmail)) return 'Invalid E_mail Address';
  }
 // Track the checkbox state
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 41,right: 41),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
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
                      validator: (value) {
                        if (value!.isEmpty) return 'Please enter Full name';
                      },
                      obscureText: _obscure,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 13),
                        hintText: "Full name ",
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
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) return 'Please enter your email address';
                      },
                      obscureText: _obscure,
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
                      validator: (value) {
                        if (value!.isEmpty) return 'Password field entry is needed';
                      },
                      obscureText: _obscure,
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
                  SizedBox(
                    height: 12.27,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF5F6FA),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility),
                        contentPadding: EdgeInsets.only(left: 13),
                        hintText: "Confirm Password ",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff7F8192),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18.27,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: ( newValue) {
                          setState(() {
                            isChecked =! isChecked;
                            });
                          },
                      ),
                      Text("I’ve read and agree to ",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff7F8192),
                        ),
                      ),
                      Text("terms",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff314BCE),
                        ),
                      ),
                      Text("of ",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff7F8192),
                        ),
                      ),
                      Text("privacy policy ",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff314BCE),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
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
                      onPressed: () async {
                        if (formkey.currentState!.validate()) {
                          setState(() {
                            loading = true;
                          });
                          try {
                            await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                              email: email, password: password,
                            ).then((value) =>
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SignIn())));
                            errorMessage = '';
                          } on FirebaseAuthException catch (error) {
                            errorMessage = error.message!;
                          } catch (e, s) {
                            print(e);
                            print(s);
                          }
                          setState(() {
                            loading = false;
                          });
                        }
                      },
                      child: Text("Register",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffFFFFFF),
                          ))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Already have an account?"),
                  Row(
                    children: [
                      Text("LOGIN",
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
      ),
    );
  }
}
