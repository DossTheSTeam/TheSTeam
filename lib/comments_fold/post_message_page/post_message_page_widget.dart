import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/comments_fold/delete_post_message/delete_post_message_widget.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import '/teams_fold/audio_fan_conference/audio_fan_conference_widget.dart';
import '/teams_fold/audio_member_conference/audio_member_conference_widget.dart';
import '/users_fold/copy_text/copy_text_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:record/record.dart';
import 'post_message_page_model.dart';
export 'post_message_page_model.dart';

class PostMessagePageWidget extends StatefulWidget {
  const PostMessagePageWidget({
    super.key,
    required this.startedCommRef,
  });

  final DocumentReference? startedCommRef;

  static String routeName = 'PostMessagePage';
  static String routePath = '/postMessagePage';

  @override
  State<PostMessagePageWidget> createState() => _PostMessagePageWidgetState();
}

class _PostMessagePageWidgetState extends State<PostMessagePageWidget> {
  late PostMessagePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostMessagePageModel());

    _model.commFieldTextController1 ??= TextEditingController();
    _model.commFieldFocusNode1 ??= FocusNode();

    _model.commFieldTextController2 ??= TextEditingController();
    _model.commFieldFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PostMessagesRecord>(
      stream: PostMessagesRecord.getDocument(widget.startedCommRef!),
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

        final postMessagePagePostMessagesRecord = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: WillPopScope(
            onWillPop: () async => false,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              body: SafeArea(
                top: true,
                child: Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: StreamBuilder<UsersRecord>(
                      stream: UsersRecord.getDocument(
                          postMessagePagePostMessagesRecord.commUser!),
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

                        final columnUsersRecord = snapshot.data!;

                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                  MenuPageWidget.routeName,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .leftToRight,
                                                      duration: Duration(
                                                          milliseconds: 400),
                                                    ),
                                                  },
                                                );
                                              },
                                              child: Icon(
                                                Icons.menu_rounded,
                                                color: valueOrDefault<Color>(
                                                  columnUsersRecord.color1,
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                                ),
                                                size: 30.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.safePop();
                                                },
                                                child: Icon(
                                                  Icons
                                                      .arrow_back_ios_new_rounded,
                                                  color: valueOrDefault<Color>(
                                                    columnUsersRecord.color1,
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                  ),
                                                  size: 30.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (currentUserDocument
                                                    ?.audioTeam !=
                                                null)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 5.0),
                                                child: AuthUserStreamWidget(
                                                  builder: (context) =>
                                                      StreamBuilder<
                                                          TeamsRecord>(
                                                    stream:
                                                        TeamsRecord.getDocument(
                                                            currentUserDocument!
                                                                .audioTeam!),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent4,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }

                                                      final rowTeamsRecord =
                                                          snapshot.data!;

                                                      return Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                context
                                                                    .pushNamed(
                                                                  TeamPageWidget
                                                                      .routeName,
                                                                  queryParameters:
                                                                      {
                                                                    'teamRef':
                                                                        serializeParam(
                                                                      currentUserDocument
                                                                          ?.audioTeam,
                                                                      ParamType
                                                                          .DocumentReference,
                                                                    ),
                                                                  }.withoutNulls,
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    kTransitionInfoKey:
                                                                        TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .bottomToTop,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              400),
                                                                    ),
                                                                  },
                                                                );
                                                              },
                                                              child: Container(
                                                                width: 65.0,
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                ),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                  child: Image
                                                                      .network(
                                                                    rowTeamsRecord
                                                                        .logo,
                                                                    width:
                                                                        300.0,
                                                                    height:
                                                                        200.0,
                                                                    fit: BoxFit
                                                                        .fitHeight,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: StreamBuilder<
                                                                TeamConferenceRecord>(
                                                              stream: TeamConferenceRecord
                                                                  .getDocument(
                                                                      rowTeamsRecord
                                                                          .conference!),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        valueColor:
                                                                            AlwaysStoppedAnimation<Color>(
                                                                          FlutterFlowTheme.of(context)
                                                                              .accent4,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }

                                                                final rowTeamConferenceRecord =
                                                                    snapshot
                                                                        .data!;

                                                                return Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    if (rowTeamConferenceRecord
                                                                        .members
                                                                        .contains(
                                                                            currentUserReference))
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              FlutterFlowIconButton(
                                                                            borderColor:
                                                                                valueOrDefault<Color>(
                                                                              rowTeamsRecord.color2,
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                            ),
                                                                            borderRadius:
                                                                                50.0,
                                                                            borderWidth:
                                                                                1.0,
                                                                            buttonSize:
                                                                                50.0,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).tertiary,
                                                                            icon:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.microphoneAlt,
                                                                              color: valueOrDefault<Color>(
                                                                                rowTeamsRecord.color1,
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                              size: 31.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              await showModalBottomSheet(
                                                                                isScrollControlled: true,
                                                                                backgroundColor: Colors.transparent,
                                                                                enableDrag: false,
                                                                                context: context,
                                                                                builder: (context) {
                                                                                  return GestureDetector(
                                                                                    onTap: () {
                                                                                      FocusScope.of(context).unfocus();
                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                    },
                                                                                    child: Padding(
                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                      child: AudioMemberConferenceWidget(
                                                                                        teamRef: currentUserDocument!.audioTeam!,
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ).then((value) => safeSetState(() {}));
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (rowTeamConferenceRecord
                                                                        .fans
                                                                        .contains(
                                                                            currentUserReference))
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              FlutterFlowIconButton(
                                                                            borderColor:
                                                                                valueOrDefault<Color>(
                                                                              rowTeamsRecord.color2,
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                            ),
                                                                            borderRadius:
                                                                                50.0,
                                                                            borderWidth:
                                                                                1.0,
                                                                            buttonSize:
                                                                                50.0,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).tertiary,
                                                                            icon:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.headphonesAlt,
                                                                              color: valueOrDefault<Color>(
                                                                                rowTeamsRecord.color1,
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                              size: 31.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              await showModalBottomSheet(
                                                                                isScrollControlled: true,
                                                                                backgroundColor: Colors.transparent,
                                                                                enableDrag: false,
                                                                                context: context,
                                                                                builder: (context) {
                                                                                  return GestureDetector(
                                                                                    onTap: () {
                                                                                      FocusScope.of(context).unfocus();
                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                    },
                                                                                    child: Padding(
                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                      child: AudioFanConferenceWidget(
                                                                                        teamRef: currentUserDocument!.audioTeam!,
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ).then((value) => safeSetState(() {}));
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                  ],
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            if (!columnUsersRecord.blocks
                                                .contains(currentUserReference))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  6.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 35.0,
                                                        height: 35.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      25.0),
                                                          child: Image.network(
                                                            columnUsersRecord
                                                                .photoUrl,
                                                            width: 300.0,
                                                            height: 200.0,
                                                            fit: BoxFit
                                                                .fitHeight,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    if (!columnUsersRecord
                                                        .blocks
                                                        .contains(
                                                            currentUserReference))
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            PublicProfilPageWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'userRef':
                                                                  serializeParam(
                                                                columnUsersRecord
                                                                    .reference,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .rightToLeft,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        400),
                                                              ),
                                                            },
                                                          );
                                                        },
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            columnUsersRecord
                                                                .displayName,
                                                            'NewUser',
                                                          ),
                                                          maxLines: 1,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontStyle,
                                                                ),
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  columnUsersRecord
                                                                      .color1,
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                          ],
                                        ),
                                        if ((valueOrDefault(
                                                    currentUserDocument
                                                        ?.stsocialapp,
                                                    '') ==
                                                'administrateur') ||
                                            (postMessagePagePostMessagesRecord
                                                    .commUser ==
                                                currentUserReference))
                                          AuthUserStreamWidget(
                                            builder: (context) => InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(context)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            DeletePostMessageWidget(
                                                          startedCommRef: widget
                                                              .startedCommRef!,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                              child: Icon(
                                                Icons.delete_forever,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                size: 25.0,
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                    Divider(
                                      thickness: 1.0,
                                      color: valueOrDefault<Color>(
                                        columnUsersRecord.color2,
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    if (valueOrDefault(
                                            currentUserDocument?.stsocialapp,
                                            '') ==
                                        'moderateur')
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          postMessagePagePostMessagesRecord
                                              .reference.id,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .warning,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    if (postMessagePagePostMessagesRecord
                                                .image !=
                                            '')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Container(
                                          width: 350.0,
                                          height: 200.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(3.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                  FullImagePageWidget.routeName,
                                                  queryParameters: {
                                                    'imageRef': serializeParam(
                                                      postMessagePagePostMessagesRecord
                                                          .image,
                                                      ParamType.String,
                                                    ),
                                                    'userRef': serializeParam(
                                                      postMessagePagePostMessagesRecord
                                                          .commUser,
                                                      ParamType
                                                          .DocumentReference,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                                child: Image.network(
                                                  postMessagePagePostMessagesRecord
                                                      .image,
                                                  width: 300.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (postMessagePagePostMessagesRecord
                                                .audio !=
                                            '')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 6.0, 0.0, 0.0),
                                          child: Container(
                                            width: 350.0,
                                            height: 78.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: FlutterFlowAudioPlayer(
                                                audio: Audio.network(
                                                  postMessagePagePostMessagesRecord
                                                      .audio,
                                                  metas: Metas(
                                                    title: ' ',
                                                  ),
                                                ),
                                                titleTextStyle: FlutterFlowTheme
                                                        .of(context)
                                                    .bodySmall
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontStyle,
                                                    ),
                                                playbackDurationTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .poppins(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                playbackButtonColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                activeTrackColor:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                inactiveTrackColor:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                elevation: 4.0,
                                                playInBackground: PlayInBackground
                                                    .disabledRestoreOnForeground,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 0.0),
                                  child: Text(
                                    postMessagePagePostMessagesRecord.text,
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 15.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await Clipboard.setData(ClipboardData(
                                          text:
                                              postMessagePagePostMessagesRecord
                                                  .text));
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return GestureDetector(
                                            onTap: () {
                                              FocusScope.of(context).unfocus();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: CopyTextWidget(),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    child: Icon(
                                      Icons.content_copy_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 25.0,
                                    ),
                                  ),
                                ),
                              ),
                              if (!columnUsersRecord.blocks
                                  .contains(currentUserReference))
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 20.0, 10.0, 0.0),
                                        child: Text(
                                          dateTimeFormat(
                                            "d/M H:mm",
                                            postMessagePagePostMessagesRecord
                                                .createdTime!,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      thickness: 1.0,
                                      color: valueOrDefault<Color>(
                                        columnUsersRecord.color2,
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                5.0, 0.0),
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
                                                        context.pushNamed(
                                                          ListCommsPostComPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'startedCommRef':
                                                                serializeParam(
                                                              widget
                                                                  .startedCommRef,
                                                              ParamType
                                                                  .DocumentReference,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .bottomToTop,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      400),
                                                            ),
                                                          },
                                                        );
                                                      },
                                                      child: Icon(
                                                        Icons
                                                            .insert_comment_rounded,
                                                        color: valueOrDefault<
                                                            Color>(
                                                          columnUsersRecord
                                                              .color1,
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                        ),
                                                        size: 30.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      postMessagePagePostMessagesRecord
                                                          .numComments
                                                          .toString(),
                                                      '0',
                                                    ),
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .poppins(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      5.0, 0.0, 10.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (!postMessagePagePostMessagesRecord
                                                      .likes
                                                      .contains(
                                                          currentUserReference))
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  5.0,
                                                                  0.0),
                                                      child:
                                                          AuthUserStreamWidget(
                                                        builder: (context) =>
                                                            InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await postMessagePagePostMessagesRecord
                                                                .reference
                                                                .update({
                                                              ...mapToFirestore(
                                                                {
                                                                  'likes':
                                                                      FieldValue
                                                                          .arrayUnion([
                                                                    currentUserReference
                                                                  ]),
                                                                  'num_likes':
                                                                      FieldValue
                                                                          .increment(
                                                                              1),
                                                                },
                                                              ),
                                                            });

                                                            await MyNotificationsRecord
                                                                    .createDoc(
                                                                        postMessagePagePostMessagesRecord
                                                                            .commUser!)
                                                                .set({
                                                              ...createMyNotificationsRecordData(
                                                                text:
                                                                    'aime votre commentaire :',
                                                                userRef:
                                                                    currentUserReference,
                                                                seen: false,
                                                                postMessage: widget
                                                                    .startedCommRef,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'date_time':
                                                                      FieldValue
                                                                          .serverTimestamp(),
                                                                },
                                                              ),
                                                            });

                                                            await columnUsersRecord
                                                                .reference
                                                                .update({
                                                              ...mapToFirestore(
                                                                {
                                                                  'stock': FieldValue
                                                                      .increment(
                                                                          0.5),
                                                                },
                                                              ),
                                                            });
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .favorite_border_rounded,
                                                            color:
                                                                currentUserDocument
                                                                    ?.color1,
                                                            size: 30.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  if (postMessagePagePostMessagesRecord
                                                      .likes
                                                      .contains(
                                                          currentUserReference))
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  5.0,
                                                                  0.0),
                                                      child:
                                                          AuthUserStreamWidget(
                                                        builder: (context) =>
                                                            InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await postMessagePagePostMessagesRecord
                                                                .reference
                                                                .update({
                                                              ...mapToFirestore(
                                                                {
                                                                  'likes':
                                                                      FieldValue
                                                                          .arrayRemove([
                                                                    currentUserReference
                                                                  ]),
                                                                  'num_likes':
                                                                      FieldValue
                                                                          .increment(
                                                                              -(1)),
                                                                },
                                                              ),
                                                            });

                                                            await columnUsersRecord
                                                                .reference
                                                                .update({
                                                              ...mapToFirestore(
                                                                {
                                                                  'stock': FieldValue
                                                                      .increment(
                                                                          -(0.5)),
                                                                },
                                                              ),
                                                            });
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .favorite_rounded,
                                                            color:
                                                                currentUserDocument
                                                                    ?.color1,
                                                            size: 30.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      postMessagePagePostMessagesRecord
                                                          .numLikes
                                                          .toString(),
                                                      '0',
                                                    ),
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .poppins(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      5.0, 0.0, 10.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (!postMessagePagePostMessagesRecord
                                                      .dislikes
                                                      .contains(
                                                          currentUserReference))
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  5.0,
                                                                  0.0),
                                                      child:
                                                          AuthUserStreamWidget(
                                                        builder: (context) =>
                                                            InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await postMessagePagePostMessagesRecord
                                                                .reference
                                                                .update({
                                                              ...mapToFirestore(
                                                                {
                                                                  'dislikes':
                                                                      FieldValue
                                                                          .arrayUnion([
                                                                    currentUserReference
                                                                  ]),
                                                                  'num_dislikes':
                                                                      FieldValue
                                                                          .increment(
                                                                              1),
                                                                },
                                                              ),
                                                            });

                                                            await MyNotificationsRecord
                                                                    .createDoc(
                                                                        postMessagePagePostMessagesRecord
                                                                            .commUser!)
                                                                .set({
                                                              ...createMyNotificationsRecordData(
                                                                text:
                                                                    'a réagis à votre commentaire :',
                                                                userRef:
                                                                    currentUserReference,
                                                                seen: false,
                                                                postMessage: widget
                                                                    .startedCommRef,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'date_time':
                                                                      FieldValue
                                                                          .serverTimestamp(),
                                                                },
                                                              ),
                                                            });

                                                            await columnUsersRecord
                                                                .reference
                                                                .update({
                                                              ...mapToFirestore(
                                                                {
                                                                  'stock': FieldValue
                                                                      .increment(
                                                                          0.5),
                                                                },
                                                              ),
                                                            });
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .heart_broken_outlined,
                                                            color:
                                                                currentUserDocument
                                                                    ?.color1,
                                                            size: 30.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  if (postMessagePagePostMessagesRecord
                                                      .dislikes
                                                      .contains(
                                                          currentUserReference))
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  5.0,
                                                                  0.0),
                                                      child:
                                                          AuthUserStreamWidget(
                                                        builder: (context) =>
                                                            InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await postMessagePagePostMessagesRecord
                                                                .reference
                                                                .update({
                                                              ...mapToFirestore(
                                                                {
                                                                  'dislikes':
                                                                      FieldValue
                                                                          .arrayRemove([
                                                                    currentUserReference
                                                                  ]),
                                                                  'num_dislikes':
                                                                      FieldValue
                                                                          .increment(
                                                                              -(1)),
                                                                },
                                                              ),
                                                            });

                                                            await columnUsersRecord
                                                                .reference
                                                                .update({
                                                              ...mapToFirestore(
                                                                {
                                                                  'stock': FieldValue
                                                                      .increment(
                                                                          -(0.5)),
                                                                },
                                                              ),
                                                            });
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .heart_broken_rounded,
                                                            color:
                                                                currentUserDocument
                                                                    ?.color1,
                                                            size: 30.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      postMessagePagePostMessagesRecord
                                                          .numDislikes
                                                          .toString(),
                                                      '0',
                                                    ),
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .poppins(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (!postMessagePagePostMessagesRecord
                                                      .redcards
                                                      .contains(
                                                          currentUserReference))
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  5.0,
                                                                  0.0),
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
                                                          context.pushNamed(
                                                            RedCardPostCommPageWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'commRef':
                                                                  serializeParam(
                                                                widget
                                                                    .startedCommRef,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Container(
                                                          width: 18.0,
                                                          height: 27.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2.0),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  if (postMessagePagePostMessagesRecord
                                                      .redcards
                                                      .contains(
                                                          currentUserReference))
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  5.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 18.0,
                                                        height: 27.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      2.0),
                                                        ),
                                                      ),
                                                    ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      postMessagePagePostMessagesRecord
                                                          .numRedcards
                                                          .toString(),
                                                      '0',
                                                    ),
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .poppins(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      thickness: 1.0,
                                      color: valueOrDefault<Color>(
                                        columnUsersRecord.color2,
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    if ((_model.showAudio == true) ||
                                        (_model.showComment == true) ||
                                        (_model.showImage == true))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 10.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (_model.showImage == true)
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          _model.showImage =
                                                              null;
                                                          safeSetState(() {});
                                                          safeSetState(() {
                                                            _model.isDataUploading1 =
                                                                false;
                                                            _model.uploadedLocalFile1 =
                                                                FFUploadedFile(
                                                                    bytes: Uint8List
                                                                        .fromList(
                                                                            []));
                                                            _model.uploadedFileUrl1 =
                                                                '';
                                                          });
                                                        },
                                                        child: Icon(
                                                          Icons.close_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          size: 30.0,
                                                        ),
                                                      ),
                                                      if (_model.uploadedFileUrl1 !=
                                                              '')
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            width: 50.0,
                                                            height: 40.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(2.0),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4.0),
                                                                child: Image
                                                                    .network(
                                                                  _model
                                                                      .uploadedFileUrl1,
                                                                  width: 300.0,
                                                                  height: 200.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                if (_model.showAudio == true)
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10.0,
                                                                10.0,
                                                                30.0,
                                                                0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      6.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            30.0,
                                                                            0.0),
                                                                child:
                                                                    AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      await startAudioRecording(
                                                                        context,
                                                                        audioRecorder:
                                                                            _model.audioRecorder1 ??=
                                                                                AudioRecorder(),
                                                                      );
                                                                    },
                                                                    child:
                                                                        FaIcon(
                                                                      FontAwesomeIcons
                                                                          .microphoneAlt,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        currentUserDocument
                                                                            ?.color1,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                      size:
                                                                          28.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            30.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      await stopAudioRecording(
                                                                        audioRecorder:
                                                                            _model.audioRecorder1,
                                                                        audioName:
                                                                            'recordedFileBytes1',
                                                                        onRecordingComplete:
                                                                            (audioFilePath,
                                                                                audioBytes) {
                                                                          _model.audioSport =
                                                                              audioFilePath;
                                                                          _model.recordedFileBytes1 =
                                                                              audioBytes;
                                                                        },
                                                                      );

                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .stop_circle,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        currentUserDocument
                                                                            ?.color1,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                      size:
                                                                          28.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            _model.showAudio =
                                                                null;
                                                            safeSetState(() {});
                                                          },
                                                          child: Icon(
                                                            Icons.close_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            size: 30.0,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                              ],
                                            ),
                                            if (_model.showComment == true)
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.showComment = null;
                                                  safeSetState(() {});
                                                  safeSetState(() {
                                                    _model
                                                        .commFieldTextController1
                                                        ?.clear();
                                                  });
                                                },
                                                child: Icon(
                                                  Icons.close_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  size: 30.0,
                                                ),
                                              ),
                                            if (_model.showComment == true)
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  child: AuthUserStreamWidget(
                                                    builder: (context) =>
                                                        TextFormField(
                                                      controller: _model
                                                          .commFieldTextController1,
                                                      focusNode: _model
                                                          .commFieldFocusNode1,
                                                      autofocus: false,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          't5hqcv93' /* ....................... */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color:
                                                                valueOrDefault<
                                                                    Color>(
                                                              currentUserDocument
                                                                  ?.color2,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                            ),
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      validator: _model
                                                          .commFieldTextController1Validator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 5.0, 0.0),
                                              child: AuthUserStreamWidget(
                                                builder: (context) => InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    var postMessagesRecordReference =
                                                        PostMessagesRecord.createDoc(
                                                            postMessagePagePostMessagesRecord
                                                                .parentReference);
                                                    await postMessagesRecordReference
                                                        .set({
                                                      ...createPostMessagesRecordData(
                                                        commUser:
                                                            currentUserReference,
                                                        text: _model
                                                            .commFieldTextController1
                                                            .text,
                                                        image: _model
                                                            .uploadedFileUrl1,
                                                        startedComm: widget
                                                            .startedCommRef,
                                                        moderator:
                                                            postMessagePagePostMessagesRecord
                                                                .moderator,
                                                        audio:
                                                            _model.audioESport,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'created_time': FieldValue
                                                              .serverTimestamp(),
                                                        },
                                                      ),
                                                    });
                                                    _model.commentRef =
                                                        PostMessagesRecord
                                                            .getDocumentFromData({
                                                      ...createPostMessagesRecordData(
                                                        commUser:
                                                            currentUserReference,
                                                        text: _model
                                                            .commFieldTextController1
                                                            .text,
                                                        image: _model
                                                            .uploadedFileUrl1,
                                                        startedComm: widget
                                                            .startedCommRef,
                                                        moderator:
                                                            postMessagePagePostMessagesRecord
                                                                .moderator,
                                                        audio:
                                                            _model.audioESport,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'created_time':
                                                              DateTime.now(),
                                                        },
                                                      ),
                                                    }, postMessagesRecordReference);
                                                    triggerPushNotification(
                                                      notificationTitle:
                                                          currentUserDisplayName,
                                                      notificationText:
                                                          'A commenté votre commentaire :',
                                                      notificationImageUrl:
                                                          currentUserPhoto,
                                                      userRefs: [
                                                        postMessagePagePostMessagesRecord
                                                            .commUser!
                                                      ],
                                                      initialPageName:
                                                          'MyNotifsList',
                                                      parameterData: {},
                                                    );

                                                    await widget
                                                        .startedCommRef!
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'num_comments':
                                                              FieldValue
                                                                  .increment(1),
                                                        },
                                                      ),
                                                    });

                                                    await MyNotificationsRecord
                                                            .createDoc(
                                                                postMessagePagePostMessagesRecord
                                                                    .commUser!)
                                                        .set({
                                                      ...createMyNotificationsRecordData(
                                                        text:
                                                            'a commenté votre commentaire :',
                                                        userRef:
                                                            currentUserReference,
                                                        seen: false,
                                                        postMessage: widget
                                                            .startedCommRef,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'date_time': FieldValue
                                                              .serverTimestamp(),
                                                        },
                                                      ),
                                                    });

                                                    context.pushNamed(
                                                      ListCommsPostComPageWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'startedCommRef':
                                                            serializeParam(
                                                          widget
                                                              .startedCommRef,
                                                          ParamType
                                                              .DocumentReference,
                                                        ),
                                                      }.withoutNulls,
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .scale,
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  600),
                                                        ),
                                                      },
                                                    );

                                                    await columnUsersRecord
                                                        .reference
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'stock': FieldValue
                                                              .increment(0.5),
                                                        },
                                                      ),
                                                    });
                                                    safeSetState(() {
                                                      _model
                                                          .commFieldTextController1
                                                          ?.clear();
                                                    });

                                                    safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.send_rounded,
                                                    color:
                                                        valueOrDefault<Color>(
                                                      currentUserDocument
                                                          ?.color1,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                    ),
                                                    size: 30.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    if ((_model.showEsportAudio == true) ||
                                        (_model.showEsportComment == true) ||
                                        (_model.showEsportImage == true))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 10.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (_model.showEsportImage ==
                                                    true)
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          _model.showEsportImage =
                                                              null;
                                                          safeSetState(() {});
                                                          safeSetState(() {
                                                            _model.isDataUploading2 =
                                                                false;
                                                            _model.uploadedLocalFile2 =
                                                                FFUploadedFile(
                                                                    bytes: Uint8List
                                                                        .fromList(
                                                                            []));
                                                            _model.uploadedFileUrl2 =
                                                                '';
                                                          });
                                                        },
                                                        child: Icon(
                                                          Icons.close_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          size: 30.0,
                                                        ),
                                                      ),
                                                      if (_model.uploadedFileUrl2 !=
                                                              '')
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            width: 50.0,
                                                            height: 40.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(2.0),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4.0),
                                                                child: Image
                                                                    .network(
                                                                  _model
                                                                      .uploadedFileUrl2,
                                                                  width: 300.0,
                                                                  height: 200.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                if (_model.showEsportAudio ==
                                                    true)
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10.0,
                                                                10.0,
                                                                30.0,
                                                                0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      6.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            30.0,
                                                                            0.0),
                                                                child:
                                                                    AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      await startAudioRecording(
                                                                        context,
                                                                        audioRecorder:
                                                                            _model.audioRecorder2 ??=
                                                                                AudioRecorder(),
                                                                      );
                                                                    },
                                                                    child:
                                                                        FaIcon(
                                                                      FontAwesomeIcons
                                                                          .microphoneAlt,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        currentUserDocument
                                                                            ?.color1,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                      size:
                                                                          28.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            30.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      await stopAudioRecording(
                                                                        audioRecorder:
                                                                            _model.audioRecorder2,
                                                                        audioName:
                                                                            'recordedFileBytes2',
                                                                        onRecordingComplete:
                                                                            (audioFilePath,
                                                                                audioBytes) {
                                                                          _model.audioESport =
                                                                              audioFilePath;
                                                                          _model.recordedFileBytes2 =
                                                                              audioBytes;
                                                                        },
                                                                      );

                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .stop_circle,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        currentUserDocument
                                                                            ?.color1,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                      size:
                                                                          28.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        if (_model
                                                                .showEsportAudio ==
                                                            true)
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              _model.showEsportAudio =
                                                                  null;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .close_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              size: 30.0,
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                              ],
                                            ),
                                            if (_model.showEsportComment ==
                                                true)
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.showEsportComment =
                                                      null;
                                                  safeSetState(() {});
                                                  safeSetState(() {
                                                    _model
                                                        .commFieldTextController2
                                                        ?.clear();
                                                  });
                                                },
                                                child: Icon(
                                                  Icons.close_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  size: 30.0,
                                                ),
                                              ),
                                            if (_model.showEsportComment ==
                                                true)
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  child: AuthUserStreamWidget(
                                                    builder: (context) =>
                                                        TextFormField(
                                                      controller: _model
                                                          .commFieldTextController2,
                                                      focusNode: _model
                                                          .commFieldFocusNode2,
                                                      autofocus: false,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'y1iwcxfh' /* ....................... */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color:
                                                                valueOrDefault<
                                                                    Color>(
                                                              currentUserDocument
                                                                  ?.color2,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                            ),
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      validator: _model
                                                          .commFieldTextController2Validator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 5.0, 0.0),
                                              child: AuthUserStreamWidget(
                                                builder: (context) => InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    var postMessagesRecordReference =
                                                        PostMessagesRecord.createDoc(
                                                            postMessagePagePostMessagesRecord
                                                                .parentReference);
                                                    await postMessagesRecordReference
                                                        .set({
                                                      ...createPostMessagesRecordData(
                                                        commUser:
                                                            currentUserReference,
                                                        text: _model
                                                            .commFieldTextController2
                                                            .text,
                                                        image: _model
                                                            .uploadedFileUrl2,
                                                        startedComm: widget
                                                            .startedCommRef,
                                                        moderator:
                                                            postMessagePagePostMessagesRecord
                                                                .moderator,
                                                        audio:
                                                            _model.audioESport,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'created_time': FieldValue
                                                              .serverTimestamp(),
                                                        },
                                                      ),
                                                    });
                                                    _model.commentEsportRef =
                                                        PostMessagesRecord
                                                            .getDocumentFromData({
                                                      ...createPostMessagesRecordData(
                                                        commUser:
                                                            currentUserReference,
                                                        text: _model
                                                            .commFieldTextController2
                                                            .text,
                                                        image: _model
                                                            .uploadedFileUrl2,
                                                        startedComm: widget
                                                            .startedCommRef,
                                                        moderator:
                                                            postMessagePagePostMessagesRecord
                                                                .moderator,
                                                        audio:
                                                            _model.audioESport,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'created_time':
                                                              DateTime.now(),
                                                        },
                                                      ),
                                                    }, postMessagesRecordReference);
                                                    triggerPushNotification(
                                                      notificationTitle:
                                                          currentUserDisplayName,
                                                      notificationText:
                                                          'A commenté votre commentaire :',
                                                      notificationImageUrl:
                                                          currentUserPhoto,
                                                      userRefs: [
                                                        postMessagePagePostMessagesRecord
                                                            .commUser!
                                                      ],
                                                      initialPageName:
                                                          'MyNotifsList',
                                                      parameterData: {},
                                                    );

                                                    await widget
                                                        .startedCommRef!
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'num_comments':
                                                              FieldValue
                                                                  .increment(1),
                                                        },
                                                      ),
                                                    });

                                                    await MyNotificationsRecord
                                                            .createDoc(
                                                                postMessagePagePostMessagesRecord
                                                                    .commUser!)
                                                        .set({
                                                      ...createMyNotificationsRecordData(
                                                        text:
                                                            'a commenté votre commentaire :',
                                                        userRef:
                                                            currentUserReference,
                                                        seen: false,
                                                        postMessage: widget
                                                            .startedCommRef,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'date_time': FieldValue
                                                              .serverTimestamp(),
                                                        },
                                                      ),
                                                    });

                                                    context.pushNamed(
                                                      ListCommsPostComPageWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'startedCommRef':
                                                            serializeParam(
                                                          widget
                                                              .startedCommRef,
                                                          ParamType
                                                              .DocumentReference,
                                                        ),
                                                      }.withoutNulls,
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .scale,
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  600),
                                                        ),
                                                      },
                                                    );

                                                    await columnUsersRecord
                                                        .reference
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'stock': FieldValue
                                                              .increment(0.5),
                                                        },
                                                      ),
                                                    });
                                                    safeSetState(() {
                                                      _model
                                                          .commFieldTextController2
                                                          ?.clear();
                                                    });

                                                    safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.send_rounded,
                                                    color:
                                                        valueOrDefault<Color>(
                                                      currentUserDocument
                                                          ?.color1,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                    ),
                                                    size: 30.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 10.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          if ((_model.showAudio != true) &&
                                              (_model.showComment != true) &&
                                              (valueOrDefault(
                                                      currentUserDocument
                                                          ?.rankValue,
                                                      '') ==
                                                  columnUsersRecord
                                                      .rankValue) &&
                                              (valueOrDefault<bool>(
                                                      currentUserDocument
                                                          ?.esport,
                                                      false) ==
                                                  false))
                                            AuthUserStreamWidget(
                                              builder: (context) => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.showComment = true;
                                                  safeSetState(() {});
                                                },
                                                child: FaIcon(
                                                  FontAwesomeIcons.edit,
                                                  color: valueOrDefault<Color>(
                                                    currentUserDocument?.color1,
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                  ),
                                                  size: 30.0,
                                                ),
                                              ),
                                            ),
                                          if ((valueOrDefault(
                                                      currentUserDocument
                                                          ?.erankValue,
                                                      '') ==
                                                  columnUsersRecord
                                                      .erankValue) &&
                                              (valueOrDefault<bool>(
                                                      currentUserDocument
                                                          ?.esport,
                                                      false) ==
                                                  true) &&
                                              (_model.showEsportAudio !=
                                                  true) &&
                                              (_model.showEsportComment !=
                                                  true))
                                            AuthUserStreamWidget(
                                              builder: (context) => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.showComment = true;
                                                  safeSetState(() {});
                                                },
                                                child: FaIcon(
                                                  FontAwesomeIcons.edit,
                                                  color: valueOrDefault<Color>(
                                                    currentUserDocument?.color1,
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                  ),
                                                  size: 30.0,
                                                ),
                                              ),
                                            ),
                                          if ((valueOrDefault(
                                                      currentUserDocument
                                                          ?.rankValue,
                                                      '') ==
                                                  columnUsersRecord
                                                      .rankValue) &&
                                              (valueOrDefault<bool>(
                                                      currentUserDocument
                                                          ?.esport,
                                                      false) ==
                                                  false) &&
                                              (_model.showImage != true))
                                            AuthUserStreamWidget(
                                              builder: (context) => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
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
                                                            .isDataUploading1 =
                                                        true);
                                                    var selectedUploadedFiles =
                                                        <FFUploadedFile>[];

                                                    var downloadUrls =
                                                        <String>[];
                                                    try {
                                                      selectedUploadedFiles =
                                                          selectedMedia
                                                              .map((m) =>
                                                                  FFUploadedFile(
                                                                    name: m
                                                                        .storagePath
                                                                        .split(
                                                                            '/')
                                                                        .last,
                                                                    bytes:
                                                                        m.bytes,
                                                                    height: m
                                                                        .dimensions
                                                                        ?.height,
                                                                    width: m
                                                                        .dimensions
                                                                        ?.width,
                                                                    blurHash: m
                                                                        .blurHash,
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
                                                              .where((u) =>
                                                                  u != null)
                                                              .map((u) => u!)
                                                              .toList();
                                                    } finally {
                                                      _model.isDataUploading1 =
                                                          false;
                                                    }
                                                    if (selectedUploadedFiles
                                                                .length ==
                                                            selectedMedia
                                                                .length &&
                                                        downloadUrls.length ==
                                                            selectedMedia
                                                                .length) {
                                                      safeSetState(() {
                                                        _model.uploadedLocalFile1 =
                                                            selectedUploadedFiles
                                                                .first;
                                                        _model.uploadedFileUrl1 =
                                                            downloadUrls.first;
                                                      });
                                                    } else {
                                                      safeSetState(() {});
                                                      return;
                                                    }
                                                  }

                                                  _model.showImage = true;
                                                  safeSetState(() {});
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
                                          if ((valueOrDefault(
                                                      currentUserDocument
                                                          ?.erankValue,
                                                      '') ==
                                                  columnUsersRecord
                                                      .erankValue) &&
                                              (valueOrDefault<bool>(
                                                      currentUserDocument
                                                          ?.esport,
                                                      false) ==
                                                  true) &&
                                              (_model.showEsportImage != true))
                                            AuthUserStreamWidget(
                                              builder: (context) => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
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
                                                            .isDataUploading2 =
                                                        true);
                                                    var selectedUploadedFiles =
                                                        <FFUploadedFile>[];

                                                    var downloadUrls =
                                                        <String>[];
                                                    try {
                                                      selectedUploadedFiles =
                                                          selectedMedia
                                                              .map((m) =>
                                                                  FFUploadedFile(
                                                                    name: m
                                                                        .storagePath
                                                                        .split(
                                                                            '/')
                                                                        .last,
                                                                    bytes:
                                                                        m.bytes,
                                                                    height: m
                                                                        .dimensions
                                                                        ?.height,
                                                                    width: m
                                                                        .dimensions
                                                                        ?.width,
                                                                    blurHash: m
                                                                        .blurHash,
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
                                                              .where((u) =>
                                                                  u != null)
                                                              .map((u) => u!)
                                                              .toList();
                                                    } finally {
                                                      _model.isDataUploading2 =
                                                          false;
                                                    }
                                                    if (selectedUploadedFiles
                                                                .length ==
                                                            selectedMedia
                                                                .length &&
                                                        downloadUrls.length ==
                                                            selectedMedia
                                                                .length) {
                                                      safeSetState(() {
                                                        _model.uploadedLocalFile2 =
                                                            selectedUploadedFiles
                                                                .first;
                                                        _model.uploadedFileUrl2 =
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
                                          if ((_model.showComment != true) &&
                                              (_model.showAudio != true) &&
                                              (valueOrDefault<bool>(
                                                      currentUserDocument
                                                          ?.esport,
                                                      false) ==
                                                  false) &&
                                              (valueOrDefault(
                                                      currentUserDocument
                                                          ?.rankValue,
                                                      '') ==
                                                  columnUsersRecord.rankValue))
                                            AuthUserStreamWidget(
                                              builder: (context) => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.showAudio = true;
                                                  safeSetState(() {});
                                                },
                                                child: FaIcon(
                                                  FontAwesomeIcons
                                                      .microphoneAlt,
                                                  color: valueOrDefault<Color>(
                                                    currentUserDocument?.color1,
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                  ),
                                                  size: 30.0,
                                                ),
                                              ),
                                            ),
                                          if ((valueOrDefault(
                                                      currentUserDocument
                                                          ?.erankValue,
                                                      '') ==
                                                  columnUsersRecord
                                                      .erankValue) &&
                                              (valueOrDefault<bool>(
                                                      currentUserDocument
                                                          ?.esport,
                                                      false) ==
                                                  true) &&
                                              (_model.showEsportAudio !=
                                                  true) &&
                                              (_model.showEsportComment !=
                                                  true))
                                            AuthUserStreamWidget(
                                              builder: (context) => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.showAudio = true;
                                                  safeSetState(() {});
                                                },
                                                child: FaIcon(
                                                  FontAwesomeIcons
                                                      .microphoneAlt,
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
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        );
                      },
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
