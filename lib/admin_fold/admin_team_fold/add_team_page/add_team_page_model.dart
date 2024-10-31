import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_team_page_widget.dart' show AddTeamPageWidget;
import 'package:flutter/material.dart';

class AddTeamPageModel extends FlutterFlowModel<AddTeamPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropLigueFoot widget.
  String? dropLigueFootValue;
  FormFieldController<String>? dropLigueFootValueController;
  // State field(s) for DropLigueBasket widget.
  String? dropLigueBasketValue;
  FormFieldController<String>? dropLigueBasketValueController;
  // State field(s) for DropLigueTennis widget.
  String? dropLigueTennisValue;
  FormFieldController<String>? dropLigueTennisValueController;
  // State field(s) for TeamNameField widget.
  FocusNode? teamNameFieldFocusNode;
  TextEditingController? teamNameFieldTextController;
  String? Function(BuildContext, String?)? teamNameFieldTextControllerValidator;
  // State field(s) for teamvalueField widget.
  FocusNode? teamvalueFieldFocusNode;
  TextEditingController? teamvalueFieldTextController;
  String? Function(BuildContext, String?)?
      teamvalueFieldTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for DropFootCup widget.
  String? dropFootCupValue;
  FormFieldController<String>? dropFootCupValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    teamNameFieldFocusNode?.dispose();
    teamNameFieldTextController?.dispose();

    teamvalueFieldFocusNode?.dispose();
    teamvalueFieldTextController?.dispose();
  }
}
