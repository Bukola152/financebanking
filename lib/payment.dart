import 'package:flutter/material.dart';
class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        SizedBox(
        height: 58,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 74,
          ),
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
                child: const Icon(Icons.arrow_back,color: Color(0xff314BCE),)
            ),
          ),
          SizedBox(
            height: 29,
            width: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  backgroundColor: Color(0xffffffff),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                      Payment()));
                },
                child: const Icon(Icons.arrow_forward_rounded,color: Color(0xff314BCE),)
            ),
          ),
        ],
      ),
          Image.asset("images/illustrate.png")
        ],
      ),
    );
  }
}
