import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'member_entry_page_widget.dart' show MemberEntryPageWidget;
import 'package:flutter/material.dart';

class MemberEntryPageModel extends FlutterFlowModel<MemberEntryPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Cloud Function - customPushNotification] action in Button widget.
  CustomPushNotificationCloudFunctionCallResponse? notificationResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
