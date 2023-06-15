import 'package:flutter/material.dart';

class NoSoupPage extends StatefulWidget {
  NoSoupPage();

  @override
  State<NoSoupPage> createState() => _NoSoupPageState();
}

class _NoSoupPageState extends State<NoSoupPage> {
  List<String> name = [
    'Rabokki.png',
    'HotChickenStirFriedNoodles.png',
    'HotChickenStirFriedNoodlesKarubo.png',
    'Jjaking.png',
    'Jjapa.png'

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFF9162),
        body: Center(
          child: Container(
            width: 380,
            height: 800,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xffFFDACA)),
            child: ListView.builder(
              itemCount: name.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Container(
                    width: 380,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xffFFDACA)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Container(
                            width: 180,
                            height: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: const Color(0xffFFF3EE)),
                            child: Image.asset(
                              'asset/image/noodles/' + name[index],
                              height: 150,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
class NoSoup extends StatelessWidget {
  const NoSoup({Key? key}) : super(key: key);

  @override
  build(BuildContext context) {
    List<String> name = [
      'Rabokki.png',
      'HotChickenStirFriedNoodles.png',
      'HotChickenStirFriedNoodlesKarubo.png',
      'Jjaking.png',
      'Jjapa.png'

    ];
    return Center(
          child: Container(
            width: 380,
            height: 800,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xffFFDACA)),
            child: ListView.builder(
              itemCount: name.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Container(
                    width: 380,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xffFFDACA)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Container(
                            width: 180,
                            height: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: const Color(0xffFFF3EE)),
                            child: Image.asset(
                              'asset/image/noodles/' + name[index],
                              height: 150,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )],
                );
              },
            ),
          ),

    );
  }
}

