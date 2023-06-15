// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'noodles.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NoodleAdapter extends TypeAdapter<Noodle> {
  @override
  final int typeId = 0;

  @override
  Noodle read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Noodle()..img = fields[0] as String;
  }

  @override
  void write(BinaryWriter writer, Noodle obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.img);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoodleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
