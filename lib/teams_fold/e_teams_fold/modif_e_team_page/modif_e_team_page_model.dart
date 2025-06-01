import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'modif_e_team_page_widget.dart' show ModifETeamPageWidget;
import 'package:flutter/material.dart';

class ModifETeamPageModel extends FlutterFlowModel<ModifETeamPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CommField widget.
  FocusNode? commFieldFocusNode;
  TextEditingController? commFieldTextController;
  String? Function(BuildContext, String?)? commFieldTextControllerValidator;
  bool isDataUploading_uploadDataP8p = false;
  FFUploadedFile uploadedLocalFile_uploadDataP8p =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataP8p = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    commFieldFocusNode?.dispose();
    commFieldTextController?.dispose();
  }
}
