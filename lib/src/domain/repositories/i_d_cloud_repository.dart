import 'dart:io';

import '../datamodels/d_cloud_upload_result.dart';

abstract class IDCloudRepository {
  Future<DCloudUploadResult> upload(File file);
}
