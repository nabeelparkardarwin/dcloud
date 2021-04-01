import 'package:freezed_annotation/freezed_annotation.dart';

part 'd_cloud_upload_result.freezed.dart';
part 'd_cloud_upload_result.g.dart';

@freezed
class DCloudUploadResult with _$DCloudUploadResult {
  const factory DCloudUploadResult({
    @JsonKey(name: 'file_url') required String url,
  }) = _DCloudUploadResult;

  factory DCloudUploadResult.fromJson(Map<String, dynamic> json) => _$DCloudUploadResultFromJson(json);
}
