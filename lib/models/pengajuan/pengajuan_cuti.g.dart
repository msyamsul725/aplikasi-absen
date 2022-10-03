// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pengajuan_cuti.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PengajuanCuti _$$_PengajuanCutiFromJson(Map<String, dynamic> json) =>
    _$_PengajuanCuti(
      id: json['id'] as int?,
      idUser: json['id_user'] as String?,
      title: json['title'] as String?,
      status: json['status'] as String?,
      date: json['date'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_PengajuanCutiToJson(_$_PengajuanCuti instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_user': instance.idUser,
      'title': instance.title,
      'status': instance.status,
      'date': instance.date,
      'description': instance.description,
      'image': instance.image,
    };
