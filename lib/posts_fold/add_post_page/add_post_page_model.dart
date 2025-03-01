import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'add_post_page_widget.dart' show AddPostPageWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class AddPostPageModel extends FlutterFlowModel<AddPostPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropAdvice widget.
  String? dropAdviceValue;
  FormFieldController<String>? dropAdviceValueController;
  // State field(s) for TitleField widget.
  FocusNode? titleFieldFocusNode;
  TextEditingController? titleFieldTextController;
  String? Function(BuildContext, String?)? titleFieldTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

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
  }
}
