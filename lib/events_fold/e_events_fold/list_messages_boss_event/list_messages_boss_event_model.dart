import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'list_messages_boss_event_widget.dart' show ListMessagesBossEventWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class ListMessagesBossEventModel
    extends FlutterFlowModel<ListMessagesBossEventWidget> {
  ///  Local state fields for this page.

  bool? showText;

  bool? showImage;

  bool? showVocal;

  ///  State fields for stateful widgets in this page.

  AudioRecorder? audioRecorder;
  String? audioBossMessage;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  // State field(s) for CommField widget.
  FocusNode? commFieldFocusNode;
  TextEditingController? commFieldTextController;
  String? Function(BuildContext, String?)? commFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  TeamMessagesRecord? eventMessage;
  bool isDataUploading_uploadDataNu8 = false;
  FFUploadedFile uploadedLocalFile_uploadDataNu8 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataNu8 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    commFieldFocusNode?.dispose();
    commFieldTextController?.dispose();
  }
}
