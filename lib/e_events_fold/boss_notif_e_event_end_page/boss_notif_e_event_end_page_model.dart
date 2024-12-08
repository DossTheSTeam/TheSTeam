import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'boss_notif_e_event_end_page_widget.dart'
    show BossNotifEEventEndPageWidget;
import 'package:flutter/material.dart';

class BossNotifEEventEndPageModel
    extends FlutterFlowModel<BossNotifEEventEndPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropReasons widget.
  String? dropReasonsValue;
  FormFieldController<String>? dropReasonsValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
