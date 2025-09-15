import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'event_message_page_widget.dart' show EventMessagePageWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class EventMessagePageModel extends FlutterFlowModel<EventMessagePageWidget> {
  ///  Local state fields for this page.

  bool? showComment;

  bool? showAudio;

  bool? showImage;

  bool? showEsportComment;

  bool? showEsportAudio;

  bool? showEsportImage;

  ///  State fields for stateful widgets in this page.

  AudioRecorder? audioRecorder;
  String? audioSport;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  // State field(s) for CommField widget.
  FocusNode? commFieldFocusNode;
  TextEditingController? commFieldTextController;
  String? Function(BuildContext, String?)? commFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  EventMessagesRecord? commentRef;
  // Stores action output result for [Cloud Function - customPushNotification] action in Icon widget.
  CustomPushNotificationCloudFunctionCallResponse? notificationResult;
  bool isDataUploading_uploadDataUtu = false;
  FFUploadedFile uploadedLocalFile_uploadDataUtu =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataUtu = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    commFieldFocusNode?.dispose();
    commFieldTextController?.dispose();
  }
}
