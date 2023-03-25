import 'package:flutter/material.dart';
import 'package:noodle/home.dart';

class TodayNoodle extends StatelessWidget {
  const TodayNoodle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.deepOrangeAccent,
          body: Center(
            child: Stack(children: [
              Container(
                width: 380,
                height: 800,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xffFFDACA)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.center
                  children: [
                    Container(
                      width: 340,
                      height: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffFFF3EE)),
                      child: const Center(
                        child: Text(
                          '오늘의 라면',
                          style: TextStyle(
                              fontSize: 60, fontFamily: 'SpoqaHanSansNeo'),
                        ),
                      ),
                    ),
                    Container(
                      width: 340,
                      height: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffFFF3EE)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xffFFF3EE),
                            onPrimary: Colors.black,
                            fixedSize: const Size(160, 100),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: const Text(
                            '오 괜찮은데?',
                            style: TextStyle(
                                fontSize: 24, fontFamily: 'SpoqaHanSansNeo'),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xffFFF3EE),
                            onPrimary: Colors.black,
                            fixedSize: const Size(160, 100),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: const Text(
                            '이거말고',
                            style: TextStyle(
                                fontSize: 24, fontFamily: 'SpoqaHanSansNeo'),
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xffFFF3EE),
                        onPrimary: Colors.black,
                        fixedSize: const Size(340, 100),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: const Text(
                        '메뉴로 돌아가기',
                        style: TextStyle(
                            fontSize: 30, fontFamily: 'SpoqaHanSansNeo'),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
