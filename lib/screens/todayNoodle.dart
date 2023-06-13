import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<String> name = [
  'AnchovyKalguksu.png',
  'Jinjjambbong.png',
  'JinRamenSpicy.png',
  'Sarigomtang.png',
  'YukgaejangKalguksu.png',
  'Anseongtangmyeon.png',
  'HotChickenStirFriedNoodles.png',
  'HotChickenStirFriedNoodlesKarubo.png',
  'Rabokki.png',
  'SesameRamen.png',
  'Snackmyeon.png'
];
class SimpleController extends GetxController {
  int random = 0;
  String? randNoodle = '';

  void Rand() {
    random = Random().nextInt(name.length);
    randNoodle = name[random];
    update();
  }
}

class TodayNoodle extends StatefulWidget {
  TodayNoodle({Key? key}) : super(key: key);

  @override
  State<TodayNoodle> createState() => _TodayNoodleState();
  final controller = Get.put(SimpleController());
}

class _TodayNoodleState extends State<TodayNoodle> {
  @override
  void initState() {
    super.initState();
    widget.controller.Rand();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffFF9162),
          body: GetBuilder<SimpleController>(builder: (controller) {
            return Center(
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
                              fontSize: 50, fontFamily: 'Ansungtangmyun'),
                        ),
                      ),
                    ),
                    Container(
                      width: 340,
                      height: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffFFF3EE)),
                      child: Image.asset(
                        'asset/image/noodles/${controller.randNoodle}',
                        height: 150,
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
                            fixedSize: const Size(160, 100),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: const Text(
                            '오 괜찮은데?',
                            style: TextStyle(
                                fontSize: 24, fontFamily: 'Ansungtangmyun'),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            controller.Rand();
                          },
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
                                fontSize: 24, fontFamily: 'Ansungtangmyun'),
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
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
                            fontSize: 30, fontFamily: 'Ansungtangmyun'),
                      ),
                    ),
                  ],
                ),
              ),
            ]));
          }),
        ),
      ),
    );
  }
}
