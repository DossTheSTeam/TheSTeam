import '/flutter_flow/flutter_flow_util.dart';
import 'number_phone_widget.dart' show NumberPhoneWidget;
import 'package:flutter/material.dart';

class NumberPhoneModel extends FlutterFlowModel<NumberPhoneWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PhoneField widget.
  FocusNode? phoneFieldFocusNode;
  TextEditingController? phoneFieldTextController;
  String? Function(BuildContext, String?)? phoneFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    phoneFieldFocusNode?.dispose();
    phoneFieldTextController?.dispose();
  }
}
