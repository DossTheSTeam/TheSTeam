import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'admin_member_entry_page_widget.dart' show AdminMemberEntryPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminMemberEntryPageModel
    extends FlutterFlowModel<AdminMemberEntryPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropReasons widget.
  String? dropReasonsValue;
  FormFieldController<String>? dropReasonsValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
