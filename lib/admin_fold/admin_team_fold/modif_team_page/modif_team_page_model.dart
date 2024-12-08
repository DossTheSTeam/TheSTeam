import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modif_team_page_widget.dart' show ModifTeamPageWidget;
import 'package:flutter/material.dart';

class ModifTeamPageModel extends FlutterFlowModel<ModifTeamPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TeamNameField widget.
  FocusNode? teamNameFieldFocusNode;
  TextEditingController? teamNameFieldTextController;
  String? Function(BuildContext, String?)? teamNameFieldTextControllerValidator;
  // State field(s) for teamvalueField widget.
  FocusNode? teamvalueFieldFocusNode;
  TextEditingController? teamvalueFieldTextController;
  String? Function(BuildContext, String?)?
      teamvalueFieldTextControllerValidator;
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

  // State field(s) for DropLigue widget.
  String? dropLigueValue;
  FormFieldController<String>? dropLigueValueController;
  // State field(s) for DropFootCup widget.
  String? dropFootCupValue;
  FormFieldController<String>? dropFootCupValueController;
  // State field(s) for NumEventsField widget.
  FocusNode? numEventsFieldFocusNode;
  TextEditingController? numEventsFieldTextController;
  String? Function(BuildContext, String?)?
      numEventsFieldTextControllerValidator;
  // State field(s) for PointsField widget.
  FocusNode? pointsFieldFocusNode;
  TextEditingController? pointsFieldTextController;
  String? Function(BuildContext, String?)? pointsFieldTextControllerValidator;
  // State field(s) for WinsField widget.
  FocusNode? winsFieldFocusNode;
  TextEditingController? winsFieldTextController;
  String? Function(BuildContext, String?)? winsFieldTextControllerValidator;
  // State field(s) for LoosesField widget.
  FocusNode? loosesFieldFocusNode;
  TextEditingController? loosesFieldTextController;
  String? Function(BuildContext, String?)? loosesFieldTextControllerValidator;
  // State field(s) for DrawsField widget.
  FocusNode? drawsFieldFocusNode;
  TextEditingController? drawsFieldTextController;
  String? Function(BuildContext, String?)? drawsFieldTextControllerValidator;
  // State field(s) for GoalsInField widget.
  FocusNode? goalsInFieldFocusNode;
  TextEditingController? goalsInFieldTextController;
  String? Function(BuildContext, String?)? goalsInFieldTextControllerValidator;
  // State field(s) for GoalsOutField widget.
  FocusNode? goalsOutFieldFocusNode;
  TextEditingController? goalsOutFieldTextController;
  String? Function(BuildContext, String?)? goalsOutFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    teamNameFieldFocusNode?.dispose();
    teamNameFieldTextController?.dispose();

    teamvalueFieldFocusNode?.dispose();
    teamvalueFieldTextController?.dispose();

    numEventsFieldFocusNode?.dispose();
    numEventsFieldTextController?.dispose();

    pointsFieldFocusNode?.dispose();
    pointsFieldTextController?.dispose();

    winsFieldFocusNode?.dispose();
    winsFieldTextController?.dispose();

    loosesFieldFocusNode?.dispose();
    loosesFieldTextController?.dispose();

    drawsFieldFocusNode?.dispose();
    drawsFieldTextController?.dispose();

    goalsInFieldFocusNode?.dispose();
    goalsInFieldTextController?.dispose();

    goalsOutFieldFocusNode?.dispose();
    goalsOutFieldTextController?.dispose();
  }
}
