import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'discusion_e_team_page_widget.dart' show DiscusionETeamPageWidget;
import 'package:flutter/material.dart';

class DiscusionETeamPageModel
    extends FlutterFlowModel<DiscusionETeamPageWidget> {
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
  TeamMessagesRecord? teamMessage;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    commFieldFocusNode?.dispose();
    commFieldTextController?.dispose();
  }
}
