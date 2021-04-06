import 'dart:io';

import 'package:d_cloud/d_cloud.dart';
import 'package:path/path.dart';

Future<void> main(List<String> args) async {
  final apiKey = args[0];
  final apiSecret = args[1];

  final dCloud = DCloud(apiKey: apiKey, apiSecret: apiSecret);
  final file = File(join(current, 'example', 'pic.jpeg'));
  final result = await dCloud.upload(file, onSendProgress: onSendProgress);
  print(result);
}

void onSendProgress(int count, int total) {
  print('Upload: ${(count / total * 100).toInt()}/100');
}
