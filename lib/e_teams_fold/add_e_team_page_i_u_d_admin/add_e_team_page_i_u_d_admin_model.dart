import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_e_team_page_i_u_d_admin_widget.dart'
    show AddETeamPageIUDAdminWidget;
import 'package:flutter/material.dart';

class AddETeamPageIUDAdminModel
    extends FlutterFlowModel<AddETeamPageIUDAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropESports widget.
  String? dropESportsValue;
  FormFieldController<String>? dropESportsValueController;
  // State field(s) for ETeamNameField widget.
  FocusNode? eTeamNameFieldFocusNode;
  TextEditingController? eTeamNameFieldTextController;
  String? Function(BuildContext, String?)?
      eTeamNameFieldTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for DropColor1 widget.
  String? dropColor1Value;
  FormFieldController<String>? dropColor1ValueController;
  // State field(s) for DropColor2 widget.
  String? dropColor2Value;
  FormFieldController<String>? dropColor2ValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TeamsRecord? eTeamFootRef;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TeamsRecord? eTeamBasketRef;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TeamsRecord? eTeamWarRef;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    eTeamNameFieldFocusNode?.dispose();
    eTeamNameFieldTextController?.dispose();
  }
}
