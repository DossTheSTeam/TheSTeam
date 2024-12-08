import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'list_messages_boss_event_widget.dart' show ListMessagesBossEventWidget;
import 'package:flutter/material.dart';

class ListMessagesBossEventModel
    extends FlutterFlowModel<ListMessagesBossEventWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for CommField widget.
  FocusNode? commFieldFocusNode;
  TextEditingController? commFieldTextController;
  String? Function(BuildContext, String?)? commFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  TeamMessagesRecord? eventMessage;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    commFieldFocusNode?.dispose();
    commFieldTextController?.dispose();
  }
}
