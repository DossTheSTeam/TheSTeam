import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'red_card_event_comm_page_widget.dart' show RedCardEventCommPageWidget;
import 'package:flutter/material.dart';

class RedCardEventCommPageModel
    extends FlutterFlowModel<RedCardEventCommPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropFouls widget.
  String? dropFoulsValue;
  FormFieldController<String>? dropFoulsValueController;
  // State field(s) for TextFoul widget.
  FocusNode? textFoulFocusNode;
  TextEditingController? textFoulTextController;
  String? Function(BuildContext, String?)? textFoulTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFoulFocusNode?.dispose();
    textFoulTextController?.dispose();
  }
}
