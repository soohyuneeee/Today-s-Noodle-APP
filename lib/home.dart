import 'package:flutter/material.dart';
import 'screens/todayNoodle.dart';
import 'screens/customNoodle.dart';
void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MaterialApp',
        home: SafeArea(
          child: Scaffold(
              backgroundColor: const Color(0xffFF9162),
              body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'asset/image/logo.png',
                        height: 150,
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TodayNoodle()));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xffFFDACA),
                          onPrimary: Colors.black,
                          fixedSize: const Size(280, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                        child: const Text(
                          '오늘의 라면',
                          style: TextStyle(
                              fontSize: 35, fontFamily: 'Ansungtangmyun'),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const CustomNoodle()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xffFFDACA),
                            onPrimary: Colors.black,
                            fixedSize: const Size(280, 60),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: const Text(
                            '맞춤 라면',
                            style: TextStyle(
                                fontSize: 35, fontFamily: 'Ansungtangmyun'),
                          )),
                      const SizedBox(
                        height: 60,
                      ),
                      // ElevatedButton(
                      //     onPressed: () {},
                      //     style: ElevatedButton.styleFrom(
                      //       primary: const Color(0xffFFDACA),
                      //       onPrimary: Colors.black,
                      //       // elevation: 4,
                      //       fixedSize: const Size(280, 60),
                      //       shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(20.0),
                      //       ),
                      //     ),
                      //     child: const Text(
                      //       '커뮤니티',
                      //       style: TextStyle(
                      //           fontSize: 35, fontFamily: 'Ansungtangmyun'),
                      //     )),
                    ]),
              )),
        ));
  }
}
