// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pengajuan_cuti.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PengajuanCuti _$PengajuanCutiFromJson(Map<String, dynamic> json) {
  return _PengajuanCuti.fromJson(json);
}

/// @nodoc
mixin _$PengajuanCuti {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_user')
  String? get idUser => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PengajuanCutiCopyWith<PengajuanCuti> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PengajuanCutiCopyWith<$Res> {
  factory $PengajuanCutiCopyWith(
          PengajuanCuti value, $Res Function(PengajuanCuti) then) =
      _$PengajuanCutiCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'id_user') String? idUser,
      String? title,
      String? status,
      String? date,
      String? description,
      String? image});
}

/// @nodoc
class _$PengajuanCutiCopyWithImpl<$Res>
    implements $PengajuanCutiCopyWith<$Res> {
  _$PengajuanCutiCopyWithImpl(this._value, this._then);

  final PengajuanCuti _value;
  // ignore: unused_field
  final $Res Function(PengajuanCuti) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? idUser = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idUser: idUser == freezed
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PengajuanCutiCopyWith<$Res>
    implements $PengajuanCutiCopyWith<$Res> {
  factory _$$_PengajuanCutiCopyWith(
          _$_PengajuanCuti value, $Res Function(_$_PengajuanCuti) then) =
      __$$_PengajuanCutiCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'id_user') String? idUser,
      String? title,
      String? status,
      String? date,
      String? description,
      String? image});
}

/// @nodoc
class __$$_PengajuanCutiCopyWithImpl<$Res>
    extends _$PengajuanCutiCopyWithImpl<$Res>
    implements _$$_PengajuanCutiCopyWith<$Res> {
  __$$_PengajuanCutiCopyWithImpl(
      _$_PengajuanCuti _value, $Res Function(_$_PengajuanCuti) _then)
      : super(_value, (v) => _then(v as _$_PengajuanCuti));

  @override
  _$_PengajuanCuti get _value => super._value as _$_PengajuanCuti;

  @override
  $Res call({
    Object? id = freezed,
    Object? idUser = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_PengajuanCuti(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idUser: idUser == freezed
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PengajuanCuti implements _PengajuanCuti {
  _$_PengajuanCuti(
      {this.id,
      @JsonKey(name: 'id_user') this.idUser,
      this.title,
      this.status,
      this.date,
      this.description,
      this.image});

  factory _$_PengajuanCuti.fromJson(Map<String, dynamic> json) =>
      _$$_PengajuanCutiFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'id_user')
  final String? idUser;
  @override
  final String? title;
  @override
  final String? status;
  @override
  final String? date;
  @override
  final String? description;
  @override
  final String? image;

  @override
  String toString() {
    return 'PengajuanCuti(id: $id, idUser: $idUser, title: $title, status: $status, date: $date, description: $description, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PengajuanCuti &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.idUser, idUser) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(idUser),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_PengajuanCutiCopyWith<_$_PengajuanCuti> get copyWith =>
      __$$_PengajuanCutiCopyWithImpl<_$_PengajuanCuti>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PengajuanCutiToJson(
      this,
    );
  }
}

abstract class _PengajuanCuti implements PengajuanCuti {
  factory _PengajuanCuti(
      {final int? id,
      @JsonKey(name: 'id_user') final String? idUser,
      final String? title,
      final String? status,
      final String? date,
      final String? description,
      final String? image}) = _$_PengajuanCuti;

  factory _PengajuanCuti.fromJson(Map<String, dynamic> json) =
      _$_PengajuanCuti.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'id_user')
  String? get idUser;
  @override
  String? get title;
  @override
  String? get status;
  @override
  String? get date;
  @override
  String? get description;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_PengajuanCutiCopyWith<_$_PengajuanCuti> get copyWith =>
      throw _privateConstructorUsedError;
}
