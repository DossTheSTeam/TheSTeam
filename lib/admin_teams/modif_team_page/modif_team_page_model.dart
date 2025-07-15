import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
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
  bool isDataUploading_uploadDataPvp = false;
  FFUploadedFile uploadedLocalFile_uploadDataPvp =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataPvp = '';

  bool isDataUploading_uploadData92n = false;
  FFUploadedFile uploadedLocalFile_uploadData92n =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData92n = '';

  // State field(s) for DropLigueFight widget.
  String? dropLigueFightValue;
  FormFieldController<String>? dropLigueFightValueController;
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
  // State field(s) for DropLigueRugby widget.
  String? dropLigueRugbyValue;
  FormFieldController<String>? dropLigueRugbyValueController;
  // State field(s) for DropLigueMeca widget.
  String? dropLigueMecaValue;
  FormFieldController<String>? dropLigueMecaValueController;
  // State field(s) for DropFootCup widget.
  String? dropFootCupValue;
  FormFieldController<String>? dropFootCupValueController;
  // State field(s) for DropRugbyCup widget.
  String? dropRugbyCupValue;
  FormFieldController<String>? dropRugbyCupValueController;
  // State field(s) for NumEventsField widget.
  FocusNode? numEventsFieldFocusNode1;
  TextEditingController? numEventsFieldTextController1;
  String? Function(BuildContext, String?)?
      numEventsFieldTextController1Validator;
  // State field(s) for PointsField widget.
  FocusNode? pointsFieldFocusNode1;
  TextEditingController? pointsFieldTextController1;
  String? Function(BuildContext, String?)? pointsFieldTextController1Validator;
  // State field(s) for WinsField widget.
  FocusNode? winsFieldFocusNode1;
  TextEditingController? winsFieldTextController1;
  String? Function(BuildContext, String?)? winsFieldTextController1Validator;
  // State field(s) for LoosesField widget.
  FocusNode? loosesFieldFocusNode1;
  TextEditingController? loosesFieldTextController1;
  String? Function(BuildContext, String?)? loosesFieldTextController1Validator;
  // State field(s) for DrawsField widget.
  FocusNode? drawsFieldFocusNode1;
  TextEditingController? drawsFieldTextController1;
  String? Function(BuildContext, String?)? drawsFieldTextController1Validator;
  // State field(s) for L2MField widget.
  FocusNode? l2MFieldFocusNode1;
  TextEditingController? l2MFieldTextController1;
  String? Function(BuildContext, String?)? l2MFieldTextController1Validator;
  // State field(s) for GoalsInField widget.
  FocusNode? goalsInFieldFocusNode1;
  TextEditingController? goalsInFieldTextController1;
  String? Function(BuildContext, String?)? goalsInFieldTextController1Validator;
  // State field(s) for GoalsOutField widget.
  FocusNode? goalsOutFieldFocusNode1;
  TextEditingController? goalsOutFieldTextController1;
  String? Function(BuildContext, String?)?
      goalsOutFieldTextController1Validator;
  // State field(s) for NumEventsField widget.
  FocusNode? numEventsFieldFocusNode2;
  TextEditingController? numEventsFieldTextController2;
  String? Function(BuildContext, String?)?
      numEventsFieldTextController2Validator;
  // State field(s) for PointsField widget.
  FocusNode? pointsFieldFocusNode2;
  TextEditingController? pointsFieldTextController2;
  String? Function(BuildContext, String?)? pointsFieldTextController2Validator;
  // State field(s) for WinsField widget.
  FocusNode? winsFieldFocusNode2;
  TextEditingController? winsFieldTextController2;
  String? Function(BuildContext, String?)? winsFieldTextController2Validator;
  // State field(s) for LoosesField widget.
  FocusNode? loosesFieldFocusNode2;
  TextEditingController? loosesFieldTextController2;
  String? Function(BuildContext, String?)? loosesFieldTextController2Validator;
  // State field(s) for DrawsField widget.
  FocusNode? drawsFieldFocusNode2;
  TextEditingController? drawsFieldTextController2;
  String? Function(BuildContext, String?)? drawsFieldTextController2Validator;
  // State field(s) for L2MField widget.
  FocusNode? l2MFieldFocusNode2;
  TextEditingController? l2MFieldTextController2;
  String? Function(BuildContext, String?)? l2MFieldTextController2Validator;
  // State field(s) for GoalsInField widget.
  FocusNode? goalsInFieldFocusNode2;
  TextEditingController? goalsInFieldTextController2;
  String? Function(BuildContext, String?)? goalsInFieldTextController2Validator;
  // State field(s) for GoalsOutField widget.
  FocusNode? goalsOutFieldFocusNode2;
  TextEditingController? goalsOutFieldTextController2;
  String? Function(BuildContext, String?)?
      goalsOutFieldTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    teamNameFieldFocusNode?.dispose();
    teamNameFieldTextController?.dispose();

    teamvalueFieldFocusNode?.dispose();
    teamvalueFieldTextController?.dispose();

    numEventsFieldFocusNode1?.dispose();
    numEventsFieldTextController1?.dispose();

    pointsFieldFocusNode1?.dispose();
    pointsFieldTextController1?.dispose();

    winsFieldFocusNode1?.dispose();
    winsFieldTextController1?.dispose();

    loosesFieldFocusNode1?.dispose();
    loosesFieldTextController1?.dispose();

    drawsFieldFocusNode1?.dispose();
    drawsFieldTextController1?.dispose();

    l2MFieldFocusNode1?.dispose();
    l2MFieldTextController1?.dispose();

    goalsInFieldFocusNode1?.dispose();
    goalsInFieldTextController1?.dispose();

    goalsOutFieldFocusNode1?.dispose();
    goalsOutFieldTextController1?.dispose();

    numEventsFieldFocusNode2?.dispose();
    numEventsFieldTextController2?.dispose();

    pointsFieldFocusNode2?.dispose();
    pointsFieldTextController2?.dispose();

    winsFieldFocusNode2?.dispose();
    winsFieldTextController2?.dispose();

    loosesFieldFocusNode2?.dispose();
    loosesFieldTextController2?.dispose();

    drawsFieldFocusNode2?.dispose();
    drawsFieldTextController2?.dispose();

    l2MFieldFocusNode2?.dispose();
    l2MFieldTextController2?.dispose();

    goalsInFieldFocusNode2?.dispose();
    goalsInFieldTextController2?.dispose();

    goalsOutFieldFocusNode2?.dispose();
    goalsOutFieldTextController2?.dispose();
  }
}
