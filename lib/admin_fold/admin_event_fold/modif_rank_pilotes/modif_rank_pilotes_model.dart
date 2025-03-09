import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'modif_rank_pilotes_widget.dart' show ModifRankPilotesWidget;
import 'package:flutter/material.dart';

class ModifRankPilotesModel extends FlutterFlowModel<ModifRankPilotesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for DropTeam1 widget.
  String? dropTeam1Value;
  FormFieldController<String>? dropTeam1ValueController;
  // State field(s) for DropTeam2 widget.
  String? dropTeam2Value;
  FormFieldController<String>? dropTeam2ValueController;
  // State field(s) for DropTeam3 widget.
  String? dropTeam3Value;
  FormFieldController<String>? dropTeam3ValueController;
  // State field(s) for DropTeam4 widget.
  String? dropTeam4Value;
  FormFieldController<String>? dropTeam4ValueController;
  // State field(s) for DropTeam5 widget.
  String? dropTeam5Value;
  FormFieldController<String>? dropTeam5ValueController;
  // State field(s) for DropTeam6 widget.
  String? dropTeam6Value;
  FormFieldController<String>? dropTeam6ValueController;
  // State field(s) for DropTeam7 widget.
  String? dropTeam7Value;
  FormFieldController<String>? dropTeam7ValueController;
  // State field(s) for DropTeam8 widget.
  String? dropTeam8Value;
  FormFieldController<String>? dropTeam8ValueController;
  // State field(s) for DropTeam9 widget.
  String? dropTeam9Value;
  FormFieldController<String>? dropTeam9ValueController;
  // State field(s) for DropTeam10 widget.
  String? dropTeam10Value1;
  FormFieldController<String>? dropTeam10ValueController1;
  // State field(s) for DropTeam10 widget.
  String? dropTeam10Value2;
  FormFieldController<String>? dropTeam10ValueController2;
  // State field(s) for DropTeam10 widget.
  String? dropTeam10Value3;
  FormFieldController<String>? dropTeam10ValueController3;
  // State field(s) for DropTeam10 widget.
  String? dropTeam10Value4;
  FormFieldController<String>? dropTeam10ValueController4;
  // State field(s) for DropTeam10 widget.
  String? dropTeam10Value5;
  FormFieldController<String>? dropTeam10ValueController5;
  // State field(s) for DropTeam10 widget.
  String? dropTeam10Value6;
  FormFieldController<String>? dropTeam10ValueController6;

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
