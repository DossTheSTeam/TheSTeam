import '/flutter_flow/flutter_flow_util.dart';
import 'add_bet_page_widget.dart' show AddBetPageWidget;
import 'package:flutter/material.dart';

class AddBetPageModel extends FlutterFlowModel<AddBetPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CoteDomField widget.
  FocusNode? coteDomFieldFocusNode;
  TextEditingController? coteDomFieldTextController;
  String? Function(BuildContext, String?)? coteDomFieldTextControllerValidator;
  // State field(s) for CoteDrawField widget.
  FocusNode? coteDrawFieldFocusNode;
  TextEditingController? coteDrawFieldTextController;
  String? Function(BuildContext, String?)? coteDrawFieldTextControllerValidator;
  // State field(s) for CoteExtField widget.
  FocusNode? coteExtFieldFocusNode;
  TextEditingController? coteExtFieldTextController;
  String? Function(BuildContext, String?)? coteExtFieldTextControllerValidator;
  // State field(s) for CoteL2MYesField widget.
  FocusNode? coteL2MYesFieldFocusNode;
  TextEditingController? coteL2MYesFieldTextController;
  String? Function(BuildContext, String?)?
      coteL2MYesFieldTextControllerValidator;
  // State field(s) for CoteL2MNoField widget.
  FocusNode? coteL2MNoFieldFocusNode;
  TextEditingController? coteL2MNoFieldTextController;
  String? Function(BuildContext, String?)?
      coteL2MNoFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    coteDomFieldFocusNode?.dispose();
    coteDomFieldTextController?.dispose();

    coteDrawFieldFocusNode?.dispose();
    coteDrawFieldTextController?.dispose();

    coteExtFieldFocusNode?.dispose();
    coteExtFieldTextController?.dispose();

    coteL2MYesFieldFocusNode?.dispose();
    coteL2MYesFieldTextController?.dispose();

    coteL2MNoFieldFocusNode?.dispose();
    coteL2MNoFieldTextController?.dispose();
  }
}
