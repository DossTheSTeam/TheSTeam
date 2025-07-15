import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'my_image_page_widget.dart' show MyImagePageWidget;
import 'package:flutter/material.dart';

class MyImagePageModel extends FlutterFlowModel<MyImagePageWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataAof = false;
  FFUploadedFile uploadedLocalFile_uploadDataAof =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataAof = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
