import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_event_page_widget.dart' show AddEventPageWidget;
import 'package:flutter/material.dart';

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
  // State field(s) for DropLigueBasket widget.
  String? dropLigueBasketValue;
  FormFieldController<String>? dropLigueBasketValueController;
  // State field(s) for DropLigueTennis widget.
  String? dropLigueTennisValue;
  FormFieldController<String>? dropLigueTennisValueController;
  // State field(s) for DropLigueFight widget.
  String? dropLigueFightValue;
  FormFieldController<String>? dropLigueFightValueController;
  // State field(s) for DropLigueHockey widget.
  String? dropLigueHockeyValue;
  FormFieldController<String>? dropLigueHockeyValueController;
  // State field(s) for DropTeamDomBasket widget.
  String? dropTeamDomBasketValue;
  FormFieldController<String>? dropTeamDomBasketValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EventsRecord? eventBasketRef;
  // State field(s) for DropTeamDomTennis widget.
  String? dropTeamDomTennisValue;
  FormFieldController<String>? dropTeamDomTennisValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EventsRecord? eventTennisRef;
  // State field(s) for DropTeamDomFight widget.
  String? dropTeamDomFightValue;
  FormFieldController<String>? dropTeamDomFightValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EventsRecord? eventFightRef;
  // State field(s) for DropTeamDomHockey widget.
  String? dropTeamDomHockeyValue;
  FormFieldController<String>? dropTeamDomHockeyValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EventsRecord? eventHockeyRef;
  // State field(s) for DropTeamExtBasket widget.
  String? dropTeamExtBasketValue;
  FormFieldController<String>? dropTeamExtBasketValueController;
  // State field(s) for DropTeamExtTennis widget.
  String? dropTeamExtTennisValue;
  FormFieldController<String>? dropTeamExtTennisValueController;
  // State field(s) for DropTeamExtFight widget.
  String? dropTeamExtFightValue;
  FormFieldController<String>? dropTeamExtFightValueController;
  // State field(s) for DropTeamExtHockey widget.
  String? dropTeamExtHockeyValue;
  FormFieldController<String>? dropTeamExtHockeyValueController;

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
