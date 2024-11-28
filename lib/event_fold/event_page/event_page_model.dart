import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'event_page_widget.dart' show EventPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EventPageModel extends FlutterFlowModel<EventPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CartRecord? cartRef;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for CommField widget.
  FocusNode? commFieldFocusNode;
  TextEditingController? commFieldTextController;
  String? Function(BuildContext, String?)? commFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  EventMessagesRecord? commentRef;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    commFieldFocusNode?.dispose();
    commFieldTextController?.dispose();
  }
}
