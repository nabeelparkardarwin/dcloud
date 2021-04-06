import 'dart:io';

import 'package:dio/dio.dart';

import '../domain/config.dart';
import '../domain/datamodels/d_cloud_upload_result.dart';
import '../domain/exceptions.dart';
import '../domain/repositories/i_d_cloud_repository.dart';

class DCloudRepository implements IDCloudRepository {
  late final Dio dio;

  DCloudRepository({required String apiKey, required String apiSecret}) {
    final options = BaseOptions(
      baseUrl: 'https://dcloud.darwindevs.com',
      headers: {
        'X-Key': apiKey,
        'X-Secret': apiSecret,
      },
    );

    dio = Dio(options);
  }

  @override
  Future<DCloudUploadResult> upload(File file, {ProgressCallback? onSendProgress}) async {
    if (await file.length() > maxFileLength) throw FileTooLargeException();

    const url = '/upload';
    final requestData = FormData.fromMap({
      'file': await MultipartFile.fromFile(file.path),
    });

    try {
      final response = await dio.post<Map>(url, data: requestData, onSendProgress: onSendProgress);

      final data = response.data!;
      final successStatus = data['status'] as bool;

      if (!successStatus) {
        final message = data['message'] as String;
        throw ClientException(message);
      }

      final result = DCloudUploadResult.fromJson(data['result'] as Map<String, dynamic>);
      return result;
    } on DioError catch (e) {
      _handleDioError(e);
    }
  }

  Never _handleDioError(DioError e) {
    final type = e.type;

    switch (type) {
      case DioErrorType.response:
        final response = e.response!;
        _handleDioResponseError(response);
      case DioErrorType.other:
        throw UnknownError();
      default:
        throw SocketException('Cannot connect to the server');
    }
  }

  Never _handleDioResponseError(Response response) {
    final statusCode = response.statusCode ?? 500;
    final data = response.data as Map;

    if (statusCode == 400) {
      final message = data['message'] as String;
      throw ClientException(message);
    }

    if (statusCode == 401) {
      throw InvalidApiCredentialsException();
    }

    throw UnknownError();
  }
}
