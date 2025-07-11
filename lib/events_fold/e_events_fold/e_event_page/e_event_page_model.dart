import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'e_event_page_widget.dart' show EEventPageWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class EEventPageModel extends FlutterFlowModel<EEventPageWidget> {
  ///  Local state fields for this page.

  bool? showText;

  bool? showImage;

  bool? showAudio;

  ///  State fields for stateful widgets in this page.

  AudioRecorder? audioRecorder;
  String? audio;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  // State field(s) for CommField widget.
  FocusNode? commFieldFocusNode;
  TextEditingController? commFieldTextController;
  String? Function(BuildContext, String?)? commFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  EventMessagesRecord? commentRef;
  bool isDataUploading_uploadDataHvv = false;
  FFUploadedFile uploadedLocalFile_uploadDataHvv =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataHvv = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    commFieldFocusNode?.dispose();
    commFieldTextController?.dispose();
  }
}
