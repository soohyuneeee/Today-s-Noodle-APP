import 'package:flutter/material.dart';
import 'package:noodle/home.dart';
class CustomNoodle extends StatelessWidget {
  const CustomNoodle({Key? key}) : super(key: key);

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
                          '맞춤 라면',
                          style: TextStyle(
                              fontSize: 60, fontFamily: 'SpoqaHanSansNeo'),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xffFFF3EE),
                            onPrimary: Colors.black,
                            fixedSize: const Size(160, 230),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: const Text(
                            '국물',
                            style: TextStyle(
                                fontSize: 24, fontFamily: 'SpoqaHanSansNeo'),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xffFFF3EE),
                            onPrimary: Colors.black,
                            fixedSize: const Size(160, 230),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: const Text(
                            '국물\n없음',
                            style: TextStyle(
                                fontSize: 24, fontFamily: 'SpoqaHanSansNeo'),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xffFFF3EE),
                            onPrimary: Colors.black,
                            fixedSize: const Size(160, 230),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: const Text(
                            '짜장\n라면',
                            style: TextStyle(
                                fontSize: 24, fontFamily: 'SpoqaHanSansNeo'),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xffFFF3EE),
                            onPrimary: Colors.black,
                            fixedSize: const Size(160, 230),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: const Text(
                            '매운\n라면',
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

