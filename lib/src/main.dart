import 'dart:io';

import 'domain/datamodels/d_cloud_upload_result.dart';
import 'domain/repositories/i_d_cloud_repository.dart';
import 'infrustructure/d_cloud_repository.dart';

class DCloud {
  final IDCloudRepository _repository;

  DCloud({required String apiKey, required String apiSecret})
      : _repository = DCloudRepository(apiKey: apiKey, apiSecret: apiSecret);

  Future<DCloudUploadResult> upload(File file) async {
    return _repository.upload(file);
  }
}
