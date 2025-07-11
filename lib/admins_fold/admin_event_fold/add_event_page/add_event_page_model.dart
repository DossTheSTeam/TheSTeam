import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
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
  // State field(s) for DropLigueFight widget.
  String? dropLigueFightValue1;
  FormFieldController<String>? dropLigueFightValueController1;
  // State field(s) for DropTeamDom widget.
  String? dropTeamDomValue;
  FormFieldController<String>? dropTeamDomValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EventsRecord? eventRef;
  // State field(s) for DropTeamExt widget.
  String? dropTeamExtValue;
  FormFieldController<String>? dropTeamExtValueController;
  // State field(s) for DropTeamMMADom widget.
  String? dropTeamMMADomValue;
  FormFieldController<String>? dropTeamMMADomValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EventsRecord? eventFightRef;
  // State field(s) for DropTeamMMAExt widget.
  String? dropTeamMMAExtValue;
  FormFieldController<String>? dropTeamMMAExtValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EventsRecord? eventAutoRef;
  // State field(s) for DropLigueFoot widget.
  String? dropLigueFootValue;
  FormFieldController<String>? dropLigueFootValueController;
  // State field(s) for DropLigueBasket widget.
  String? dropLigueBasketValue;
  FormFieldController<String>? dropLigueBasketValueController;
  // State field(s) for DropLigueTennis widget.
  String? dropLigueTennisValue;
  FormFieldController<String>? dropLigueTennisValueController;
  // State field(s) for DropLigueHockey widget.
  String? dropLigueHockeyValue;
  FormFieldController<String>? dropLigueHockeyValueController;
  // State field(s) for DropLigueMMA widget.
  String? dropLigueMMAValue;
  FormFieldController<String>? dropLigueMMAValueController;
  // State field(s) for DropLigueRugby widget.
  String? dropLigueRugbyValue;
  FormFieldController<String>? dropLigueRugbyValueController;
  // State field(s) for DropLigueMeca widget.
  String? dropLigueMecaValue;
  FormFieldController<String>? dropLigueMecaValueController;
  // State field(s) for DropLigueFight widget.
  String? dropLigueFightValue2;
  FormFieldController<String>? dropLigueFightValueController2;
  // State field(s) for DropTeamDomFoot widget.
  String? dropTeamDomFootValue;
  FormFieldController<String>? dropTeamDomFootValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EventsRecord? eventFootRef;
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
  // State field(s) for DropTeamDomHockey widget.
  String? dropTeamDomHockeyValue;
  FormFieldController<String>? dropTeamDomHockeyValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EventsRecord? eventHockeyRef;
  // State field(s) for DropTeamDomMMA widget.
  String? dropTeamDomMMAValue;
  FormFieldController<String>? dropTeamDomMMAValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EventsRecord? eventMMARef;
  // State field(s) for DropTeamDomRugby widget.
  String? dropTeamDomRugbyValue;
  FormFieldController<String>? dropTeamDomRugbyValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EventsRecord? eventRugbyRef;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EventsRecord? eventMecaRef;
  // State field(s) for DropTeamExtFoot widget.
  String? dropTeamExtFootValue;
  FormFieldController<String>? dropTeamExtFootValueController;
  // State field(s) for DropTeamExtBasket widget.
  String? dropTeamExtBasketValue;
  FormFieldController<String>? dropTeamExtBasketValueController;
  // State field(s) for DropTeamExtTennis widget.
  String? dropTeamExtTennisValue;
  FormFieldController<String>? dropTeamExtTennisValueController;
  // State field(s) for DropTeamExtHockey widget.
  String? dropTeamExtHockeyValue;
  FormFieldController<String>? dropTeamExtHockeyValueController;
  // State field(s) for DropTeamExtMMA widget.
  String? dropTeamExtMMAValue;
  FormFieldController<String>? dropTeamExtMMAValueController;
  // State field(s) for DropTeamExtRugby widget.
  String? dropTeamExtRugbyValue;
  FormFieldController<String>? dropTeamExtRugbyValueController;

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
