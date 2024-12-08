import '/flutter_flow/flutter_flow_util.dart';
import 'e_member_entry_page_widget.dart' show EMemberEntryPageWidget;
import 'package:flutter/material.dart';

class EMemberEntryPageModel extends FlutterFlowModel<EMemberEntryPageWidget> {
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
