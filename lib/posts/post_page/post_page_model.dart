import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'post_page_widget.dart' show PostPageWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class PostPageModel extends FlutterFlowModel<PostPageWidget> {
  ///  Local state fields for this page.

  bool? showComment;

  bool? showAudio;

  bool? showImage;

  ///  State fields for stateful widgets in this page.

  AudioRecorder? audioRecorder;
  String? audio;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  // State field(s) for CommField widget.
  FocusNode? commFieldFocusNode;
  TextEditingController? commFieldTextController;
  String? Function(BuildContext, String?)? commFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  PostMessagesRecord? commentRef;
  bool isDataUploading_uploadDataX6j = false;
  FFUploadedFile uploadedLocalFile_uploadDataX6j =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataX6j = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    commFieldFocusNode?.dispose();
    commFieldTextController?.dispose();
  }
}
