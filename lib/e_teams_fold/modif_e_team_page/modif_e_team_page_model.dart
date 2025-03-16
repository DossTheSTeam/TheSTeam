import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'modif_e_team_page_widget.dart' show ModifETeamPageWidget;
import 'package:flutter/material.dart';

class ModifETeamPageModel extends FlutterFlowModel<ModifETeamPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CommField widget.
  FocusNode? commFieldFocusNode;
  TextEditingController? commFieldTextController;
  String? Function(BuildContext, String?)? commFieldTextControllerValidator;
  // State field(s) for DropColor1 widget.
  String? dropColor1Value;
  FormFieldController<String>? dropColor1ValueController;
  // State field(s) for DropColor2 widget.
  String? dropColor2Value;
  FormFieldController<String>? dropColor2ValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    commFieldFocusNode?.dispose();
    commFieldTextController?.dispose();
  }
}
