import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'my_edit_profil_widget.dart' show MyEditProfilWidget;
import 'package:flutter/material.dart';

class MyEditProfilModel extends FlutterFlowModel<MyEditProfilWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropColor1 widget.
  String? dropColor1Value1;
  FormFieldController<String>? dropColor1ValueController1;
  // State field(s) for DropColor1 widget.
  String? dropColor1Value2;
  FormFieldController<String>? dropColor1ValueController2;
  // State field(s) for PseudoField widget.
  FocusNode? pseudoFieldFocusNode;
  TextEditingController? pseudoFieldTextController;
  String? Function(BuildContext, String?)? pseudoFieldTextControllerValidator;
  // State field(s) for NameField widget.
  FocusNode? nameFieldFocusNode1;
  TextEditingController? nameFieldTextController1;
  String? Function(BuildContext, String?)? nameFieldTextController1Validator;
  // State field(s) for NameField widget.
  FocusNode? nameFieldFocusNode2;
  TextEditingController? nameFieldTextController2;
  String? Function(BuildContext, String?)? nameFieldTextController2Validator;
  // State field(s) for PhoneField widget.
  FocusNode? phoneFieldFocusNode;
  TextEditingController? phoneFieldTextController;
  String? Function(BuildContext, String?)? phoneFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    pseudoFieldFocusNode?.dispose();
    pseudoFieldTextController?.dispose();

    nameFieldFocusNode1?.dispose();
    nameFieldTextController1?.dispose();

    nameFieldFocusNode2?.dispose();
    nameFieldTextController2?.dispose();

    phoneFieldFocusNode?.dispose();
    phoneFieldTextController?.dispose();
  }
}
