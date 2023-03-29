import 'package:flutter/material.dart';
import 'package:noodle/model/soup.dart';





// print ('image : ' + first_val['image']);
// print ('soup?  : ' + second_val['isSoup'].toString());



class SoupPage extends StatefulWidget {
  final List<SoupModel> soups;
  const SoupPage({super.key,required this.soups});



  @override
  State<SoupPage> createState() => _SoupPageState();
}


class _SoupPageState extends State<SoupPage> {



  @override
  Widget build(BuildContext context) {
    return Column(
      children: showSoup(context, widget.soups),
    )  ;
  }
}
List<Widget> showSoup(BuildContext context, List<SoupModel> soups) {
  List<Widget> results = [];
  bool odd = soups.length % 2 == 1 ? true : false;
  for (var i = 0; i < soups.length; i = i + 2) {
    results.add(
          odd
              ? //index가 홀수고
          i == soups.length - 1
              ? //마지막 index면
          const Text("") //출력 x
              : Container(
            width: 100,
            height: 100,
          ) //똑같은 코드
              : Container() //똑같은 코드
    );}
  return results;
}