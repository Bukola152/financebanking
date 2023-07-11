
import 'package:financebanking/welcome.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({
    Key? key,
  }) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  late PageController _pageController;
  late int selectedPage;
  @override
  void initState() {
    selectedPage=0;
    _pageController= PageController(initialPage:selectedPage);
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    _pageController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final pageCount = 5;
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Padding(
            padding:  EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                SizedBox(
                  height:10 ,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>
                            Welcome()));
                      },
                      child: Text("Skip",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ) ,),
                    ),
                  ],
                ),
                Expanded(
                  child: PageView.builder(
                    itemCount: demo_data.length,
                    controller: _pageController,
                    onPageChanged: (page){
                      setState(() {
                        selectedPage= page;
                      });
                    },
                    itemBuilder: (context, index)=>OnboardContent(
                      image: demo_data[index].image,
                      title: demo_data[index].title,
                      description: demo_data[index].description,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      selectedPage==1?"2/3":selectedPage==2?'3/3':'1/3',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ) ,),
                    SizedBox(
                      height: 94,
                      width: 94,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Color(0xff5771F9),
                        ),
                        onPressed: (){
                           selectedPage==2?
                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
                               Welcome())):
                          _pageController.nextPage(curve: Curves.ease,duration:Duration(milliseconds: 300));
                        },

                        child: const Text("Next",
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ) ,),),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14.09,
                ),
              ],
            )
        ),
      ),
    );
  }
}
class Onboard{
  final String image,title,description;

  Onboard( {required this.image, required this.title,required this.description,});
}
final List<Onboard> demo_data=[
  Onboard(
    image:"images/Group 68.png",
    title:"Take hold of your finances", description: 'Running your finances is easier with xyz',
  ),


  Onboard(
    image:"images/Group 69.png",
    title:"See where your money is going ", description: 'Stay on top by effortlessly tracking your subscriptions & bills',
  ),
  Onboard(
    image:"images/Group 70.png",
    title:"Reach your goals with ease ", description: 'Use the smart saving features to manage your future goals and needs',
  ),
];

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key, required this.image, required this.title, required this.description,
  });
  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 93,
        ),
        Image.asset(
          image,
        ),
        SizedBox(
          height: 53,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 44,
            fontWeight: FontWeight.w700,
            color: Color(0xff151940),
          ),
        ),
        SizedBox(
          height: 38,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Color(0xff151940),
          ),
        ),

      ],
    );
  }
}
