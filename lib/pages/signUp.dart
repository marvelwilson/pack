import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final PageController pagecontroller = PageController(initialPage: 0);
  int currentpage = 0;
  List<Widget> pages = [
    Itemboarding(
      currentPage: 0,
      image: 'assets/img/pngegg.png',
      title:
          'Find Ads Quickly and stress-free; all \n you need to do is search, and they\n will display',
    ),
    Itemboarding(
      currentPage: 1,
      image: 'assets/img/pngegg.png',
      title:
          'Find Ads Quickly and stress-free; all \n you need to do is search, and they\n will display',
    ),
    Itemboarding(
      currentPage: 2,
      image: 'assets/img/trust.png',
      title:
          "Unsure if a seller is tryesworthy? just\n give us a change and we won't let\n your down. we have you covered.",
    ),
    Itemboarding(
      currentPage: 3,
      image: 'assets/img/pngegg.png',
      title:
          'On Pack, your preferred marketplace,\nyou may buy, sell, chat, call and do\n everything you like',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 8, 7, 35)),
      backgroundColor: Color.fromARGB(255, 8, 7, 35),
      body: Column(
        children: [
          // Container(
          //   child: Column(
          //     children: [
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: List.generate(
          //           pages.length,
          //           (index) => AnimatedContainer(
          //             decoration: BoxDecoration(
          //                 color: (index <= currentpage)
          //                     ? Colors.blue
          //                     : Color.fromARGB(255, 36, 35, 35),
          //                 borderRadius: BorderRadius.circular(5)),
          //             margin: EdgeInsets.all(2),
          //             duration: const Duration(microseconds: 300),
          //             height: 5,
          //             width: 110,
          //           ),
          //         ),
          //       )
          //     ],
          //   ),
          // ),
          const SizedBox(
            height: 100,
          ),
          Expanded(
              child: PageView(
            children: pages,
            controller: pagecontroller,
            onPageChanged: (int val) {
              setState(() {
                currentpage = val;
              });
            },
          )),
          Container(
            margin: EdgeInsets.only(bottom: 340),
            child: Column(children: [
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                minWidth: 350,
                color: Colors.blue,
                onPressed: () {
                  // pagecontroller.nextPage(
                  //     duration: Duration(microseconds: 300),
                  //     curve: Curves.easeIn);
                },
                child: const Text(
                  'Sign up with Email',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                minWidth: 350,
                color: Color.fromARGB(255, 36, 34, 34),
                onPressed: () {},
                child: const Text(
                  'Sign up with Phone Number',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ]),
          )
          // Container(
          //   margin: EdgeInsets.only(bottom: 20),
          //   child: Column(
          //     children: [
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: List.generate(
          //           pages.length,
          //           (index) => AnimatedContainer(
          //             decoration: BoxDecoration(
          //                 color: (index == currentpage)
          //                     ? Colors.white
          //                     : Color.fromARGB(255, 36, 35, 35),
          //                 borderRadius: BorderRadius.circular(5)),
          //             margin: EdgeInsets.all(5),
          //             duration: const Duration(microseconds: 300),
          //             height: 10,
          //             width: 10,
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Itemboarding extends StatelessWidget {
  String image;
  String title;
  int currentPage;

  Itemboarding(
      {super.key,
      required this.image,
      required this.title,
      required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 100),
      child: currentPage == 0
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Welcome to Pack',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'How would you like to sign up',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Image.asset(
                  image,
                  height: 400,
                  width: 400,
                  fit: BoxFit.contain,
                ),
              ],
            ),
    );
  }
}
