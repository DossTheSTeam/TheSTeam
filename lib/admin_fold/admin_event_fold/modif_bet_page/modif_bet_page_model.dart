import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'modif_bet_page_widget.dart' show ModifBetPageWidget;
import 'package:flutter/material.dart';

class ModifBetPageModel extends FlutterFlowModel<ModifBetPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ModifOddField widget.
  FocusNode? modifOddFieldFocusNode;
  TextEditingController? modifOddFieldTextController;
  String? Function(BuildContext, String?)? modifOddFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    modifOddFieldFocusNode?.dispose();
    modifOddFieldTextController?.dispose();
  }
}
