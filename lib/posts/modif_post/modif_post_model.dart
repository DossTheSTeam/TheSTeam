import '/flutter_flow/flutter_flow_util.dart';
import 'modif_post_widget.dart' show ModifPostWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class ModifPostModel extends FlutterFlowModel<ModifPostWidget> {
  ///  Local state fields for this component.

  bool? showTitle;

  bool? showImage;

  bool? showVocal;

  bool? showImage2;

  bool? showURL;

  String? youtubeId;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  bool isDataUploading_uploadDataHj6 = false;
  FFUploadedFile uploadedLocalFile_uploadDataHj6 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataHj6 = '';

  bool isDataUploading_uploadDataQzm = false;
  FFUploadedFile uploadedLocalFile_uploadDataQzm =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataQzm = '';

  AudioRecorder? audioRecorder;
  String? audio;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Custom Action - extractYoutubeIdAction] action in Icon widget.
  String? extractIdResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
