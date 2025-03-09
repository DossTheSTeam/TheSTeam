import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'ligues_rank_page_widget.dart' show LiguesRankPageWidget;
import 'package:flutter/material.dart';

class LiguesRankPageModel extends FlutterFlowModel<LiguesRankPageWidget> {
  ///  Local state fields for this page.

  String? showLigue;

  String? showSport;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropSport widget.
  String? dropSportValue;
  FormFieldController<String>? dropSportValueController;
  // State field(s) for DropLigueFoot widget.
  String? dropLigueFootValue;
  FormFieldController<String>? dropLigueFootValueController;
  // State field(s) for DropCoupeFoot widget.
  String? dropCoupeFootValue;
  FormFieldController<String>? dropCoupeFootValueController;
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
  // State field(s) for DropLigueRugby widget.
  String? dropLigueRugbyValue;
  FormFieldController<String>? dropLigueRugbyValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
