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
  // State field(s) for DropLigueMMA widget.
  String? dropLigueMMAValue;
  FormFieldController<String>? dropLigueMMAValueController;
  // State field(s) for DropLigueBoxe widget.
  String? dropLigueBoxeValue;
  FormFieldController<String>? dropLigueBoxeValueController;
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
