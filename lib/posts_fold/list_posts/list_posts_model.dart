import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'list_posts_widget.dart' show ListPostsWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListPostsModel extends FlutterFlowModel<ListPostsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropLigueFoot widget.
  String? dropLigueFootValue;
  FormFieldController<String>? dropLigueFootValueController;
  // State field(s) for DropLigueBasket widget.
  String? dropLigueBasketValue;
  FormFieldController<String>? dropLigueBasketValueController;
  // State field(s) for DropLigueTennis widget.
  String? dropLigueTennisValue;
  FormFieldController<String>? dropLigueTennisValueController;
  // State field(s) for DropESport widget.
  String? dropESportValue;
  FormFieldController<String>? dropESportValueController;
  // State field(s) for DropELigue widget.
  String? dropELigueValue;
  FormFieldController<String>? dropELigueValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
