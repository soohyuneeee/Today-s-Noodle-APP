import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:noodle/home.dart';
import 'package:noodle/model/soup.dart';
import 'package:noodle/model/nosoup.dart';
import 'soup.dart';
import 'package:flutter/services.dart';
class CustomNoodle extends StatefulWidget {
  const CustomNoodle({Key? key}) : super(key: key);

  @override
  State<CustomNoodle> createState() => _CustomNoodleState();
}

class _CustomNoodleState extends State<CustomNoodle> {

  final List<SoupModel> soups = <SoupModel>[];
  final List<NoSoupModel> nosoups = <NoSoupModel>[];
  var json_data;
  String first_image = "";




  @override
  void initState () {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      _asyncMethod();
    });

  }

  _asyncMethod() async {

    json_data =  await rootBundle.loadString('asset/json/information.json');
    var decode_data = json.decode(json_data);
    // first_image = decode_data["noodle"][3]["image"];
    for(int i = 0; i < 11; i++){
      if(decode_data["noodle"][i]["isSoup"]){
        soups.add(SoupModel(decode_data["noodle"][i]["name"], decode_data["noodle"][i]["korean"], decode_data["noodle"][i]["image"], decode_data["noodle"][i]["isSpicy"]));
      } else{
        nosoups.add(NoSoupModel(decode_data["noodle"][i]["name"], decode_data["noodle"][i]["korean"], decode_data["noodle"][i]["image"], decode_data["noodle"][i]["isSpicy"]));
      }
    }
    setState(() {

    });
    setState(() {

    });
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffFF9162),
          body: Center(
            child: Stack(
                children: [
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
                              fontSize: 60, fontFamily: 'Ansungtangmyun'),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SoupPage(soups: soups)));
                          },
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
                                fontSize: 24, fontFamily: 'Ansungtangmyun'),
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
                                fontSize: 24, fontFamily: 'Ansungtangmyun'),
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
                                fontSize: 24, fontFamily: 'Ansungtangmyun'),
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
            ]),
          ),
        ),
      ),
    );
  }
}

