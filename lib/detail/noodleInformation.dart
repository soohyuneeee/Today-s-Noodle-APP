import 'category.dart';

enum Noodle {
  AnchovyKalguksu(image: "asset/image/noodles/AnchovyKalguksu.png", name: "멸치칼국수", isSoup: Soup.soup, isSpicy: Spicy.noSpicy),
  Anseongtangmyeon(image: "asset/image/noodles/Anseongtangmyeon.png", name: "안성탕면", isSoup: Soup.soup, isSpicy: Spicy.fewSpicy),
  HotChickenStirFriedNoodles(image: "asset/image/noodles/HotChickenStirFriedNoodles.png", name: "불닭볶음면", isSoup: Soup.nosoup, isSpicy: Spicy.verySpicy),
  HotChickenStirFriedNoodlesKarubo(image: "asset/image/noodles/HotChickenStirFriedNoodlesKarubo.png", name: "까르보 불닭볶음면", isSoup: Soup.nosoup, isSpicy: Spicy.spicy),
  Jinjjambbong(image: "asset/image/noodles/Jinjjambbong.png", name: "진짬뽕", isSoup: Soup.nosoup, isSpicy: Spicy.littleSpicy),
  JinRamenSpicy(image: "asset/image/noodles/JinRamenSpicy.png", name: "진라면 매운맛", isSoup: Soup.soup, isSpicy: Spicy.littleSpicy),
  Rabokki(image: "asset/image/noodles/Rabokki.png", name: "라볶이", isSoup: Soup.nosoup, isSpicy: Spicy.fewSpicy),
  Sarigomtang(image: "asset/image/noodles/Sarigomtang.png", name: "사리곰탕", isSoup: Soup.soup, isSpicy: Spicy.noSpicy),
  SesameRamen(image: "asset/image/noodles/SesameRamen.png", name: "참깨라면", isSoup: Soup.soup, isSpicy: Spicy.littleSpicy),
  Snackmyeon(image: "asset/image/noodles/Snackmyeon.png", name: "스낵면", isSoup: Soup.soup, isSpicy: Spicy.fewSpicy),
  YukgaejangKalguksu(image: "asset/image/noodles/YukgaejangKalguksu.png", name: "육개장칼국수", isSoup: Soup.soup, isSpicy:Spicy.littleSpicy);

  final String image;
  final String name;
  final Soup isSoup;
  final Spicy isSpicy;

  const Noodle({
    required this.image,
    required this.name,
    required this.isSoup,
    required this.isSpicy,

});
}
