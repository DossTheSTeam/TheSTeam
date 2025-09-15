import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'red_card_post_comm_page_widget.dart' show RedCardPostCommPageWidget;
import 'package:flutter/material.dart';

class RedCardPostCommPageModel
    extends FlutterFlowModel<RedCardPostCommPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropFouls widget.
  String? dropFoulsValue;
  FormFieldController<String>? dropFoulsValueController;
  // State field(s) for TextFoul widget.
  FocusNode? textFoulFocusNode;
  TextEditingController? textFoulTextController;
  String? Function(BuildContext, String?)? textFoulTextControllerValidator;
  // Stores action output result for [Cloud Function - customPushNotification] action in Button widget.
  CustomPushNotificationCloudFunctionCallResponse? notificationResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFoulFocusNode?.dispose();
    textFoulTextController?.dispose();
  }
}
