import 'dart:io';

import 'package:dio/dio.dart';

import 'domain/datamodels/d_cloud_upload_result.dart';
import 'domain/repositories/i_d_cloud_repository.dart';
import 'infrustructure/d_cloud_repository.dart';

class DCloud {
  final IDCloudRepository _repository;

  /// Interface with DCloud. Required valid [apiKey] and [apiSecret]
  DCloud({required String apiKey, required String apiSecret})
      : _repository = DCloudRepository(apiKey: apiKey, apiSecret: apiSecret);

  /// Upload a file to DCloud
  Future<DCloudUploadResult> upload(File file, {ProgressCallback? onSendProgress, CancelToken? cancelToken}) async {
    return _repository.upload(file, onSendProgress: onSendProgress, cancelToken: cancelToken);
  }
}
