import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/comment_fold/delete_event_message/delete_event_message_widget.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import '/team_fold/audio_fan_conference/audio_fan_conference_widget.dart';
import '/team_fold/audio_member_conference/audio_member_conference_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:record/record.dart';
import 'event_message_page_model.dart';
export 'event_message_page_model.dart';

class EventMessagePageWidget extends StatefulWidget {
  const EventMessagePageWidget({
    super.key,
    required this.startedCommRef,
  });

  final DocumentReference? startedCommRef;

  static String routeName = 'EventMessagePage';
  static String routePath = '/eventMessagePage';

  @override
  State<EventMessagePageWidget> createState() => _EventMessagePageWidgetState();
}

class _EventMessagePageWidgetState extends State<EventMessagePageWidget> {
  late EventMessagePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventMessagePageModel());

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
    return StreamBuilder<EventMessagesRecord>(
      stream: EventMessagesRecord.getDocument(widget.startedCommRef!),
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

        final eventMessagePageEventMessagesRecord = snapshot.data!;

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
                          eventMessagePageEventMessagesRecord.commUser!),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                6.0, 0.0),
                                                    child: Container(
                                                      width: 35.0,
                                                      height: 35.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25.0),
                                                        child: Image.network(
                                                          columnUsersRecord
                                                              .photoUrl,
                                                          width: 300.0,
                                                          height: 200.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  if (!columnUsersRecord.blocks
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
                                                        valueOrDefault<String>(
                                                          columnUsersRecord
                                                              .displayName,
                                                          'NewUser',
                                                        ),
                                                        maxLines: 1,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
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
                                                                ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if ((valueOrDefault(
                                                            currentUserDocument
                                                                ?.stsocialapp,
                                                            '') ==
                                                        'administrateur') ||
                                                    (eventMessagePageEventMessagesRecord
                                                            .commUser ==
                                                        currentUserReference))
                                                  AuthUserStreamWidget(
                                                    builder: (context) =>
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
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          enableDrag: false,
                                                          context: context,
                                                          builder: (context) {
                                                            return GestureDetector(
                                                              onTap: () {
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus();
                                                                FocusManager
                                                                    .instance
                                                                    .primaryFocus
                                                                    ?.unfocus();
                                                              },
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    DeleteEventMessageWidget(
                                                                  startedCommRef:
                                                                      widget
                                                                          .startedCommRef!,
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            safeSetState(
                                                                () {}));
                                                      },
                                                      child: Icon(
                                                        Icons.delete_forever,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        size: 25.0,
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ],
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
                                          eventMessagePageEventMessagesRecord
                                              .reference.id,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .warning,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    if (eventMessagePageEventMessagesRecord
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
                                                      eventMessagePageEventMessagesRecord
                                                          .image,
                                                      ParamType.String,
                                                    ),
                                                    'userRef': serializeParam(
                                                      eventMessagePageEventMessagesRecord
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
                                                  eventMessagePageEventMessagesRecord
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
                                    if (eventMessagePageEventMessagesRecord
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
                                                  eventMessagePageEventMessagesRecord
                                                      .audio,
                                                  metas: Metas(
                                                    title: ' ',
                                                  ),
                                                ),
                                                titleTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                playbackDurationTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
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
                                    eventMessagePageEventMessagesRecord.text,
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
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
                                              eventMessagePageEventMessagesRecord
                                                  .createdTime!),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
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
                                                          ListCommsEventCommPageWidget
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
                                                      eventMessagePageEventMessagesRecord
                                                          .numComments
                                                          .toString(),
                                                      '0',
                                                    ),
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
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
                                                  if (!eventMessagePageEventMessagesRecord
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
                                                            await eventMessagePageEventMessagesRecord
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
                                                                        eventMessagePageEventMessagesRecord
                                                                            .commUser!)
                                                                .set({
                                                              ...createMyNotificationsRecordData(
                                                                text:
                                                                    'aime votre commentaire :',
                                                                userRef:
                                                                    currentUserReference,
                                                                seen: false,
                                                                eventMessage:
                                                                    widget
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
                                                  if (eventMessagePageEventMessagesRecord
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
                                                            await eventMessagePageEventMessagesRecord
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
                                                      eventMessagePageEventMessagesRecord
                                                          .numLikes
                                                          .toString(),
                                                      '0',
                                                    ),
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
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
                                                  if (!eventMessagePageEventMessagesRecord
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
                                                            await eventMessagePageEventMessagesRecord
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
                                                                        eventMessagePageEventMessagesRecord
                                                                            .commUser!)
                                                                .set({
                                                              ...createMyNotificationsRecordData(
                                                                text:
                                                                    'a réagis à votre commentaire :',
                                                                userRef:
                                                                    currentUserReference,
                                                                seen: false,
                                                                eventMessage:
                                                                    widget
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
                                                  if (eventMessagePageEventMessagesRecord
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
                                                            await eventMessagePageEventMessagesRecord
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
                                                      eventMessagePageEventMessagesRecord
                                                          .numDislikes
                                                          .toString(),
                                                      '0',
                                                    ),
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
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
                                                  if (!eventMessagePageEventMessagesRecord
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
                                                            RedCardEventCommPageWidget
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
                                                  if (eventMessagePageEventMessagesRecord
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
                                                      eventMessagePageEventMessagesRecord
                                                          .numRedcards
                                                          .toString(),
                                                      '0',
                                                    ),
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
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
                                    if ((valueOrDefault(
                                                currentUserDocument?.rankValue,
                                                '') ==
                                            columnUsersRecord.rankValue) &&
                                        (valueOrDefault<bool>(
                                                currentUserDocument?.esport,
                                                false) ==
                                            false))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 10.0),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        10.0,
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
                                                                final selectedMedia =
                                                                    await selectMediaWithSourceBottomSheet(
                                                                  context:
                                                                      context,
                                                                  maxWidth:
                                                                      1000.00,
                                                                  maxHeight:
                                                                      1000.00,
                                                                  allowPhoto:
                                                                      true,
                                                                );
                                                                if (selectedMedia !=
                                                                        null &&
                                                                    selectedMedia.every((m) =>
                                                                        validateFileFormat(
                                                                            m.storagePath,
                                                                            context))) {
                                                                  safeSetState(() =>
                                                                      _model.isDataUploading1 =
                                                                          true);
                                                                  var selectedUploadedFiles =
                                                                      <FFUploadedFile>[];

                                                                  var downloadUrls =
                                                                      <String>[];
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

                                                                    downloadUrls = (await Future
                                                                            .wait(
                                                                      selectedMedia
                                                                          .map(
                                                                        (m) async => await uploadData(
                                                                            m.storagePath,
                                                                            m.bytes),
                                                                      ),
                                                                    ))
                                                                        .where((u) =>
                                                                            u !=
                                                                            null)
                                                                        .map((u) =>
                                                                            u!)
                                                                        .toList();
                                                                  } finally {
                                                                    _model.isDataUploading1 =
                                                                        false;
                                                                  }
                                                                  if (selectedUploadedFiles
                                                                              .length ==
                                                                          selectedMedia
                                                                              .length &&
                                                                      downloadUrls
                                                                              .length ==
                                                                          selectedMedia
                                                                              .length) {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.uploadedLocalFile1 =
                                                                          selectedUploadedFiles
                                                                              .first;
                                                                      _model.uploadedFileUrl1 =
                                                                          downloadUrls
                                                                              .first;
                                                                    });
                                                                  } else {
                                                                    safeSetState(
                                                                        () {});
                                                                    return;
                                                                  }
                                                                }
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .image_search_rounded,
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
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
                                                          if (_model.uploadedFileUrl1 !=
                                                                  '')
                                                            Container(
                                                              width: 50.0,
                                                              height: 40.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            6.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            2.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.0),
                                                                  child: Image
                                                                      .network(
                                                                    _model
                                                                        .uploadedFileUrl1,
                                                                    width:
                                                                        300.0,
                                                                    height:
                                                                        200.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                        ],
                                                      ),
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
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          15.0,
                                                                          10.0,
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
                                                                onTap:
                                                                    () async {
                                                                  await startAudioRecording(
                                                                    context,
                                                                    audioRecorder:
                                                                        _model.audioRecorder1 ??=
                                                                            AudioRecorder(),
                                                                  );
                                                                },
                                                                child: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .microphoneAlt,
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
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
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          15.0,
                                                                          0.0,
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
                                                                onTap:
                                                                    () async {
                                                                  await stopAudioRecording(
                                                                    audioRecorder:
                                                                        _model
                                                                            .audioRecorder1,
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
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
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
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  child: TextFormField(
                                                    controller: _model
                                                        .commFieldTextController1,
                                                    focusNode: _model
                                                        .commFieldFocusNode1,
                                                    autofocus: false,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText:
                                                          '.......................',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: valueOrDefault<
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
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    maxLines: 2,
                                                    validator: _model
                                                        .commFieldTextController1Validator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
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
                                                        var eventMessagesRecordReference =
                                                            EventMessagesRecord
                                                                .createDoc(
                                                                    eventMessagePageEventMessagesRecord
                                                                        .parentReference);
                                                        await eventMessagesRecordReference
                                                            .set({
                                                          ...createEventMessagesRecordData(
                                                            commUser:
                                                                currentUserReference,
                                                            text: _model
                                                                .commFieldTextController1
                                                                .text,
                                                            image: _model
                                                                .uploadedFileUrl1,
                                                            moderator:
                                                                eventMessagePageEventMessagesRecord
                                                                    .moderator,
                                                            startedComm: widget
                                                                .startedCommRef,
                                                            audio: _model
                                                                .audioSport,
                                                          ),
                                                          ...mapToFirestore(
                                                            {
                                                              'created_time':
                                                                  FieldValue
                                                                      .serverTimestamp(),
                                                            },
                                                          ),
                                                        });
                                                        _model.commentRef =
                                                            EventMessagesRecord
                                                                .getDocumentFromData({
                                                          ...createEventMessagesRecordData(
                                                            commUser:
                                                                currentUserReference,
                                                            text: _model
                                                                .commFieldTextController1
                                                                .text,
                                                            image: _model
                                                                .uploadedFileUrl1,
                                                            moderator:
                                                                eventMessagePageEventMessagesRecord
                                                                    .moderator,
                                                            startedComm: widget
                                                                .startedCommRef,
                                                            audio: _model
                                                                .audioSport,
                                                          ),
                                                          ...mapToFirestore(
                                                            {
                                                              'created_time':
                                                                  DateTime
                                                                      .now(),
                                                            },
                                                          ),
                                                        }, eventMessagesRecordReference);
                                                        triggerPushNotification(
                                                          notificationTitle:
                                                              currentUserDisplayName,
                                                          notificationText:
                                                              'A commenté votre commentaire :',
                                                          notificationImageUrl:
                                                              currentUserPhoto,
                                                          userRefs: [
                                                            eventMessagePageEventMessagesRecord
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
                                                                      .increment(
                                                                          1),
                                                            },
                                                          ),
                                                        });

                                                        await MyNotificationsRecord
                                                                .createDoc(
                                                                    eventMessagePageEventMessagesRecord
                                                                        .commUser!)
                                                            .set({
                                                          ...createMyNotificationsRecordData(
                                                            text:
                                                                'a commenté votre commentaire :',
                                                            userRef:
                                                                currentUserReference,
                                                            seen: false,
                                                            eventMessage: widget
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

                                                        context.pushNamed(
                                                          ListCommsEventCommPageWidget
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
                                                                  .increment(
                                                                      0.5),
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
                                                        color: valueOrDefault<
                                                            Color>(
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
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    if ((valueOrDefault(
                                                currentUserDocument?.erankValue,
                                                '') ==
                                            columnUsersRecord.erankValue) &&
                                        (valueOrDefault<bool>(
                                                currentUserDocument?.esport,
                                                false) ==
                                            true))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 10.0),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 1.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
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
                                                                onTap:
                                                                    () async {
                                                                  final selectedMedia =
                                                                      await selectMediaWithSourceBottomSheet(
                                                                    context:
                                                                        context,
                                                                    maxWidth:
                                                                        1000.00,
                                                                    maxHeight:
                                                                        1000.00,
                                                                    allowPhoto:
                                                                        true,
                                                                  );
                                                                  if (selectedMedia !=
                                                                          null &&
                                                                      selectedMedia.every((m) => validateFileFormat(
                                                                          m.storagePath,
                                                                          context))) {
                                                                    safeSetState(() =>
                                                                        _model.isDataUploading2 =
                                                                            true);
                                                                    var selectedUploadedFiles =
                                                                        <FFUploadedFile>[];

                                                                    var downloadUrls =
                                                                        <String>[];
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

                                                                      downloadUrls = (await Future
                                                                              .wait(
                                                                        selectedMedia
                                                                            .map(
                                                                          (m) async => await uploadData(
                                                                              m.storagePath,
                                                                              m.bytes),
                                                                        ),
                                                                      ))
                                                                          .where((u) =>
                                                                              u !=
                                                                              null)
                                                                          .map((u) =>
                                                                              u!)
                                                                          .toList();
                                                                    } finally {
                                                                      _model.isDataUploading2 =
                                                                          false;
                                                                    }
                                                                    if (selectedUploadedFiles.length ==
                                                                            selectedMedia
                                                                                .length &&
                                                                        downloadUrls.length ==
                                                                            selectedMedia.length) {
                                                                      safeSetState(
                                                                          () {
                                                                        _model.uploadedLocalFile2 =
                                                                            selectedUploadedFiles.first;
                                                                        _model.uploadedFileUrl2 =
                                                                            downloadUrls.first;
                                                                      });
                                                                    } else {
                                                                      safeSetState(
                                                                          () {});
                                                                      return;
                                                                    }
                                                                  }
                                                                },
                                                                child: Icon(
                                                                  Icons
                                                                      .image_search_rounded,
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
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
                                                            if (_model.uploadedFileUrl2 !=
                                                                    '')
                                                              Container(
                                                                width: 50.0,
                                                                height: 40.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              6.0),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              2.0),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                    child: Image
                                                                        .network(
                                                                      _model
                                                                          .uploadedFileUrl2,
                                                                      width:
                                                                          300.0,
                                                                      height:
                                                                          200.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
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
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        15.0,
                                                                        10.0,
                                                                        0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
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
                                                                  child: FaIcon(
                                                                    FontAwesomeIcons
                                                                        .microphoneAlt,
                                                                    color: valueOrDefault<
                                                                        Color>(
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
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        15.0,
                                                                        0.0,
                                                                        0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    await stopAudioRecording(
                                                                      audioRecorder:
                                                                          _model
                                                                              .audioRecorder2,
                                                                      audioName:
                                                                          'recordedFileBytes2',
                                                                      onRecordingComplete:
                                                                          (audioFilePath,
                                                                              audioBytes) {
                                                                        _model.audioEsport =
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
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                    size: 28.0,
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
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  child: TextFormField(
                                                    controller: _model
                                                        .commFieldTextController2,
                                                    focusNode: _model
                                                        .commFieldFocusNode2,
                                                    autofocus: false,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText:
                                                          '.......................',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: valueOrDefault<
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
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    maxLines: 2,
                                                    validator: _model
                                                        .commFieldTextController2Validator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 5.0, 0.0),
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
                                                    var eventMessagesRecordReference =
                                                        EventMessagesRecord.createDoc(
                                                            eventMessagePageEventMessagesRecord
                                                                .parentReference);
                                                    await eventMessagesRecordReference
                                                        .set({
                                                      ...createEventMessagesRecordData(
                                                        commUser:
                                                            currentUserReference,
                                                        text: _model
                                                            .commFieldTextController2
                                                            .text,
                                                        image: _model
                                                            .uploadedFileUrl2,
                                                        moderator:
                                                            eventMessagePageEventMessagesRecord
                                                                .moderator,
                                                        startedComm: widget
                                                            .startedCommRef,
                                                        audio:
                                                            _model.audioEsport,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'created_time': FieldValue
                                                              .serverTimestamp(),
                                                        },
                                                      ),
                                                    });
                                                    _model.commentEsportRef =
                                                        EventMessagesRecord
                                                            .getDocumentFromData({
                                                      ...createEventMessagesRecordData(
                                                        commUser:
                                                            currentUserReference,
                                                        text: _model
                                                            .commFieldTextController2
                                                            .text,
                                                        image: _model
                                                            .uploadedFileUrl2,
                                                        moderator:
                                                            eventMessagePageEventMessagesRecord
                                                                .moderator,
                                                        startedComm: widget
                                                            .startedCommRef,
                                                        audio:
                                                            _model.audioEsport,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'created_time':
                                                              DateTime.now(),
                                                        },
                                                      ),
                                                    }, eventMessagesRecordReference);
                                                    triggerPushNotification(
                                                      notificationTitle:
                                                          currentUserDisplayName,
                                                      notificationText:
                                                          'A commenté votre commentaire :',
                                                      notificationImageUrl:
                                                          currentUserPhoto,
                                                      userRefs: [
                                                        eventMessagePageEventMessagesRecord
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
                                                                eventMessagePageEventMessagesRecord
                                                                    .commUser!)
                                                        .set({
                                                      ...createMyNotificationsRecordData(
                                                        text:
                                                            'a commenté votre commentaire :',
                                                        userRef:
                                                            currentUserReference,
                                                        seen: false,
                                                        eventMessage: widget
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
                                                      ListCommsEventCommPageWidget
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
                                            ],
                                          ),
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
