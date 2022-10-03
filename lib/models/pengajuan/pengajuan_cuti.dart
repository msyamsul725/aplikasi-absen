import 'package:freezed_annotation/freezed_annotation.dart';

part 'pengajuan_cuti.freezed.dart';
part 'pengajuan_cuti.g.dart';

@freezed
class PengajuanCuti with _$PengajuanCuti {
  factory PengajuanCuti({
    int? id,
    @JsonKey(name: 'id_user') String? idUser,
    String? title,
    String? status,
    String? date,
    String? description,
    String? image,
  }) = _PengajuanCuti;

  factory PengajuanCuti.fromJson(Map<String, dynamic> json) =>
      _$PengajuanCutiFromJson(json);
}
