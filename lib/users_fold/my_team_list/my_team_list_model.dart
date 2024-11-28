import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'my_team_list_widget.dart' show MyTeamListWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyTeamListModel extends FlutterFlowModel<MyTeamListWidget> {
  ///  Local state fields for this page.

  DocumentReference? showMyTeams;

  DocumentReference? showMyTeamslike;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
