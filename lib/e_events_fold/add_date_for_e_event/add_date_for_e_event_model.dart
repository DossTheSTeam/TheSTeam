import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_date_for_e_event_widget.dart' show AddDateForEEventWidget;
import 'package:flutter/material.dart';

class AddDateForEEventModel extends FlutterFlowModel<AddDateForEEventWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for CountHour widget.
  int? countHourValue;
  // State field(s) for CountMinute widget.
  int? countMinuteValue;

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
