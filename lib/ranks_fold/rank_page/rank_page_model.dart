import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'rank_page_widget.dart' show RankPageWidget;
import 'package:flutter/material.dart';

class RankPageModel extends FlutterFlowModel<RankPageWidget> {
  ///  Local state fields for this page.

  String? showLigueFilter;

  String? showDivFilter;

  ///  State fields for stateful widgets in this page.

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
