import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'modif_text_post_widget.dart' show ModifTextPostWidget;
import 'package:flutter/material.dart';

class ModifTextPostModel extends FlutterFlowModel<ModifTextPostWidget> {
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
