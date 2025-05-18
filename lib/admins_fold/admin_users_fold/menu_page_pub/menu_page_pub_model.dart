import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'menu_page_pub_widget.dart' show MenuPagePubWidget;
import 'package:flutter/material.dart';

class MenuPagePubModel extends FlutterFlowModel<MenuPagePubWidget> {
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
