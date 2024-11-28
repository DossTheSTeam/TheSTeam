import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'boss_notif_e_event_page_i_u_d_admin_widget.dart'
    show BossNotifEEventPageIUDAdminWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BossNotifEEventPageIUDAdminModel
    extends FlutterFlowModel<BossNotifEEventPageIUDAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EventsRecord? eEventRef;
  // State field(s) for DropReasons widget.
  String? dropReasonsValue;
  FormFieldController<String>? dropReasonsValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
