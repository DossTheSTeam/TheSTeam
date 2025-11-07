import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'my_profil_social_widget.dart' show MyProfilSocialWidget;
import 'package:flutter/material.dart';

class MyProfilSocialModel extends FlutterFlowModel<MyProfilSocialWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
