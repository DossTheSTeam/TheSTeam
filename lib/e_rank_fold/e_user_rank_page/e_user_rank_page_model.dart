import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'e_user_rank_page_widget.dart' show EUserRankPageWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EUserRankPageModel extends FlutterFlowModel<EUserRankPageWidget> {
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
