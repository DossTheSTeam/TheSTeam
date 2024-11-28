import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_event_page_widget.dart' show AddEventPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddEventPageModel extends FlutterFlowModel<AddEventPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for CountHour widget.
  int? countHourValue;
  // State field(s) for CountMinute widget.
  int? countMinuteValue;
  // State field(s) for NumWeekField widget.
  FocusNode? numWeekFieldFocusNode;
  TextEditingController? numWeekFieldTextController;
  String? Function(BuildContext, String?)? numWeekFieldTextControllerValidator;
  // State field(s) for DropSport widget.
  String? dropSportValue;
  FormFieldController<String>? dropSportValueController;
  // State field(s) for DropLigue widget.
  String? dropLigueValue;
  FormFieldController<String>? dropLigueValueController;
  // State field(s) for DropTeamDom widget.
  String? dropTeamDomValue;
  FormFieldController<String>? dropTeamDomValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EventsRecord? eventRef;
  // State field(s) for DropTeamExt widget.
  String? dropTeamExtValue;
  FormFieldController<String>? dropTeamExtValueController;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    numWeekFieldFocusNode?.dispose();
    numWeekFieldTextController?.dispose();
  }
}
