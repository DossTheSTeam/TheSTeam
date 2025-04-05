import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'list_events_widget.dart' show ListEventsWidget;
import 'package:flutter/material.dart';

class ListEventsModel extends FlutterFlowModel<ListEventsWidget> {
  ///  Local state fields for this page.

  String? showSportFilter;

  bool? showStatutFilter = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropSport widget.
  String? dropSportValue;
  FormFieldController<String>? dropSportValueController;
  // State field(s) for DropESport widget.
  String? dropESportValue;
  FormFieldController<String>? dropESportValueController;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

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
