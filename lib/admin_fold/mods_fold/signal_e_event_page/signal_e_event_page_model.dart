import '/flutter_flow/flutter_flow_util.dart';
import 'signal_e_event_page_widget.dart' show SignalEEventPageWidget;
import 'package:flutter/material.dart';

class SignalEEventPageModel extends FlutterFlowModel<SignalEEventPageWidget> {
  ///  Local state fields for this page.

  int? scoreDom;

  int? scoreExt;

  String? draw;

  DocumentReference? eTeamWinRef;

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
