import 'dart:io';

import 'package:d_cloud/d_cloud.dart';
import 'package:path/path.dart';

Future<void> main() async {
  final dCloud = DCloud(apiKey: 'your-api-key', apiSecret: 'your-secret-key');
  final file = File(join(current, 'example', 'pic.jpeg'));
  final result = await dCloud.upload(file);
  print(result);
}
