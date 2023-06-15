import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../model/noodles.dart';

class noodleLogs extends StatefulWidget {
  const noodleLogs();

  @override
  State<noodleLogs> createState() => _noodleLogsState();
}

class _noodleLogsState extends State<noodleLogs> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: const Color(0xffFF9162),
        body: Center(
            child: Container(
          width: 380,
          height: 800,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xffFFDACA)),
          child: // Hive noodle에 저장된 값들을 가져오고 싶어
              buildListView(),
        )));
  }

  ListView buildListView() {
    return ListView.builder(
          itemCount: Hive.box<Noodle>('noodles').length,
          itemBuilder: (BuildContext context, int index) {
            final noodle = Hive.box<Noodle>('noodles').getAt(index);
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 380,
                  // height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xffFFDACA)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: InkWell(
                          onTap: () {
                            Hive.deleteBoxFromDisk('noodles');
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: const Color(0xffFFF3EE)),
                              child: Column(
                                children: [
                                  Image.asset(
                                    (noodle?.img != null)
                                        ? noodle!.img!
                                        : 'default_image.png',
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
                                    child: Text(
                                      (noodle?.date != null)
                                          ? '${noodle!.date!.year!}년 ${noodle!.date!.month!}월 ${noodle!.date!.day!}일'
                                          : 'default_name',
                                      style: const TextStyle(
                                          fontFamily: 'NanumMyeongjo',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: ElevatedButton(onPressed: () {
                          Hive.deleteBoxFromDisk('noodles');
                          //데이터 다시 불러오기
                        }, child: Text('데이터 삭제하기'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        )
                        ),
                      )
                    ],
                  ),
                )
              ],
            );
          },
        );
  }
}
