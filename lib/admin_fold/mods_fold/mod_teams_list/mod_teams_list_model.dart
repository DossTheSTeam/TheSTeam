import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'mod_teams_list_widget.dart' show ModTeamsListWidget;
import 'package:flutter/material.dart';

class ModTeamsListModel extends FlutterFlowModel<ModTeamsListWidget> {
  ///  Local state fields for this page.

  String? showLigueFilter;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropSport widget.
  String? dropSportValue;
  FormFieldController<String>? dropSportValueController;
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
  // State field(s) for DropLigueBoxe widget.
  String? dropLigueBoxeValue;
  FormFieldController<String>? dropLigueBoxeValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
