import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_bet_page_widget.dart' show AddBetPageWidget;
import 'package:flutter/material.dart';

class AddBetPageModel extends FlutterFlowModel<AddBetPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CoteDomField widget.
  FocusNode? coteDomFieldFocusNode;
  TextEditingController? coteDomFieldTextController;
  String? Function(BuildContext, String?)? coteDomFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  BetsRecord? betDomRef;
  // State field(s) for CoteDrawField widget.
  FocusNode? coteDrawFieldFocusNode;
  TextEditingController? coteDrawFieldTextController;
  String? Function(BuildContext, String?)? coteDrawFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  BetsRecord? betDrawRef;
  // State field(s) for CoteExtField widget.
  FocusNode? coteExtFieldFocusNode;
  TextEditingController? coteExtFieldTextController;
  String? Function(BuildContext, String?)? coteExtFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  BetsRecord? betExtRef;
  // State field(s) for CoteL2MYesField widget.
  FocusNode? coteL2MYesFieldFocusNode;
  TextEditingController? coteL2MYesFieldTextController;
  String? Function(BuildContext, String?)?
      coteL2MYesFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  BetsRecord? betL2MYesRef;
  // State field(s) for CoteL2MNoField widget.
  FocusNode? coteL2MNoFieldFocusNode;
  TextEditingController? coteL2MNoFieldTextController;
  String? Function(BuildContext, String?)?
      coteL2MNoFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  BetsRecord? betL2MNoRef;
  // State field(s) for NbButsPoints widget.
  FocusNode? nbButsPointsFocusNode;
  TextEditingController? nbButsPointsTextController;
  String? Function(BuildContext, String?)? nbButsPointsTextControllerValidator;
  // State field(s) for CotePlusField widget.
  FocusNode? cotePlusFieldFocusNode;
  TextEditingController? cotePlusFieldTextController;
  String? Function(BuildContext, String?)? cotePlusFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  BetsRecord? betPointsPlusRef;
  // State field(s) for CoteMoinsField widget.
  FocusNode? coteMoinsFieldFocusNode;
  TextEditingController? coteMoinsFieldTextController;
  String? Function(BuildContext, String?)?
      coteMoinsFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  BetsRecord? betPointsMoinsRef;

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

    nbButsPointsFocusNode?.dispose();
    nbButsPointsTextController?.dispose();

    cotePlusFieldFocusNode?.dispose();
    cotePlusFieldTextController?.dispose();

    coteMoinsFieldFocusNode?.dispose();
    coteMoinsFieldTextController?.dispose();
  }
}
