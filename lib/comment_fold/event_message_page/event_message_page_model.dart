import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'event_message_page_widget.dart' show EventMessagePageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EventMessagePageModel extends FlutterFlowModel<EventMessagePageWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for CommField widget.
  FocusNode? commFieldFocusNode1;
  TextEditingController? commFieldTextController1;
  String? Function(BuildContext, String?)? commFieldTextController1Validator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  EventMessagesRecord? commentRef;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for CommField widget.
  FocusNode? commFieldFocusNode2;
  TextEditingController? commFieldTextController2;
  String? Function(BuildContext, String?)? commFieldTextController2Validator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  EventMessagesRecord? commentEsportRef;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    commFieldFocusNode1?.dispose();
    commFieldTextController1?.dispose();

    commFieldFocusNode2?.dispose();
    commFieldTextController2?.dispose();
  }
}
