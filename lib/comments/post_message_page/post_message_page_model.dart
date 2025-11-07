import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'post_message_page_widget.dart' show PostMessagePageWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class PostMessagePageModel extends FlutterFlowModel<PostMessagePageWidget> {
  ///  Local state fields for this page.

  bool? showComment;

  bool? showAudio;

  bool? showImage;

  bool? showEsportComment;

  bool? showEsportAudio;

  bool? showEsportImage;

  ///  State fields for stateful widgets in this page.

  AudioRecorder? audioRecorder;
  String? audioSport;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  // State field(s) for CommField widget.
  FocusNode? commFieldFocusNode;
  TextEditingController? commFieldTextController;
  String? Function(BuildContext, String?)? commFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  PostMessagesRecord? commentRef;
  bool isDataUploading_uploadDataMln = false;
  FFUploadedFile uploadedLocalFile_uploadDataMln =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataMln = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    commFieldFocusNode?.dispose();
    commFieldTextController?.dispose();
  }
}
