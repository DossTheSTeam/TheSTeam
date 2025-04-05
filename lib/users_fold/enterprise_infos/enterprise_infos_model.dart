import '/flutter_flow/flutter_flow_util.dart';
import 'enterprise_infos_widget.dart' show EnterpriseInfosWidget;
import 'package:flutter/material.dart';

class EnterpriseInfosModel extends FlutterFlowModel<EnterpriseInfosWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for EnterpriseField widget.
  FocusNode? enterpriseFieldFocusNode;
  TextEditingController? enterpriseFieldTextController;
  String? Function(BuildContext, String?)?
      enterpriseFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    enterpriseFieldFocusNode?.dispose();
    enterpriseFieldTextController?.dispose();
  }
}
