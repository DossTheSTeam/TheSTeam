import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'modif_event_page_widget.dart' show ModifEventPageWidget;
import 'package:flutter/material.dart';

class ModifEventPageModel extends FlutterFlowModel<ModifEventPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ModifOddField widget.
  FocusNode? modifOddFieldFocusNode;
  TextEditingController? modifOddFieldTextController;
  String? Function(BuildContext, String?)? modifOddFieldTextControllerValidator;
  bool isDataUploading_uploadDataGa3 = false;
  FFUploadedFile uploadedLocalFile_uploadDataGa3 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataGa3 = '';

  bool isDataUploading_uploadDataS73 = false;
  FFUploadedFile uploadedLocalFile_uploadDataS73 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataS73 = '';

  bool isDataUploading_uploadDataSre = false;
  FFUploadedFile uploadedLocalFile_uploadDataSre =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataSre = '';

  // State field(s) for ScoreDomField widget.
  FocusNode? scoreDomFieldFocusNode;
  TextEditingController? scoreDomFieldTextController;
  String? Function(BuildContext, String?)? scoreDomFieldTextControllerValidator;
  // State field(s) for ScoreExtField widget.
  FocusNode? scoreExtFieldFocusNode;
  TextEditingController? scoreExtFieldTextController;
  String? Function(BuildContext, String?)? scoreExtFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    modifOddFieldFocusNode?.dispose();
    modifOddFieldTextController?.dispose();

    scoreDomFieldFocusNode?.dispose();
    scoreDomFieldTextController?.dispose();

    scoreExtFieldFocusNode?.dispose();
    scoreExtFieldTextController?.dispose();
  }
}
