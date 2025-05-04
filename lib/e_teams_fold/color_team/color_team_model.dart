import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'color_team_widget.dart' show ColorTeamWidget;
import 'package:flutter/material.dart';

class ColorTeamModel extends FlutterFlowModel<ColorTeamWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropColor1 widget.
  String? dropColor1Value;
  FormFieldController<String>? dropColor1ValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for DropColor2 widget.
  String? dropColor2Value;
  FormFieldController<String>? dropColor2ValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
