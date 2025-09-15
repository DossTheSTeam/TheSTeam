import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'the_s_team_post_page_widget.dart' show TheSTeamPostPageWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class TheSTeamPostPageModel extends FlutterFlowModel<TheSTeamPostPageWidget> {
  ///  Local state fields for this page.

  bool? showComment;

  bool? showAudio;

  bool? showImage;

  ///  State fields for stateful widgets in this page.

  AudioRecorder? audioRecorder;
  String? audio;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  // State field(s) for CommField widget.
  FocusNode? commFieldFocusNode;
  TextEditingController? commFieldTextController;
  String? Function(BuildContext, String?)? commFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  PostMessagesRecord? commentRef;
  // Stores action output result for [Cloud Function - customPushNotification] action in Icon widget.
  CustomPushNotificationCloudFunctionCallResponse? notificationResult;
  bool isDataUploading_uploadDataYnz = false;
  FFUploadedFile uploadedLocalFile_uploadDataYnz =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataYnz = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    commFieldFocusNode?.dispose();
    commFieldTextController?.dispose();
  }
}
