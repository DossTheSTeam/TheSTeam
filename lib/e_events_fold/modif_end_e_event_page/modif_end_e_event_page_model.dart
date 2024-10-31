import '/flutter_flow/flutter_flow_util.dart';
import 'modif_end_e_event_page_widget.dart' show ModifEndEEventPageWidget;
import 'package:flutter/material.dart';

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
