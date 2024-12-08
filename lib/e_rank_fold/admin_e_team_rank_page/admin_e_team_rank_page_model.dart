import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'admin_e_team_rank_page_widget.dart' show AdminETeamRankPageWidget;
import 'package:flutter/material.dart';

class AdminETeamRankPageModel
    extends FlutterFlowModel<AdminETeamRankPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for DropESports widget.
  String? dropESportsValue;
  FormFieldController<String>? dropESportsValueController;
  // State field(s) for DropLigue widget.
  String? dropLigueValue;
  FormFieldController<String>? dropLigueValueController;
  // State field(s) for DropDivision widget.
  String? dropDivisionValue;
  FormFieldController<String>? dropDivisionValueController;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {}
}
