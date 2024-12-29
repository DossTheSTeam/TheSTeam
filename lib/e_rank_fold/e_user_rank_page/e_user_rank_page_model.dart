import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'e_user_rank_page_widget.dart' show EUserRankPageWidget;
import 'package:flutter/material.dart';

class EUserRankPageModel extends FlutterFlowModel<EUserRankPageWidget> {
  ///  Local state fields for this page.

  String? showESportFilter;

  String? showELigueFilter;

  String? showEDivFilter;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropESport widget.
  String? dropESportValue;
  FormFieldController<String>? dropESportValueController;
  // State field(s) for DropELigue widget.
  String? dropELigueValue;
  FormFieldController<String>? dropELigueValueController;
  // State field(s) for DropEDivision widget.
  String? dropEDivisionValue;
  FormFieldController<String>? dropEDivisionValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
