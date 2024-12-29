import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'e_team_rank_page_widget.dart' show ETeamRankPageWidget;
import 'package:flutter/material.dart';

class ETeamRankPageModel extends FlutterFlowModel<ETeamRankPageWidget> {
  ///  Local state fields for this page.

  String? showEsportFilter;

  String? showELIgueFilter;

  String? showEDivFilter;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropESport widget.
  String? dropESportValue;
  FormFieldController<String>? dropESportValueController;
  // State field(s) for DropLigue widget.
  String? dropLigueValue;
  FormFieldController<String>? dropLigueValueController;
  // State field(s) for DropDivision widget.
  String? dropDivisionValue;
  FormFieldController<String>? dropDivisionValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
