import 'dart:io';

import 'package:dio/dio.dart';

import '../datamodels/d_cloud_upload_result.dart';

abstract class IDCloudRepository {
  Future<DCloudUploadResult> upload(File file, {ProgressCallback? onSendProgress});
}
