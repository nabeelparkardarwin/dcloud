// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'd_cloud_upload_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DCloudUploadResult _$DCloudUploadResultFromJson(Map<String, dynamic> json) {
  return _DCloudUploadResult.fromJson(json);
}

/// @nodoc
class _$DCloudUploadResultTearOff {
  const _$DCloudUploadResultTearOff();

  _DCloudUploadResult call({@JsonKey(name: 'file_url') required String url}) {
    return _DCloudUploadResult(
      url: url,
    );
  }

  DCloudUploadResult fromJson(Map<String, Object> json) {
    return DCloudUploadResult.fromJson(json);
  }
}

/// @nodoc
const $DCloudUploadResult = _$DCloudUploadResultTearOff();

/// @nodoc
mixin _$DCloudUploadResult {
  @JsonKey(name: 'file_url')
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DCloudUploadResultCopyWith<DCloudUploadResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DCloudUploadResultCopyWith<$Res> {
  factory $DCloudUploadResultCopyWith(
          DCloudUploadResult value, $Res Function(DCloudUploadResult) then) =
      _$DCloudUploadResultCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'file_url') String url});
}

/// @nodoc
class _$DCloudUploadResultCopyWithImpl<$Res>
    implements $DCloudUploadResultCopyWith<$Res> {
  _$DCloudUploadResultCopyWithImpl(this._value, this._then);

  final DCloudUploadResult _value;
  // ignore: unused_field
  final $Res Function(DCloudUploadResult) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DCloudUploadResultCopyWith<$Res>
    implements $DCloudUploadResultCopyWith<$Res> {
  factory _$DCloudUploadResultCopyWith(
          _DCloudUploadResult value, $Res Function(_DCloudUploadResult) then) =
      __$DCloudUploadResultCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'file_url') String url});
}

/// @nodoc
class __$DCloudUploadResultCopyWithImpl<$Res>
    extends _$DCloudUploadResultCopyWithImpl<$Res>
    implements _$DCloudUploadResultCopyWith<$Res> {
  __$DCloudUploadResultCopyWithImpl(
      _DCloudUploadResult _value, $Res Function(_DCloudUploadResult) _then)
      : super(_value, (v) => _then(v as _DCloudUploadResult));

  @override
  _DCloudUploadResult get _value => super._value as _DCloudUploadResult;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_DCloudUploadResult(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DCloudUploadResult implements _DCloudUploadResult {
  const _$_DCloudUploadResult({@JsonKey(name: 'file_url') required this.url});

  factory _$_DCloudUploadResult.fromJson(Map<String, dynamic> json) =>
      _$_$_DCloudUploadResultFromJson(json);

  @override
  @JsonKey(name: 'file_url')
  final String url;

  @override
  String toString() {
    return 'DCloudUploadResult(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DCloudUploadResult &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$DCloudUploadResultCopyWith<_DCloudUploadResult> get copyWith =>
      __$DCloudUploadResultCopyWithImpl<_DCloudUploadResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DCloudUploadResultToJson(this);
  }
}

abstract class _DCloudUploadResult implements DCloudUploadResult {
  const factory _DCloudUploadResult(
      {@JsonKey(name: 'file_url') required String url}) = _$_DCloudUploadResult;

  factory _DCloudUploadResult.fromJson(Map<String, dynamic> json) =
      _$_DCloudUploadResult.fromJson;

  @override
  @JsonKey(name: 'file_url')
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DCloudUploadResultCopyWith<_DCloudUploadResult> get copyWith =>
      throw _privateConstructorUsedError;
}
