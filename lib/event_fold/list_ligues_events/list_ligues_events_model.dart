import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'list_ligues_events_widget.dart' show ListLiguesEventsWidget;
import 'package:flutter/material.dart';

class ListLiguesEventsModel extends FlutterFlowModel<ListLiguesEventsWidget> {
  ///  Local state fields for this page.

  bool? statusEvents = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropESport widget.
  String? dropESportValue;
  FormFieldController<String>? dropESportValueController;
  // State field(s) for DropELigue widget.
  String? dropELigueValue;
  FormFieldController<String>? dropELigueValueController;
  // State field(s) for DropLigueFoot widget.
  String? dropLigueFootValue;
  FormFieldController<String>? dropLigueFootValueController;
  // State field(s) for DropLigueBasket widget.
  String? dropLigueBasketValue;
  FormFieldController<String>? dropLigueBasketValueController;
  // State field(s) for DropLigueTennis widget.
  String? dropLigueTennisValue;
  FormFieldController<String>? dropLigueTennisValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
