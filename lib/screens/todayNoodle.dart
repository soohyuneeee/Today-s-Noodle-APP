import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../model/noodles.dart';
import 'Noodlelogs.dart';

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
  'Snackmyeon.png',
  'Yull.png',
  'Jjaking.png',
  'Jjapa.png',
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
  DateTime date = DateTime.now();
  @override
  void initState() {
    super.initState();
    widget.controller.Rand();
  }
  @override

  void initializeDate() {
    date = DateTime.now();
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
                          onPressed: () async {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text(
                                      '오늘의 라면',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontFamily: 'Ansungtangmyun'),
                                    ),
                                    content: const Text(
                                      '오늘의 라면을 기록하시겠습니까?',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Ansungtangmyun'),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () async {
                                          initializeDate();
                                          final noodleBox =
                                              await Hive.openBox<Noodle>(
                                                  'noodles');
                                          final noodle = Noodle()
                                            ..img =
                                                'asset/image/noodles/${controller.randNoodle}'
                                            ..date = DateTime.now();

                                          noodleBox.add(noodle);
                                          Navigator.pop(context);
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      noodleLogs()));
                                        },
                                        child: const Text(
                                          '네',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Ansungtangmyun'),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          //hive noodle 데이터 삭제
                                          Hive.deleteBoxFromDisk('noodles');
                                        },
                                        child: const Text(
                                          '아니오',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Ansungtangmyun'),
                                        ),
                                      ),
                                    ],
                                  );
                                });

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
