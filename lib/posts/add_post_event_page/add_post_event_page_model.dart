import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_post_event_page_widget.dart' show AddPostEventPageWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class AddPostEventPageModel extends FlutterFlowModel<AddPostEventPageWidget> {
  ///  Local state fields for this page.

  bool? showText1;

  bool? showText2;

  bool? showImage1;

  bool? showImage2;

  bool? showAudio;

  bool? showVideo;

  String? youtubeId;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TitleField widget.
  FocusNode? titleFieldFocusNode;
  TextEditingController? titleFieldTextController;
  String? Function(BuildContext, String?)? titleFieldTextControllerValidator;
  bool isDataUploading_uploadDataFr6 = false;
  FFUploadedFile uploadedLocalFile_uploadDataFr6 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataFr6 = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  AudioRecorder? audioRecorder;
  String? audioPost;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Stores action output result for [Custom Action - extractYoutubeIdAction] action in Icon widget.
  String? extractIdResult;
  bool isDataUploading_uploadDataSib = false;
  FFUploadedFile uploadedLocalFile_uploadDataSib =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataSib = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PostsRecord? postRef;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleFieldFocusNode?.dispose();
    titleFieldTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    textFieldFocusNode3?.dispose();
    textController4?.dispose();
  }
}
