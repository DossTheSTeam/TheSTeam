import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'add_e_team_page_i_u_d_admin_widget.dart'
    show AddETeamPageIUDAdminWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddETeamPageIUDAdminModel
    extends FlutterFlowModel<AddETeamPageIUDAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropESports widget.
  String? dropESportsValue;
  FormFieldController<String>? dropESportsValueController;
  // State field(s) for ETeamNameField widget.
  FocusNode? eTeamNameFieldFocusNode;
  TextEditingController? eTeamNameFieldTextController;
  String? Function(BuildContext, String?)?
      eTeamNameFieldTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TeamsRecord? eTeamFootRef;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TeamsRecord? eTeamBasketRef;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TeamsRecord? eTeamWarRef;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    eTeamNameFieldFocusNode?.dispose();
    eTeamNameFieldTextController?.dispose();
  }
}
