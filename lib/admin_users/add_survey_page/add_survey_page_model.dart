import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_survey_page_widget.dart' show AddSurveyPageWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class AddSurveyPageModel extends FlutterFlowModel<AddSurveyPageWidget> {
  ///  Local state fields for this page.

  bool? showImage1;

  bool? showImage2;

  bool? showAudio;

  bool? showVideo;

  bool? showText1;

  bool? showText2;

  bool? showChoices;

  String? youtubeId;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TitleField widget.
  FocusNode? titleFieldFocusNode;
  TextEditingController? titleFieldTextController;
  String? Function(BuildContext, String?)? titleFieldTextControllerValidator;
  bool isDataUploading_uploadData2ch = false;
  FFUploadedFile uploadedLocalFile_uploadData2ch =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData2ch = '';

  AudioRecorder? audioRecorder;
  String? audioPost;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Custom Action - extractYoutubeIdAction] action in Icon widget.
  String? extractIdResult;
  // State field(s) for DescriptionField widget.
  FocusNode? descriptionFieldFocusNode;
  TextEditingController? descriptionFieldTextController;
  String? Function(BuildContext, String?)?
      descriptionFieldTextControllerValidator;
  bool isDataUploading_uploadData90s = false;
  FFUploadedFile uploadedLocalFile_uploadData90s =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData90s = '';

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
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PostsRecord? postRef;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PostsRecord? postNewsRef;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PostsRecord? postNewsIOSRef;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PostsRecord? postNewsAndroidRef;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleFieldFocusNode?.dispose();
    titleFieldTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    descriptionFieldFocusNode?.dispose();
    descriptionFieldTextController?.dispose();

    choice1FieldFocusNode?.dispose();
    choice1FieldTextController?.dispose();

    choice2FieldFocusNode?.dispose();
    choice2FieldTextController?.dispose();

    choice3FieldFocusNode?.dispose();
    choice3FieldTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController7?.dispose();
  }
}
