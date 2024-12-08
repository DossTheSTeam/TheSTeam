import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modif_e_team_page_widget.dart' show ModifETeamPageWidget;
import 'package:flutter/material.dart';

class ModifETeamPageModel extends FlutterFlowModel<ModifETeamPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CommField widget.
  FocusNode? commFieldFocusNode;
  TextEditingController? commFieldTextController;
  String? Function(BuildContext, String?)? commFieldTextControllerValidator;
  // State field(s) for DropColor1 widget.
  String? dropColor1Value1;
  FormFieldController<String>? dropColor1ValueController1;
  // State field(s) for DropColor1 widget.
  String? dropColor1Value2;
  FormFieldController<String>? dropColor1ValueController2;
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
