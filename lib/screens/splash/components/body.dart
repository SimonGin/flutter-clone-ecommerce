import 'package:ecom/const.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto. Let's shop!",
      "img": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people connect to the store \naround United States of America",
      "img": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop.\nJust stay at home with us",
      "img": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            const Text(
              'TOKOTO',
              style: TextStyle(
                fontSize: 36,
                color: k1stColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              flex: 2,
              child: PageView.builder(
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]['text'].toString(),
                  img: splashData[index]['img'].toString(),
                ),
              ),
            ),
            const Expanded(flex: 2, child: SizedBox())
          ],
        ),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
    required this.text,
    required this.img,
  });
  final String text;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text),
        const Spacer(),
        Image.asset(
          img,
          height: 305,
          width: 275,
        )
      ],
    );
  }
}
