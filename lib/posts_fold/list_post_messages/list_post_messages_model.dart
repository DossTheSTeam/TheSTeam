import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'list_post_messages_widget.dart' show ListPostMessagesWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListPostMessagesModel extends FlutterFlowModel<ListPostMessagesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropLigue widget.
  String? dropLigueValue;
  FormFieldController<String>? dropLigueValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
