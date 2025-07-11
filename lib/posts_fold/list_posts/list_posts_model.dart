import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'list_posts_widget.dart' show ListPostsWidget;
import 'package:flutter/material.dart';

class ListPostsModel extends FlutterFlowModel<ListPostsWidget> {
  ///  Local state fields for this page.

  String? showLigueFilter = '';

  String? showSportFilter = '';

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropELigue widget.
  String? dropELigueValue;
  FormFieldController<String>? dropELigueValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
