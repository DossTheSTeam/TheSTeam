import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'add_post_page_widget.dart' show AddPostPageWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class AddPostPageModel extends FlutterFlowModel<AddPostPageWidget> {
  ///  Local state fields for this page.

  bool? showText1;

  bool? showText2;

  bool? showImage1;

  bool? showImage2;

  bool? showAudio;

  bool? showVideo;

  String? youtubeVideoId;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropAdvice widget.
  String? dropAdviceValue;
  FormFieldController<String>? dropAdviceValueController;
  // State field(s) for TitleField widget.
  FocusNode? titleFieldFocusNode;
  TextEditingController? titleFieldTextController;
  String? Function(BuildContext, String?)? titleFieldTextControllerValidator;
  bool isDataUploading_uploadDataErx = false;
  FFUploadedFile uploadedLocalFile_uploadDataErx =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataErx = '';

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
  String? extractedIdResult;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  bool isDataUploading_uploadData8yc = false;
  FFUploadedFile uploadedLocalFile_uploadData8yc =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData8yc = '';

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PostsRecord? postRef;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PostsRecord? adminPostRef;

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
