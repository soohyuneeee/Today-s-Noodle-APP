import 'package:hive/hive.dart';

part 'noodles.g.dart';

@HiveType(typeId: 0)
class Noodle extends HiveObject {
  @HiveField(0)
  late String img;
  DateTime date = DateTime.now();

}
