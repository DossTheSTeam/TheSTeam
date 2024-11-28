import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'add_team_page_widget.dart' show AddTeamPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
