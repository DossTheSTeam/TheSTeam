import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
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
  // State field(s) for DropLigueHockey widget.
  String? dropLigueHockeyValue;
  FormFieldController<String>? dropLigueHockeyValueController;
  // State field(s) for DropLigueFight widget.
  String? dropLigueFightValue1;
  FormFieldController<String>? dropLigueFightValueController1;
  // State field(s) for DropLigueRugby widget.
  String? dropLigueRugbyValue;
  FormFieldController<String>? dropLigueRugbyValueController;
  // State field(s) for DropLigueMeca widget.
  String? dropLigueMecaValue;
  FormFieldController<String>? dropLigueMecaValueController;
  // State field(s) for TeamNameField widget.
  FocusNode? teamNameFieldFocusNode;
  TextEditingController? teamNameFieldTextController;
  String? Function(BuildContext, String?)? teamNameFieldTextControllerValidator;
  // State field(s) for teamvalueField widget.
  FocusNode? teamvalueFieldFocusNode;
  TextEditingController? teamvalueFieldTextController;
  String? Function(BuildContext, String?)?
      teamvalueFieldTextControllerValidator;
  bool isDataUploading_uploadDataHbx = false;
  FFUploadedFile uploadedLocalFile_uploadDataHbx =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataHbx = '';

  // State field(s) for DropFootCup widget.
  String? dropFootCupValue;
  FormFieldController<String>? dropFootCupValueController;
  // State field(s) for DropLigueFight widget.
  String? dropLigueFightValue2;
  FormFieldController<String>? dropLigueFightValueController2;
  // State field(s) for DropRugbyCup widget.
  String? dropRugbyCupValue;
  FormFieldController<String>? dropRugbyCupValueController;

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
