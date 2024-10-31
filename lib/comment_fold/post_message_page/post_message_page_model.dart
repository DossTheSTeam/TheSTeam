import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'post_message_page_widget.dart' show PostMessagePageWidget;
import 'package:flutter/material.dart';

class PostMessagePageModel extends FlutterFlowModel<PostMessagePageWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for CommField widget.
  FocusNode? commFieldFocusNode1;
  TextEditingController? commFieldTextController1;
  String? Function(BuildContext, String?)? commFieldTextController1Validator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  PostMessagesRecord? commentRef;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for CommField widget.
  FocusNode? commFieldFocusNode2;
  TextEditingController? commFieldTextController2;
  String? Function(BuildContext, String?)? commFieldTextController2Validator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  PostMessagesRecord? commentEsportRef;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    commFieldFocusNode1?.dispose();
    commFieldTextController1?.dispose();

    commFieldFocusNode2?.dispose();
    commFieldTextController2?.dispose();
  }
}
