import 'package:flutter/material.dart';
import 'package:noodle/screens/jjajangsoup.dart';
import 'package:noodle/screens/nosoup.dart';
import 'package:noodle/screens/spicysoup.dart';

class SoupPage extends StatefulWidget {
  SoupPage();

  @override
  State<SoupPage> createState() => _SoupPageState();
}

class _SoupPageState extends State<SoupPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      Soup(),
      NoSoup(),
      JjajangSoup(),
      SpicySoup(),

    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFF9162),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          // 선택된 아이템 색상 설정
          // selectedItemColor: Color(0xff738D56),
          // 선택되지 않은 아이템 색상 설정
          // unselectedItemColor: Color(0xff929292),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          // currentIndex: ,
          // onTap: ,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.fastfood_rounded),
              label: '국물라면',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fastfood_rounded),
              label: '볶음라면',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_food_beverage_sharp),
              label: '짜장라면',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.food_bank_outlined),
              label: '매운라면',
            ),
          ],
        ),
      ),
    );
  }

}
class Soup extends StatelessWidget {
  const Soup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> name = [
      'AnchovyKalguksu.png',
      'Jinjjambbong.png',
      'JinRamenSpicy.png',
      'Sarigomtang.png',
      'YukgaejangKalguksu.png',
      'Anseongtangmyeon.png',
      'SesameRamen.png',
      'Snackmyeon.png',

    ];
    return Center(
      child: Container(
        width: 380,
        height: 800,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xffFFDACA)),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: name.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 380,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xffFFDACA)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
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
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}