import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'add_e_team_page_i_u_d_admin_model.dart';
export 'add_e_team_page_i_u_d_admin_model.dart';

class AddETeamPageIUDAdminWidget extends StatefulWidget {
  const AddETeamPageIUDAdminWidget({super.key});

  @override
  State<AddETeamPageIUDAdminWidget> createState() =>
      _AddETeamPageIUDAdminWidgetState();
}

class _AddETeamPageIUDAdminWidgetState
    extends State<AddETeamPageIUDAdminWidget> {
  late AddETeamPageIUDAdminModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddETeamPageIUDAdminModel());

    _model.eTeamNameFieldTextController ??= TextEditingController();
    _model.eTeamNameFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            AuthUserStreamWidget(
                              builder: (context) => InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'MenuPage',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.leftToRight,
                                        duration: Duration(milliseconds: 400),
                                      ),
                                    },
                                  );
                                },
                                child: Icon(
                                  Icons.menu_rounded,
                                  color: currentUserDocument?.color1,
                                  size: 30.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: AuthUserStreamWidget(
                                builder: (context) => InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.safePop();
                                  },
                                  child: Icon(
                                    Icons.arrow_back_ios_new_rounded,
                                    color: currentUserDocument?.color1,
                                    size: 30.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Céer une E Team',
                            maxLines: 1,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      'Vous allez créer une E Team',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      'Qu\'est ce que cela implique',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).error,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      'Si ce n\'est pas déjà fait, nous vous conseillons de consulter les conditions générales d\'utilisation afin de vous informer sur les risques liés à un comportement inapproprié.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            'GeneralsCondidtionsPage',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.bottomToTop,
                                duration: Duration(milliseconds: 400),
                              ),
                            },
                          );
                        },
                        child: Text(
                          'Voir Conditions',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).success,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      'Après avoir pris connaissance des règles de jeux et de conduite, je débute la création de ma E Team.',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Choisir',
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowDropDown<String>(
                              controller: _model.dropESportsValueController ??=
                                  FormFieldController<String>(
                                _model.dropESportsValue ??= '',
                              ),
                              options: List<String>.from([
                                'esport.football',
                                'esport.basketball',
                                'esport.war'
                              ]),
                              optionLabels: const [
                                'E Sport Football',
                                'E Sport Basketball',
                                'E Sport War'
                              ],
                              onChanged: (val) => safeSetState(
                                  () => _model.dropESportsValue = val),
                              width: 180.0,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).success,
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'E Sports',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Text(
                        'Ajouter le nom de club',
                        maxLines: 1,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Text(
                        'Pour simplifier, il serait judicieux de choisir le même \"Nom de club\" que celui avec lequel vous jouez réellement',
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: FlutterFlowTheme.of(context)
                            .labelMedium
                            .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 5.0, 15.0, 0.0),
                    child: TextFormField(
                      controller: _model.eTeamNameFieldTextController,
                      focusNode: _model.eTeamNameFieldFocusNode,
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'E Team Name',
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).success,
                                  letterSpacing: 0.0,
                                ),
                        counterStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                            ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                      maxLength: 20,
                      validator: _model.eTeamNameFieldTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 6.0, 0.0),
                          child: Container(
                            width: 65.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  _model.uploadedFileUrl,
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            final selectedMedia =
                                await selectMediaWithSourceBottomSheet(
                              context: context,
                              maxWidth: 1000.00,
                              maxHeight: 1000.00,
                              allowPhoto: true,
                            );
                            if (selectedMedia != null &&
                                selectedMedia.every((m) => validateFileFormat(
                                    m.storagePath, context))) {
                              safeSetState(() => _model.isDataUploading = true);
                              var selectedUploadedFiles = <FFUploadedFile>[];

                              var downloadUrls = <String>[];
                              try {
                                selectedUploadedFiles = selectedMedia
                                    .map((m) => FFUploadedFile(
                                          name: m.storagePath.split('/').last,
                                          bytes: m.bytes,
                                          height: m.dimensions?.height,
                                          width: m.dimensions?.width,
                                          blurHash: m.blurHash,
                                        ))
                                    .toList();

                                downloadUrls = (await Future.wait(
                                  selectedMedia.map(
                                    (m) async => await uploadData(
                                        m.storagePath, m.bytes),
                                  ),
                                ))
                                    .where((u) => u != null)
                                    .map((u) => u!)
                                    .toList();
                              } finally {
                                _model.isDataUploading = false;
                              }
                              if (selectedUploadedFiles.length ==
                                      selectedMedia.length &&
                                  downloadUrls.length == selectedMedia.length) {
                                safeSetState(() {
                                  _model.uploadedLocalFile =
                                      selectedUploadedFiles.first;
                                  _model.uploadedFileUrl = downloadUrls.first;
                                });
                              } else {
                                safeSetState(() {});
                                return;
                              }
                            }
                          },
                          child: Icon(
                            Icons.image_search_outlined,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 30.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Text(
                        'Ajouter les couleurs du club',
                        maxLines: 1,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Couleur 1...',
                              textAlign: TextAlign.center,
                              maxLines: 6,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              13.0, 0.0, 20.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.dropColor1ValueController ??=
                                FormFieldController<String>(
                              _model.dropColor1Value ??= '',
                            ),
                            options: List<String>.from([
                              '#2c37aa',
                              '#d1851e',
                              '#cd3640',
                              '#249644',
                              '#6CABDD',
                              '#c9b80e',
                              '#801e64',
                              '#451509'
                            ]),
                            optionLabels: const [
                              'Bleu',
                              'Orange',
                              'Rouge',
                              'Vert',
                              'Cyan',
                              'Jaune',
                              'Magenta',
                              'Marron'
                            ],
                            onChanged: (val) => safeSetState(
                                () => _model.dropColor1Value = val),
                            width: 150.0,
                            height: 40.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Couleurs',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            elevation: 2.0,
                            borderColor: Colors.transparent,
                            borderWidth: 0.0,
                            borderRadius: 8.0,
                            margin: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            hidesUnderline: true,
                            isOverButton: false,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: Icon(
                            Icons.circle_rounded,
                            color: colorFromCssString(
                              _model.dropColor1Value!,
                              defaultColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            size: 24.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Couleur 2...',
                              textAlign: TextAlign.center,
                              maxLines: 6,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 20.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.dropColor2ValueController ??=
                                FormFieldController<String>(
                              _model.dropColor2Value ??= '',
                            ),
                            options: List<String>.from([
                              '#2c37aa',
                              '#d1851e',
                              '#cd3640',
                              '#249644',
                              '#6CABDD',
                              '#c9b80e',
                              '#801e64',
                              '#451509'
                            ]),
                            optionLabels: const [
                              'Bleu',
                              'Orange',
                              'Rouge',
                              'Vert',
                              'Cyan',
                              'Jaune',
                              'Magenta',
                              'Marron'
                            ],
                            onChanged: (val) => safeSetState(
                                () => _model.dropColor2Value = val),
                            width: 150.0,
                            height: 40.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Couleurs',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            elevation: 2.0,
                            borderColor: Colors.transparent,
                            borderWidth: 0.0,
                            borderRadius: 8.0,
                            margin: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            hidesUnderline: true,
                            isOverButton: false,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: Icon(
                            Icons.circle_outlined,
                            color: colorFromCssString(
                              _model.dropColor2Value!,
                              defaultColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            size: 24.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (_model.dropESportsValue != null &&
                      _model.dropESportsValue != '')
                    StreamBuilder<List<UsersRecord>>(
                      stream: queryUsersRecord(
                        queryBuilder: (usersRecord) => usersRecord.where(
                          'uid',
                          isEqualTo: '4g21LNGnfSN2dnX37zah532h2vq2',
                        ),
                        singleRecord: true,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                            ),
                          );
                        }
                        List<UsersRecord> columnUsersRecordList =
                            snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final columnUsersRecord =
                            columnUsersRecordList.isNotEmpty
                                ? columnUsersRecordList.first
                                : null;

                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (_model.dropESportsValue == 'esport.football')
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 30.0, 0.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    if (_model.eTeamNameFieldTextController
                                                .text !=
                                            '')
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 16.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  var teamsRecordReference =
                                                      TeamsRecord.collection
                                                          .doc();
                                                  await teamsRecordReference
                                                      .set({
                                                    ...createTeamsRecordData(
                                                      name: _model
                                                          .eTeamNameFieldTextController
                                                          .text,
                                                      logo: _model
                                                          .uploadedFileUrl,
                                                      sportValue:
                                                          'esport.football',
                                                      leagueValue: 'pro',
                                                      boss:
                                                          currentUserReference,
                                                      esport: true,
                                                      divisionValue: '2',
                                                      adminUser:
                                                          columnUsersRecord
                                                              ?.reference,
                                                      color1:
                                                          colorFromCssString(
                                                        _model.dropColor1Value!,
                                                        defaultColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                      color2:
                                                          colorFromCssString(
                                                        _model.dropColor2Value!,
                                                        defaultColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'members': [
                                                          currentUserReference
                                                        ],
                                                        'created_time': FieldValue
                                                            .serverTimestamp(),
                                                        'update_time': FieldValue
                                                            .serverTimestamp(),
                                                        'fans': [
                                                          currentUserReference
                                                        ],
                                                      },
                                                    ),
                                                  });
                                                  _model.eTeamFootRef =
                                                      TeamsRecord
                                                          .getDocumentFromData({
                                                    ...createTeamsRecordData(
                                                      name: _model
                                                          .eTeamNameFieldTextController
                                                          .text,
                                                      logo: _model
                                                          .uploadedFileUrl,
                                                      sportValue:
                                                          'esport.football',
                                                      leagueValue: 'pro',
                                                      boss:
                                                          currentUserReference,
                                                      esport: true,
                                                      divisionValue: '2',
                                                      adminUser:
                                                          columnUsersRecord
                                                              ?.reference,
                                                      color1:
                                                          colorFromCssString(
                                                        _model.dropColor1Value!,
                                                        defaultColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                      color2:
                                                          colorFromCssString(
                                                        _model.dropColor2Value!,
                                                        defaultColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'members': [
                                                          currentUserReference
                                                        ],
                                                        'created_time':
                                                            DateTime.now(),
                                                        'update_time':
                                                            DateTime.now(),
                                                        'fans': [
                                                          currentUserReference
                                                        ],
                                                      },
                                                    ),
                                                  }, teamsRecordReference);

                                                  await MyTeamsRecord.createDoc(
                                                          currentUserReference!)
                                                      .set({
                                                    ...createMyTeamsRecordData(
                                                      esport: true,
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'teams': [
                                                          _model.eTeamFootRef
                                                              ?.reference
                                                        ],
                                                      },
                                                    ),
                                                  });

                                                  await MyTeamslikeRecord.createDoc(
                                                          currentUserReference!)
                                                      .set({
                                                    ...createMyTeamslikeRecordData(
                                                      esport: true,
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'teams': [
                                                          _model.eTeamFootRef
                                                              ?.reference
                                                        ],
                                                      },
                                                    ),
                                                  });

                                                  await currentUserReference!
                                                      .update(
                                                          createUsersRecordData(
                                                    eteamRef: _model
                                                        .eTeamFootRef
                                                        ?.reference,
                                                    esportValue:
                                                        _model.dropESportsValue,
                                                  ));

                                                  context.pushNamed(
                                                      'MyProfilPage');

                                                  safeSetState(() {});
                                                },
                                                text: 'Valider',
                                                options: FFButtonOptions(
                                                  width: 180.0,
                                                  height: 40.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  elevation: 3.0,
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40.0),
                                                  hoverColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .success,
                                                  hoverTextColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ],
                                ),
                              ),
                            if (_model.dropESportsValue == 'esport.basketball')
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  if (_model.eTeamNameFieldTextController
                                              .text !=
                                          '')
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 16.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                var teamsRecordReference =
                                                    TeamsRecord.collection
                                                        .doc();
                                                await teamsRecordReference.set({
                                                  ...createTeamsRecordData(
                                                    name: _model
                                                        .eTeamNameFieldTextController
                                                        .text,
                                                    logo:
                                                        _model.uploadedFileUrl,
                                                    sportValue:
                                                        'esport.basketball',
                                                    leagueValue: 'pro',
                                                    boss: currentUserReference,
                                                    esport: true,
                                                    divisionValue: '2',
                                                    adminUser: columnUsersRecord
                                                        ?.reference,
                                                    color1: colorFromCssString(
                                                      _model.dropColor1Value!,
                                                      defaultColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                    color2: colorFromCssString(
                                                      _model.dropColor2Value!,
                                                      defaultColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'members': [
                                                        currentUserReference
                                                      ],
                                                      'created_time': FieldValue
                                                          .serverTimestamp(),
                                                      'update_time': FieldValue
                                                          .serverTimestamp(),
                                                      'fans': [
                                                        currentUserReference
                                                      ],
                                                    },
                                                  ),
                                                });
                                                _model.eTeamBasketRef =
                                                    TeamsRecord
                                                        .getDocumentFromData({
                                                  ...createTeamsRecordData(
                                                    name: _model
                                                        .eTeamNameFieldTextController
                                                        .text,
                                                    logo:
                                                        _model.uploadedFileUrl,
                                                    sportValue:
                                                        'esport.basketball',
                                                    leagueValue: 'pro',
                                                    boss: currentUserReference,
                                                    esport: true,
                                                    divisionValue: '2',
                                                    adminUser: columnUsersRecord
                                                        ?.reference,
                                                    color1: colorFromCssString(
                                                      _model.dropColor1Value!,
                                                      defaultColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                    color2: colorFromCssString(
                                                      _model.dropColor2Value!,
                                                      defaultColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'members': [
                                                        currentUserReference
                                                      ],
                                                      'created_time':
                                                          DateTime.now(),
                                                      'update_time':
                                                          DateTime.now(),
                                                      'fans': [
                                                        currentUserReference
                                                      ],
                                                    },
                                                  ),
                                                }, teamsRecordReference);

                                                await MyTeamsRecord.createDoc(
                                                        currentUserReference!)
                                                    .set({
                                                  ...createMyTeamsRecordData(
                                                    esport: true,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'teams': [
                                                        _model.eTeamBasketRef
                                                            ?.reference
                                                      ],
                                                    },
                                                  ),
                                                });

                                                await MyTeamslikeRecord.createDoc(
                                                        currentUserReference!)
                                                    .set({
                                                  ...createMyTeamslikeRecordData(
                                                    esport: true,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'teams': [
                                                        _model.eTeamBasketRef
                                                            ?.reference
                                                      ],
                                                    },
                                                  ),
                                                });

                                                await currentUserReference!
                                                    .update(
                                                        createUsersRecordData(
                                                  eteamRef: _model
                                                      .eTeamBasketRef
                                                      ?.reference,
                                                  esportValue:
                                                      _model.dropESportsValue,
                                                ));

                                                context
                                                    .pushNamed('MyProfilPage');

                                                safeSetState(() {});
                                              },
                                              text: 'Valider',
                                              options: FFButtonOptions(
                                                width: 180.0,
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(40.0),
                                                hoverColor:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                hoverTextColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            if (_model.dropESportsValue == 'esport.war')
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  if (_model.eTeamNameFieldTextController
                                              .text !=
                                          '')
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 16.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                var teamsRecordReference =
                                                    TeamsRecord.collection
                                                        .doc();
                                                await teamsRecordReference.set({
                                                  ...createTeamsRecordData(
                                                    name: _model
                                                        .eTeamNameFieldTextController
                                                        .text,
                                                    logo:
                                                        _model.uploadedFileUrl,
                                                    sportValue: 'esport.war',
                                                    leagueValue: 'pro',
                                                    boss: currentUserReference,
                                                    esport: true,
                                                    divisionValue: '2',
                                                    adminUser: columnUsersRecord
                                                        ?.reference,
                                                    color1: colorFromCssString(
                                                      _model.dropColor1Value!,
                                                      defaultColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                    color2: colorFromCssString(
                                                      _model.dropColor2Value!,
                                                      defaultColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'members': [
                                                        currentUserReference
                                                      ],
                                                      'created_time': FieldValue
                                                          .serverTimestamp(),
                                                      'update_time': FieldValue
                                                          .serverTimestamp(),
                                                      'fans': [
                                                        currentUserReference
                                                      ],
                                                    },
                                                  ),
                                                });
                                                _model.eTeamWarRef = TeamsRecord
                                                    .getDocumentFromData({
                                                  ...createTeamsRecordData(
                                                    name: _model
                                                        .eTeamNameFieldTextController
                                                        .text,
                                                    logo:
                                                        _model.uploadedFileUrl,
                                                    sportValue: 'esport.war',
                                                    leagueValue: 'pro',
                                                    boss: currentUserReference,
                                                    esport: true,
                                                    divisionValue: '2',
                                                    adminUser: columnUsersRecord
                                                        ?.reference,
                                                    color1: colorFromCssString(
                                                      _model.dropColor1Value!,
                                                      defaultColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                    color2: colorFromCssString(
                                                      _model.dropColor2Value!,
                                                      defaultColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'members': [
                                                        currentUserReference
                                                      ],
                                                      'created_time':
                                                          DateTime.now(),
                                                      'update_time':
                                                          DateTime.now(),
                                                      'fans': [
                                                        currentUserReference
                                                      ],
                                                    },
                                                  ),
                                                }, teamsRecordReference);

                                                await MyTeamsRecord.createDoc(
                                                        currentUserReference!)
                                                    .set({
                                                  ...createMyTeamsRecordData(
                                                    esport: true,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'teams': [
                                                        _model.eTeamWarRef
                                                            ?.reference
                                                      ],
                                                    },
                                                  ),
                                                });

                                                await MyTeamslikeRecord.createDoc(
                                                        currentUserReference!)
                                                    .set({
                                                  ...createMyTeamslikeRecordData(
                                                    esport: true,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'teams': [
                                                        _model.eTeamWarRef
                                                            ?.reference
                                                      ],
                                                    },
                                                  ),
                                                });

                                                await currentUserReference!
                                                    .update(
                                                        createUsersRecordData(
                                                  eteamRef: _model
                                                      .eTeamWarRef?.reference,
                                                  esportValue:
                                                      _model.dropESportsValue,
                                                ));

                                                context
                                                    .pushNamed('MyProfilPage');

                                                safeSetState(() {});
                                              },
                                              text: 'Valider',
                                              options: FFButtonOptions(
                                                width: 180.0,
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(40.0),
                                                hoverColor:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                hoverTextColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                          ],
                        );
                      },
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
