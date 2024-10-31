import '/flutter_flow/flutter_flow_util.dart';
import 'my_image_page_widget.dart' show MyImagePageWidget;
import 'package:flutter/material.dart';

class MyImagePageModel extends FlutterFlowModel<MyImagePageWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
