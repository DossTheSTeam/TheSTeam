import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'event_page_widget.dart' show EventPageWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:record/record.dart';

class EventPageModel extends FlutterFlowModel<EventPageWidget> {
  ///  Local state fields for this page.

  bool? showComment = false;

  bool? showImage = false;

  bool? showAudio = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CartRecord? cartRef;
  AudioRecorder? audioRecorder;
  String? audio;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  // State field(s) for CommField widget.
  FocusNode? commFieldFocusNode;
  TextEditingController? commFieldTextController;
  String? Function(BuildContext, String?)? commFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  EventMessagesRecord? commentRef;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  AudioPlayer? soundPlayer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    commFieldFocusNode?.dispose();
    commFieldTextController?.dispose();
  }
}
