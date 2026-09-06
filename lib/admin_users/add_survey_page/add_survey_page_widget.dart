import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:record/record.dart';
import 'add_survey_page_model.dart';
export 'add_survey_page_model.dart';

class AddSurveyPageWidget extends StatefulWidget {
  const AddSurveyPageWidget({
    super.key,
    required this.teamRef,
  });

  final DocumentReference? teamRef;

  static String routeName = 'AddSurveyPage';
  static String routePath = '/addSurveyPage';

  @override
  State<AddSurveyPageWidget> createState() => _AddSurveyPageWidgetState();
}

class _AddSurveyPageWidgetState extends State<AddSurveyPageWidget> {
  late AddSurveyPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddSurveyPageModel());

    _model.titleFieldTextController ??= TextEditingController();
    _model.titleFieldFocusNode ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.descriptionFieldTextController ??= TextEditingController();
    _model.descriptionFieldFocusNode ??= FocusNode();

    _model.choice1FieldTextController ??= TextEditingController();
    _model.choice1FieldFocusNode ??= FocusNode();

    _model.choice2FieldTextController ??= TextEditingController();
    _model.choice2FieldFocusNode ??= FocusNode();

    _model.choice3FieldTextController ??= TextEditingController();
    _model.choice3FieldFocusNode ??= FocusNode();

    _model.textController7 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<TeamsRecord>(
      stream: TeamsRecord.getDocument(widget.teamRef!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).accent4,
                  ),
                ),
              ),
            ),
          );
        }

        final addSurveyPageTeamsRecord = snapshot.data!;

        return YoutubeFullScreenWrapper(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: PopScope(
              canPop: false,
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                body: SafeArea(
                  top: true,
                  child: Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 50.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                            MenuPageWidget.routeName,
                                            extra: <String, dynamic>{
                                              '__transition_info__':
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .leftToRight,
                                                duration:
                                                    Duration(milliseconds: 400),
                                              ),
                                            },
                                          );
                                        },
                                        child: Icon(
                                          Icons.menu_rounded,
                                          color: valueOrDefault<Color>(
                                            currentUserDocument?.color1,
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                          size: 30.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
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
                                            color: valueOrDefault<Color>(
                                              currentUserDocument?.color1,
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                            ),
                                            size: 30.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 6.0, 0.0),
                                            child: Container(
                                              width: 65.0,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: Image.network(
                                                  addSurveyPageTeamsRecord.logo,
                                                  width: 300.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              addSurveyPageTeamsRecord.name,
                                              maxLines: 1,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmallFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .titleSmallIsCustom,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 5.0, 10.0, 5.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: TextFormField(
                                        controller:
                                            _model.titleFieldTextController,
                                        focusNode: _model.titleFieldFocusNode,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'Titre',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelMediumIsCustom,
                                              ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        minLines: 1,
                                        validator: _model
                                            .titleFieldTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.showImage1 = true;
                                safeSetState(() {});
                              },
                              child: Text(
                                'Image 1 ?',
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleSmallIsCustom,
                                    ),
                              ),
                            ),
                            if (_model.showImage1 == true)
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 50.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.showImage1 = null;
                                            safeSetState(() {});
                                          },
                                          child: Icon(
                                            Icons.visibility_off_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            size: 30.0,
                                          ),
                                        ),
                                      ),
                                      AuthUserStreamWidget(
                                        builder: (context) => InkWell(
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
                                                selectedMedia.every((m) =>
                                                    validateFileFormat(
                                                        m.storagePath,
                                                        context))) {
                                              safeSetState(() => _model
                                                      .isDataUploading_uploadData2ch =
                                                  true);
                                              var selectedUploadedFiles =
                                                  <FFUploadedFile>[];

                                              var downloadUrls = <String>[];
                                              try {
                                                selectedUploadedFiles =
                                                    selectedMedia
                                                        .map((m) =>
                                                            FFUploadedFile(
                                                              name: m
                                                                  .storagePath
                                                                  .split('/')
                                                                  .last,
                                                              bytes: m.bytes,
                                                              height: m
                                                                  .dimensions
                                                                  ?.height,
                                                              width: m
                                                                  .dimensions
                                                                  ?.width,
                                                              blurHash:
                                                                  m.blurHash,
                                                              originalFilename:
                                                                  m.originalFilename,
                                                            ))
                                                        .toList();

                                                downloadUrls =
                                                    (await Future.wait(
                                                  selectedMedia.map(
                                                    (m) async =>
                                                        await uploadData(
                                                            m.storagePath,
                                                            m.bytes),
                                                  ),
                                                ))
                                                        .where((u) => u != null)
                                                        .map((u) => u!)
                                                        .toList();
                                              } finally {
                                                _model.isDataUploading_uploadData2ch =
                                                    false;
                                              }
                                              if (selectedUploadedFiles
                                                          .length ==
                                                      selectedMedia.length &&
                                                  downloadUrls.length ==
                                                      selectedMedia.length) {
                                                safeSetState(() {
                                                  _model.uploadedLocalFile_uploadData2ch =
                                                      selectedUploadedFiles
                                                          .first;
                                                  _model.uploadedFileUrl_uploadData2ch =
                                                      downloadUrls.first;
                                                });
                                              } else {
                                                safeSetState(() {});
                                                return;
                                              }
                                            }
                                          },
                                          child: Icon(
                                            Icons.image_search_rounded,
                                            color: valueOrDefault<Color>(
                                              currentUserDocument?.color1,
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                            ),
                                            size: 30.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 300.0,
                                    height: 175.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(3.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        child: Image.network(
                                          _model.uploadedFileUrl_uploadData2ch,
                                          width: 300.0,
                                          height: 200.0,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.showAudio = true;
                                safeSetState(() {});
                              },
                              child: Text(
                                'Audio ?',
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleSmallIsCustom,
                                    ),
                              ),
                            ),
                            if (_model.showAudio == true)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  6.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 20.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    _model.showAudio = null;
                                                    safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons
                                                        .visibility_off_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    size: 30.0,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 15.0, 0.0, 0.0),
                                                child: AuthUserStreamWidget(
                                                  builder: (context) =>
                                                      GestureDetector(
                                                    onLongPressDown:
                                                        (details) async {
                                                      await startAudioRecording(
                                                        context,
                                                        audioRecorder: _model
                                                                .audioRecorder ??=
                                                            AudioRecorder(),
                                                      );
                                                    },
                                                    onLongPressUp: () async {
                                                      await stopAudioRecording(
                                                        audioRecorder: _model
                                                            .audioRecorder,
                                                        audioName:
                                                            'recordedFileBytes',
                                                        onRecordingComplete:
                                                            (audioFilePath,
                                                                audioBytes) {
                                                          _model.audioPost =
                                                              audioFilePath;
                                                          _model.recordedFileBytes =
                                                              audioBytes;
                                                        },
                                                      );

                                                      safeSetState(() {});
                                                    },
                                                    child: FaIcon(
                                                      FontAwesomeIcons
                                                          .microphoneAlt,
                                                      color:
                                                          valueOrDefault<Color>(
                                                        currentUserDocument
                                                            ?.color1,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                      ),
                                                      size: 28.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    if (_model.audioPost != null &&
                                        _model.audioPost != '')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 6.0, 0.0, 0.0),
                                          child: Container(
                                            width: 300.0,
                                            height: 78.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: AuthUserStreamWidget(
                                                builder: (context) =>
                                                    FlutterFlowAudioPlayer(
                                                  audio: Audio.network(
                                                    _model.audioPost!,
                                                    metas: Metas(
                                                      title: ' ',
                                                    ),
                                                  ),
                                                  titleTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmallFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmallIsCustom,
                                                          ),
                                                  playbackDurationTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumIsCustom,
                                                          ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  playbackButtonColor:
                                                      valueOrDefault<Color>(
                                                    currentUserDocument?.color1,
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                  ),
                                                  activeTrackColor:
                                                      valueOrDefault<Color>(
                                                    currentUserDocument?.color1,
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                  ),
                                                  inactiveTrackColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 4.0,
                                                  playInBackground:
                                                      PlayInBackground
                                                          .disabledPause,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.showVideo = true;
                                safeSetState(() {});
                              },
                              child: Text(
                                'Video Youtube ?',
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleSmallIsCustom,
                                    ),
                              ),
                            ),
                            if (_model.showVideo == true)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 5.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.showVideo = null;
                                          safeSetState(() {});
                                        },
                                        child: Icon(
                                          Icons.visibility_off_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          size: 30.0,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 200.0,
                                        child: TextFormField(
                                          controller: _model.textController2,
                                          focusNode: _model.textFieldFocusNode1,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumFamily,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumIsCustom,
                                                    ),
                                            hintText: 'YouTube Link ..........',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumFamily,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumIsCustom,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          validator: _model
                                              .textController2Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.extractIdResult = await actions
                                              .extractYoutubeIdAction(
                                            _model.textController2.text,
                                          );
                                          _model.youtubeId =
                                              _model.extractIdResult;
                                          safeSetState(() {});

                                          safeSetState(() {});
                                        },
                                        child: FaIcon(
                                          FontAwesomeIcons.youtube,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          size: 28.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            if (_model.textController2.text != '')
                              FlutterFlowYoutubePlayer(
                                url: '${_model.youtubeId}',
                                autoPlay: false,
                                looping: true,
                                mute: false,
                                showControls: true,
                                showFullScreen: true,
                                strictRelatedVideos: true,
                              ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.showText1 = true;
                                safeSetState(() {});
                              },
                              child: Text(
                                'Texte 1 ?',
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleSmallIsCustom,
                                    ),
                              ),
                            ),
                            if (_model.showText1 == true)
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.showText1 = null;
                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.visibility_off_outlined,
                                    color: FlutterFlowTheme.of(context).error,
                                    size: 30.0,
                                  ),
                                ),
                              ),
                            if (_model.showText1 == true)
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: TextFormField(
                                    controller:
                                        _model.descriptionFieldTextController,
                                    focusNode: _model.descriptionFieldFocusNode,
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Texte 1.............',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    textAlign: TextAlign.start,
                                    maxLines: null,
                                    validator: _model
                                        .descriptionFieldTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.showImage2 = true;
                                safeSetState(() {});
                              },
                              child: Text(
                                'Image 2 ?',
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleSmallIsCustom,
                                    ),
                              ),
                            ),
                            if (_model.showImage2 == true)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 50.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                _model.showImage2 = null;
                                                safeSetState(() {});
                                              },
                                              child: Icon(
                                                Icons.visibility_off_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                size: 30.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        AuthUserStreamWidget(
                                          builder: (context) => InkWell(
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
                                                  selectedMedia.every((m) =>
                                                      validateFileFormat(
                                                          m.storagePath,
                                                          context))) {
                                                safeSetState(() => _model
                                                        .isDataUploading_uploadData90s =
                                                    true);
                                                var selectedUploadedFiles =
                                                    <FFUploadedFile>[];

                                                var downloadUrls = <String>[];
                                                try {
                                                  selectedUploadedFiles =
                                                      selectedMedia
                                                          .map((m) =>
                                                              FFUploadedFile(
                                                                name: m
                                                                    .storagePath
                                                                    .split('/')
                                                                    .last,
                                                                bytes: m.bytes,
                                                                height: m
                                                                    .dimensions
                                                                    ?.height,
                                                                width: m
                                                                    .dimensions
                                                                    ?.width,
                                                                blurHash:
                                                                    m.blurHash,
                                                                originalFilename:
                                                                    m.originalFilename,
                                                              ))
                                                          .toList();

                                                  downloadUrls =
                                                      (await Future.wait(
                                                    selectedMedia.map(
                                                      (m) async =>
                                                          await uploadData(
                                                              m.storagePath,
                                                              m.bytes),
                                                    ),
                                                  ))
                                                          .where(
                                                              (u) => u != null)
                                                          .map((u) => u!)
                                                          .toList();
                                                } finally {
                                                  _model.isDataUploading_uploadData90s =
                                                      false;
                                                }
                                                if (selectedUploadedFiles
                                                            .length ==
                                                        selectedMedia.length &&
                                                    downloadUrls.length ==
                                                        selectedMedia.length) {
                                                  safeSetState(() {
                                                    _model.uploadedLocalFile_uploadData90s =
                                                        selectedUploadedFiles
                                                            .first;
                                                    _model.uploadedFileUrl_uploadData90s =
                                                        downloadUrls.first;
                                                  });
                                                } else {
                                                  safeSetState(() {});
                                                  return;
                                                }
                                              }
                                            },
                                            child: Icon(
                                              Icons.image_search_rounded,
                                              color: valueOrDefault<Color>(
                                                currentUserDocument?.color1,
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                              ),
                                              size: 30.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 300.0,
                                      height: 175.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          child: Image.network(
                                            _model
                                                .uploadedFileUrl_uploadData90s,
                                            width: 300.0,
                                            height: 200.0,
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.showChoices = true;
                                safeSetState(() {});
                              },
                              child: Text(
                                'Choix ?',
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleSmallIsCustom,
                                    ),
                              ),
                            ),
                            if (_model.showChoices == true)
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.showChoices = null;
                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.visibility_off_outlined,
                                    color: FlutterFlowTheme.of(context).error,
                                    size: 30.0,
                                  ),
                                ),
                              ),
                            if (_model.showChoices == true)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                        child: TextFormField(
                                          controller:
                                              _model.choice1FieldTextController,
                                          focusNode:
                                              _model.choice1FieldFocusNode,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Ajouter choix 1',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumFamily,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumIsCustom,
                                                    ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                          validator: _model
                                              .choice1FieldTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            if (_model.showChoices == true)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                        child: TextFormField(
                                          controller:
                                              _model.choice2FieldTextController,
                                          focusNode:
                                              _model.choice2FieldFocusNode,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Ajouter choix 2',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumFamily,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumIsCustom,
                                                    ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                          validator: _model
                                              .choice2FieldTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            if (_model.showChoices == true)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                        child: TextFormField(
                                          controller:
                                              _model.choice3FieldTextController,
                                          focusNode:
                                              _model.choice3FieldFocusNode,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Ajouter choix 3',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumFamily,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumIsCustom,
                                                    ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                          validator: _model
                                              .choice3FieldTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.showText2 = true;
                                safeSetState(() {});
                              },
                              child: Text(
                                'Texte 2 ?',
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleSmallIsCustom,
                                    ),
                              ),
                            ),
                            if (_model.showText2 == true)
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.showText2 = null;
                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.visibility_off_outlined,
                                    color: FlutterFlowTheme.of(context).error,
                                    size: 30.0,
                                  ),
                                ),
                              ),
                            if (_model.showText2 == true)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 30.0),
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.textController7,
                                    focusNode: _model.textFieldFocusNode2,
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      hintText: 'Texte 2........',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    maxLines: null,
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    validator: _model.textController7Validator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.showText2 = true;
                                  safeSetState(() {});
                                },
                                child: Text(
                                  'Valider sur les 2 plateformes ?',
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleSmallIsCustom,
                                      ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 20.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      var postsRecordReference =
                                          PostsRecord.collection.doc();
                                      await postsRecordReference.set({
                                        ...createPostsRecordData(
                                          title: _model
                                              .titleFieldTextController.text,
                                          description: _model
                                              .descriptionFieldTextController
                                              .text,
                                          image: _model
                                              .uploadedFileUrl_uploadData2ch,
                                          teamRef: widget.teamRef,
                                          member: currentUserReference,
                                          choice1: _model
                                              .choice1FieldTextController.text,
                                          choice2: _model
                                              .choice2FieldTextController.text,
                                          choice3: _model
                                              .choice3FieldTextController.text,
                                          leagueValue: addSurveyPageTeamsRecord
                                              .leagueValue,
                                          audio: _model.audioPost,
                                          youtubeLink: _model.youtubeId,
                                          text2: _model.textController7.text,
                                          image2: _model
                                              .uploadedFileUrl_uploadData90s,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'created_time':
                                                FieldValue.serverTimestamp(),
                                          },
                                        ),
                                      });
                                      _model.postRef =
                                          PostsRecord.getDocumentFromData({
                                        ...createPostsRecordData(
                                          title: _model
                                              .titleFieldTextController.text,
                                          description: _model
                                              .descriptionFieldTextController
                                              .text,
                                          image: _model
                                              .uploadedFileUrl_uploadData2ch,
                                          teamRef: widget.teamRef,
                                          member: currentUserReference,
                                          choice1: _model
                                              .choice1FieldTextController.text,
                                          choice2: _model
                                              .choice2FieldTextController.text,
                                          choice3: _model
                                              .choice3FieldTextController.text,
                                          leagueValue: addSurveyPageTeamsRecord
                                              .leagueValue,
                                          audio: _model.audioPost,
                                          youtubeLink: _model.youtubeId,
                                          text2: _model.textController7.text,
                                          image2: _model
                                              .uploadedFileUrl_uploadData90s,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'created_time': DateTime.now(),
                                          },
                                        ),
                                      }, postsRecordReference);

                                      await TeamPostsRecord.createDoc(
                                              widget.teamRef!)
                                          .set({
                                        ...createTeamPostsRecordData(
                                          posts: _model.postRef?.reference,
                                          survey: true,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'created_time':
                                                FieldValue.serverTimestamp(),
                                          },
                                        ),
                                      });
                                      triggerPushNotification(
                                        notificationTitle:
                                            currentUserDisplayName,
                                        notificationText: _model
                                            .titleFieldTextController.text,
                                        notificationImageUrl:
                                            addSurveyPageTeamsRecord.logo,
                                        userRefs: addSurveyPageTeamsRecord.fans
                                            .toList(),
                                        initialPageName: 'PostPage',
                                        parameterData: {
                                          'postRef': _model.postRef?.reference,
                                        },
                                      );

                                      context.pushNamed(
                                        ListSurveysWidget.routeName,
                                        queryParameters: {
                                          'teamRef': serializeParam(
                                            widget.teamRef,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          '__transition_info__': TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.scale,
                                            alignment: Alignment.bottomCenter,
                                            duration:
                                                Duration(milliseconds: 600),
                                          ),
                                        },
                                      );

                                      safeSetState(() {});
                                    },
                                    text: 'Sondage',
                                    options: FFButtonOptions(
                                      height: 30.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          25.0, 0.0, 25.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(40.0),
                                      hoverColor:
                                          FlutterFlowTheme.of(context).success,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 20.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      var postsRecordReference =
                                          PostsRecord.collection.doc();
                                      await postsRecordReference.set({
                                        ...createPostsRecordData(
                                          title: _model
                                              .titleFieldTextController.text,
                                          description: _model
                                              .descriptionFieldTextController
                                              .text,
                                          image: _model
                                              .uploadedFileUrl_uploadData2ch,
                                          teamRef: widget.teamRef,
                                          member: currentUserReference,
                                          leagueValue: addSurveyPageTeamsRecord
                                              .leagueValue,
                                          foldCategorie: 'news',
                                          audio: _model.audioPost,
                                          youtubeLink: _model.youtubeId,
                                          text2: _model.textController7.text,
                                          image2: _model
                                              .uploadedFileUrl_uploadData90s,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'created_time':
                                                FieldValue.serverTimestamp(),
                                          },
                                        ),
                                      });
                                      _model.postNewsRef =
                                          PostsRecord.getDocumentFromData({
                                        ...createPostsRecordData(
                                          title: _model
                                              .titleFieldTextController.text,
                                          description: _model
                                              .descriptionFieldTextController
                                              .text,
                                          image: _model
                                              .uploadedFileUrl_uploadData2ch,
                                          teamRef: widget.teamRef,
                                          member: currentUserReference,
                                          leagueValue: addSurveyPageTeamsRecord
                                              .leagueValue,
                                          foldCategorie: 'news',
                                          audio: _model.audioPost,
                                          youtubeLink: _model.youtubeId,
                                          text2: _model.textController7.text,
                                          image2: _model
                                              .uploadedFileUrl_uploadData90s,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'created_time': DateTime.now(),
                                          },
                                        ),
                                      }, postsRecordReference);

                                      await TeamPostsRecord.createDoc(
                                              widget.teamRef!)
                                          .set({
                                        ...createTeamPostsRecordData(
                                          posts: _model.postNewsRef?.reference,
                                          news: true,
                                          foldCategorie: 'news',
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'created_time':
                                                FieldValue.serverTimestamp(),
                                          },
                                        ),
                                      });
                                      triggerPushNotification(
                                        notificationTitle:
                                            currentUserDisplayName,
                                        notificationText: _model
                                            .titleFieldTextController.text,
                                        notificationImageUrl:
                                            addSurveyPageTeamsRecord.logo,
                                        userRefs: addSurveyPageTeamsRecord.fans
                                            .toList(),
                                        initialPageName: 'PostPage',
                                        parameterData: {
                                          'postRef':
                                              _model.postNewsRef?.reference,
                                        },
                                      );

                                      context.pushNamed(
                                        ListAdvicesWidget.routeName,
                                        queryParameters: {
                                          'teamRef': serializeParam(
                                            widget.teamRef,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          '__transition_info__': TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.scale,
                                            alignment: Alignment.bottomCenter,
                                            duration:
                                                Duration(milliseconds: 600),
                                          ),
                                        },
                                      );

                                      safeSetState(() {});
                                    },
                                    text: 'News',
                                    options: FFButtonOptions(
                                      height: 30.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          25.0, 0.0, 25.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(40.0),
                                      hoverColor:
                                          FlutterFlowTheme.of(context).success,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.showText2 = true;
                                safeSetState(() {});
                              },
                              child: Text(
                                'Choix Plateforme News ?',
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleSmallIsCustom,
                                    ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 30.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      var postsRecordReference =
                                          PostsRecord.collection.doc();
                                      await postsRecordReference.set({
                                        ...createPostsRecordData(
                                          title: _model
                                              .titleFieldTextController.text,
                                          description: _model
                                              .descriptionFieldTextController
                                              .text,
                                          image: _model
                                              .uploadedFileUrl_uploadData2ch,
                                          teamRef: widget.teamRef,
                                          member: currentUserReference,
                                          leagueValue: addSurveyPageTeamsRecord
                                              .leagueValue,
                                          foldCategorie: 'news',
                                          audio: _model.audioPost,
                                          youtubeLink: _model.youtubeId,
                                          text2: _model.textController7.text,
                                          image2: _model
                                              .uploadedFileUrl_uploadData90s,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'created_time':
                                                FieldValue.serverTimestamp(),
                                          },
                                        ),
                                      });
                                      _model.postNewsIOSRef =
                                          PostsRecord.getDocumentFromData({
                                        ...createPostsRecordData(
                                          title: _model
                                              .titleFieldTextController.text,
                                          description: _model
                                              .descriptionFieldTextController
                                              .text,
                                          image: _model
                                              .uploadedFileUrl_uploadData2ch,
                                          teamRef: widget.teamRef,
                                          member: currentUserReference,
                                          leagueValue: addSurveyPageTeamsRecord
                                              .leagueValue,
                                          foldCategorie: 'news',
                                          audio: _model.audioPost,
                                          youtubeLink: _model.youtubeId,
                                          text2: _model.textController7.text,
                                          image2: _model
                                              .uploadedFileUrl_uploadData90s,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'created_time': DateTime.now(),
                                          },
                                        ),
                                      }, postsRecordReference);

                                      await TeamPostsRecord.createDoc(
                                              widget.teamRef!)
                                          .set({
                                        ...createTeamPostsRecordData(
                                          posts:
                                              _model.postNewsIOSRef?.reference,
                                          news: true,
                                          foldCategorie: 'news',
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'created_time':
                                                FieldValue.serverTimestamp(),
                                          },
                                        ),
                                      });
                                      triggerPushNotification(
                                        notificationTitle:
                                            currentUserDisplayName,
                                        notificationText: _model
                                            .titleFieldTextController.text,
                                        notificationImageUrl:
                                            addSurveyPageTeamsRecord.logo,
                                        userRefs: addSurveyPageTeamsRecord.fans
                                            .where((e) => isiOS)
                                            .toList(),
                                        initialPageName: 'PostPage',
                                        parameterData: {
                                          'postRef':
                                              _model.postNewsIOSRef?.reference,
                                        },
                                      );

                                      context.pushNamed(
                                        ListAdvicesWidget.routeName,
                                        queryParameters: {
                                          'teamRef': serializeParam(
                                            widget.teamRef,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          '__transition_info__': TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.scale,
                                            alignment: Alignment.bottomCenter,
                                            duration:
                                                Duration(milliseconds: 600),
                                          ),
                                        },
                                      );

                                      safeSetState(() {});
                                    },
                                    text: 'IOS',
                                    options: FFButtonOptions(
                                      height: 30.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          25.0, 0.0, 25.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(40.0),
                                      hoverColor:
                                          FlutterFlowTheme.of(context).success,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 30.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      var postsRecordReference =
                                          PostsRecord.collection.doc();
                                      await postsRecordReference.set({
                                        ...createPostsRecordData(
                                          title: _model
                                              .titleFieldTextController.text,
                                          description: _model
                                              .descriptionFieldTextController
                                              .text,
                                          image: _model
                                              .uploadedFileUrl_uploadData2ch,
                                          teamRef: widget.teamRef,
                                          member: currentUserReference,
                                          leagueValue: addSurveyPageTeamsRecord
                                              .leagueValue,
                                          foldCategorie: 'news',
                                          audio: _model.audioPost,
                                          youtubeLink: _model.youtubeId,
                                          text2: _model.textController7.text,
                                          image2: _model
                                              .uploadedFileUrl_uploadData90s,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'created_time':
                                                FieldValue.serverTimestamp(),
                                          },
                                        ),
                                      });
                                      _model.postNewsAndroidRef =
                                          PostsRecord.getDocumentFromData({
                                        ...createPostsRecordData(
                                          title: _model
                                              .titleFieldTextController.text,
                                          description: _model
                                              .descriptionFieldTextController
                                              .text,
                                          image: _model
                                              .uploadedFileUrl_uploadData2ch,
                                          teamRef: widget.teamRef,
                                          member: currentUserReference,
                                          leagueValue: addSurveyPageTeamsRecord
                                              .leagueValue,
                                          foldCategorie: 'news',
                                          audio: _model.audioPost,
                                          youtubeLink: _model.youtubeId,
                                          text2: _model.textController7.text,
                                          image2: _model
                                              .uploadedFileUrl_uploadData90s,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'created_time': DateTime.now(),
                                          },
                                        ),
                                      }, postsRecordReference);

                                      await TeamPostsRecord.createDoc(
                                              widget.teamRef!)
                                          .set({
                                        ...createTeamPostsRecordData(
                                          posts: _model
                                              .postNewsAndroidRef?.reference,
                                          news: true,
                                          foldCategorie: 'news',
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'created_time':
                                                FieldValue.serverTimestamp(),
                                          },
                                        ),
                                      });
                                      triggerPushNotification(
                                        notificationTitle:
                                            currentUserDisplayName,
                                        notificationText: _model
                                            .titleFieldTextController.text,
                                        notificationImageUrl:
                                            addSurveyPageTeamsRecord.logo,
                                        userRefs: addSurveyPageTeamsRecord.fans
                                            .where((e) => isAndroid)
                                            .toList(),
                                        initialPageName: 'PostPage',
                                        parameterData: {
                                          'postRef': _model
                                              .postNewsAndroidRef?.reference,
                                        },
                                      );

                                      context.pushNamed(
                                        ListAdvicesWidget.routeName,
                                        queryParameters: {
                                          'teamRef': serializeParam(
                                            widget.teamRef,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          '__transition_info__': TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.scale,
                                            alignment: Alignment.bottomCenter,
                                            duration:
                                                Duration(milliseconds: 600),
                                          ),
                                        },
                                      );

                                      safeSetState(() {});
                                    },
                                    text: 'Android',
                                    options: FFButtonOptions(
                                      height: 30.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          25.0, 0.0, 25.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(40.0),
                                      hoverColor:
                                          FlutterFlowTheme.of(context).success,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
