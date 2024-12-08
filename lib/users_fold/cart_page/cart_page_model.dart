import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart_page_widget.dart' show CartPageWidget;
import 'package:flutter/material.dart';

class CartPageModel extends FlutterFlowModel<CartPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for MiseField widget.
  FocusNode? miseFieldFocusNode;
  TextEditingController? miseFieldTextController;
  String? Function(BuildContext, String?)? miseFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in ButtonAddBet widget.
  MyBetsRecord? myBetRef;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    miseFieldFocusNode?.dispose();
    miseFieldTextController?.dispose();
  }
}
