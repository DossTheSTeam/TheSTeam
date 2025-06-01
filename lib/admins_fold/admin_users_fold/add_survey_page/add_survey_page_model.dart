import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_survey_page_widget.dart' show AddSurveyPageWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class AddSurveyPageModel extends FlutterFlowModel<AddSurveyPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TitleField widget.
  FocusNode? titleFieldFocusNode;
  TextEditingController? titleFieldTextController;
  String? Function(BuildContext, String?)? titleFieldTextControllerValidator;
  bool isDataUploading_uploadData2ch = false;
  FFUploadedFile uploadedLocalFile_uploadData2ch =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData2ch = '';

  AudioRecorder? audioRecorder;
  String? audioPost;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for DescriptionField widget.
  FocusNode? descriptionFieldFocusNode;
  TextEditingController? descriptionFieldTextController;
  String? Function(BuildContext, String?)?
      descriptionFieldTextControllerValidator;
  // State field(s) for Choice1Field widget.
  FocusNode? choice1FieldFocusNode;
  TextEditingController? choice1FieldTextController;
  String? Function(BuildContext, String?)? choice1FieldTextControllerValidator;
  // State field(s) for Choice2Field widget.
  FocusNode? choice2FieldFocusNode;
  TextEditingController? choice2FieldTextController;
  String? Function(BuildContext, String?)? choice2FieldTextControllerValidator;
  // State field(s) for Choice3Field widget.
  FocusNode? choice3FieldFocusNode;
  TextEditingController? choice3FieldTextController;
  String? Function(BuildContext, String?)? choice3FieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PostsRecord? postRef;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PostsRecord? postNewsRef;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleFieldFocusNode?.dispose();
    titleFieldTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();

    descriptionFieldFocusNode?.dispose();
    descriptionFieldTextController?.dispose();

    choice1FieldFocusNode?.dispose();
    choice1FieldTextController?.dispose();

    choice2FieldFocusNode?.dispose();
    choice2FieldTextController?.dispose();

    choice3FieldFocusNode?.dispose();
    choice3FieldTextController?.dispose();
  }
}
