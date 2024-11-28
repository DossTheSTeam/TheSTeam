import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'modif_end_e_event_page_widget.dart' show ModifEndEEventPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModifEndEEventPageModel
    extends FlutterFlowModel<ModifEndEEventPageWidget> {
  ///  Local state fields for this page.

  String? draw;

  int? scoreDom;

  int? scoreExt;

  DocumentReference? eTeamRef;

  ///  State fields for stateful widgets in this page.

  // State field(s) for ScoreDomField widget.
  FocusNode? scoreDomFieldFocusNode;
  TextEditingController? scoreDomFieldTextController;
  String? Function(BuildContext, String?)? scoreDomFieldTextControllerValidator;
  // State field(s) for ScoreExtField widget.
  FocusNode? scoreExtFieldFocusNode;
  TextEditingController? scoreExtFieldTextController;
  String? Function(BuildContext, String?)? scoreExtFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    scoreDomFieldFocusNode?.dispose();
    scoreDomFieldTextController?.dispose();

    scoreExtFieldFocusNode?.dispose();
    scoreExtFieldTextController?.dispose();
  }
}
