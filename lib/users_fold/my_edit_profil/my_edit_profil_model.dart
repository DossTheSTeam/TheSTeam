import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'my_edit_profil_widget.dart' show MyEditProfilWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyEditProfilModel extends FlutterFlowModel<MyEditProfilWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PseudoField widget.
  FocusNode? pseudoFieldFocusNode;
  TextEditingController? pseudoFieldTextController;
  String? Function(BuildContext, String?)? pseudoFieldTextControllerValidator;
  // State field(s) for NameField widget.
  FocusNode? nameFieldFocusNode1;
  TextEditingController? nameFieldTextController1;
  String? Function(BuildContext, String?)? nameFieldTextController1Validator;
  // State field(s) for NameField widget.
  FocusNode? nameFieldFocusNode2;
  TextEditingController? nameFieldTextController2;
  String? Function(BuildContext, String?)? nameFieldTextController2Validator;
  // State field(s) for PhoneField widget.
  FocusNode? phoneFieldFocusNode;
  TextEditingController? phoneFieldTextController;
  String? Function(BuildContext, String?)? phoneFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    pseudoFieldFocusNode?.dispose();
    pseudoFieldTextController?.dispose();

    nameFieldFocusNode1?.dispose();
    nameFieldTextController1?.dispose();

    nameFieldFocusNode2?.dispose();
    nameFieldTextController2?.dispose();

    phoneFieldFocusNode?.dispose();
    phoneFieldTextController?.dispose();
  }
}
