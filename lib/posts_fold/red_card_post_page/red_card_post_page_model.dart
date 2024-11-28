import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'red_card_post_page_widget.dart' show RedCardPostPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RedCardPostPageModel extends FlutterFlowModel<RedCardPostPageWidget> {
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
