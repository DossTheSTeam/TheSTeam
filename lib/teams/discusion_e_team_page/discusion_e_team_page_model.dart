import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'discusion_e_team_page_widget.dart' show DiscusionETeamPageWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class DiscusionETeamPageModel
    extends FlutterFlowModel<DiscusionETeamPageWidget> {
  ///  Local state fields for this page.

  bool? showComment;

  bool? showAudio;

  bool? showImage;

  ///  State fields for stateful widgets in this page.

  AudioRecorder? audioRecorder;
  String? audioTeam;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  // State field(s) for CommField widget.
  FocusNode? commFieldFocusNode;
  TextEditingController? commFieldTextController;
  String? Function(BuildContext, String?)? commFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  TeamMessagesRecord? teamMessage;
  bool isDataUploading_uploadDataHat = false;
  FFUploadedFile uploadedLocalFile_uploadDataHat =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataHat = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    commFieldFocusNode?.dispose();
    commFieldTextController?.dispose();
  }
}
