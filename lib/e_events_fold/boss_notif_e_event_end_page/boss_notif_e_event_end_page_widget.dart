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
import 'boss_notif_e_event_end_page_model.dart';
export 'boss_notif_e_event_end_page_model.dart';

class BossNotifEEventEndPageWidget extends StatefulWidget {
  const BossNotifEEventEndPageWidget({
    super.key,
    required this.notifRef,
    required this.eEventRef,
  });

  final DocumentReference? notifRef;
  final DocumentReference? eEventRef;

  @override
  State<BossNotifEEventEndPageWidget> createState() =>
      _BossNotifEEventEndPageWidgetState();
}

class _BossNotifEEventEndPageWidgetState
    extends State<BossNotifEEventEndPageWidget> {
  late BossNotifEEventEndPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BossNotifEEventEndPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MyNotificationsRecord>(
      stream: MyNotificationsRecord.getDocument(widget.notifRef!),
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

        final bossNotifEEventEndPageMyNotificationsRecord = snapshot.data!;

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
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 30.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.safePop();
                                  },
                                  child: Icon(
                                    Icons.arrow_back_ios_new_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 30.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Détails Résultat',
                              maxLines: 1,
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Text(
                            dateTimeFormat(
                                "d/M H:mm",
                                bossNotifEEventEndPageMyNotificationsRecord
                                    .dateTime!),
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                          ),
                        ),
                      ),
                      StreamBuilder<TeamsRecord>(
                        stream: TeamsRecord.getDocument(
                            bossNotifEEventEndPageMyNotificationsRecord
                                .teamRef!),
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

                          final columnTeamTeamsRecord = snapshot.data!;

                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 6.0, 0.0),
                                      child: Container(
                                        width: 65.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: Image.network(
                                            columnTeamTeamsRecord.logo,
                                            width: 300.0,
                                            height: 200.0,
                                            fit: BoxFit.fitHeight,
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
                                        context.pushNamed(
                                          'TeamPage',
                                          queryParameters: {
                                            'teamRef': serializeParam(
                                              columnTeamTeamsRecord.reference,
                                              ParamType.DocumentReference,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Text(
                                        columnTeamTeamsRecord.name,
                                        maxLines: 1,
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'A configuré le resultat de votre rencontre',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      StreamBuilder<EventsRecord>(
                        stream: EventsRecord.getDocument(widget.eEventRef!),
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

                          final columnEventEventsRecord = snapshot.data!;

                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    StreamBuilder<TeamsRecord>(
                                      stream: TeamsRecord.getDocument(
                                          columnEventEventsRecord.teamdomRef!),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .accent4,
                                                ),
                                              ),
                                            ),
                                          );
                                        }

                                        final contDomTeamsRecord =
                                            snapshot.data!;

                                        return Container(
                                          width: 160.0,
                                          height: 70.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width: 45.0,
                                                  height: 35.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                    child: Image.network(
                                                      contDomTeamsRecord.logo,
                                                      width: 300.0,
                                                      height: 200.0,
                                                      fit: BoxFit.fitHeight,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
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
                                                        'TeamPage',
                                                        queryParameters: {
                                                          'teamRef':
                                                              serializeParam(
                                                            contDomTeamsRecord
                                                                .reference,
                                                            ParamType
                                                                .DocumentReference,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    child: Text(
                                                      contDomTeamsRecord.name,
                                                      textAlign:
                                                          TextAlign.start,
                                                      maxLines: 2,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelSmall
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                    Text(
                                      '-',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    StreamBuilder<TeamsRecord>(
                                      stream: TeamsRecord.getDocument(
                                          columnEventEventsRecord.teamextRef!),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .accent4,
                                                ),
                                              ),
                                            ),
                                          );
                                        }

                                        final contExtTeamsRecord =
                                            snapshot.data!;

                                        return Container(
                                          width: 160.0,
                                          height: 70.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width: 45.0,
                                                  height: 35.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                    child: Image.network(
                                                      contExtTeamsRecord.logo,
                                                      width: 300.0,
                                                      height: 200.0,
                                                      fit: BoxFit.fitHeight,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
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
                                                        'TeamPage',
                                                        queryParameters: {
                                                          'teamRef':
                                                              serializeParam(
                                                            contExtTeamsRecord
                                                                .reference,
                                                            ParamType
                                                                .DocumentReference,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    child: Text(
                                                      contExtTeamsRecord.name,
                                                      textAlign:
                                                          TextAlign.start,
                                                      maxLines: 2,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelSmall
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              if (columnEventEventsRecord.statut == false)
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Gagnant',
                                        maxLines: 1,
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    if (bossNotifEEventEndPageMyNotificationsRecord
                                            .eteamWin !=
                                        null)
                                      StreamBuilder<TeamsRecord>(
                                        stream: TeamsRecord.getDocument(
                                            bossNotifEEventEndPageMyNotificationsRecord
                                                .eteamWin!),
                                        builder: (context, snapshot) {
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
                                                    FlutterFlowTheme.of(context)
                                                        .accent4,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }

                                          final rowTeamWinTeamsRecord =
                                              snapshot.data!;

                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  rowTeamWinTeamsRecord.name,
                                                  textAlign: TextAlign.center,
                                                  maxLines: 2,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    if (bossNotifEEventEndPageMyNotificationsRecord
                                                .eteamDraw !=
                                            '')
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          bossNotifEEventEndPageMyNotificationsRecord
                                              .eteamDraw,
                                          textAlign: TextAlign.start,
                                          maxLines: 2,
                                          style: FlutterFlowTheme.of(context)
                                              .headlineMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 160.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                            ),
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  bossNotifEEventEndPageMyNotificationsRecord
                                                      .scoreDom
                                                      .toString(),
                                                  '0',
                                                ),
                                                textAlign: TextAlign.end,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 160.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                            ),
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  bossNotifEEventEndPageMyNotificationsRecord
                                                      .scoreExt
                                                      .toString(),
                                                  '0',
                                                ),
                                                textAlign: TextAlign.end,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 10.0),
                                  child: Text(
                                    'Si le résultat ci-dessus est égal avec ce qu\'il s\'est vraiment passé.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              if (bossNotifEEventEndPageMyNotificationsRecord
                                      .eteamWin ==
                                  columnEventEventsRecord.teamdomRef)
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 20.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await MyNotificationsRecord.createDoc(
                                                bossNotifEEventEndPageMyNotificationsRecord
                                                    .userRef!)
                                            .set({
                                          ...createMyNotificationsRecordData(
                                            text: 'Validation du résultat.',
                                            seen: false,
                                            userRef: currentUserReference,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'date_time':
                                                  FieldValue.serverTimestamp(),
                                            },
                                          ),
                                        });

                                        await columnEventEventsRecord.reference
                                            .update(createEventsRecordData(
                                          scoreDom:
                                              bossNotifEEventEndPageMyNotificationsRecord
                                                  .scoreDom,
                                          scoreExt:
                                              bossNotifEEventEndPageMyNotificationsRecord
                                                  .scoreExt,
                                          seenScore: true,
                                        ));

                                        await columnEventEventsRecord
                                            .teamdomRef!
                                            .update({
                                          ...mapToFirestore(
                                            {
                                              'goals_points_in':
                                                  FieldValue.increment(
                                                      bossNotifEEventEndPageMyNotificationsRecord
                                                          .scoreDom),
                                              'goals_points_out':
                                                  FieldValue.increment(
                                                      bossNotifEEventEndPageMyNotificationsRecord
                                                          .scoreExt),
                                              'points': FieldValue.increment(3),
                                              'wins': FieldValue.increment(1),
                                              'total_games':
                                                  FieldValue.increment(1),
                                            },
                                          ),
                                        });

                                        await columnEventEventsRecord
                                            .teamextRef!
                                            .update({
                                          ...mapToFirestore(
                                            {
                                              'goals_points_in':
                                                  FieldValue.increment(
                                                      bossNotifEEventEndPageMyNotificationsRecord
                                                          .scoreExt),
                                              'goals_points_out':
                                                  FieldValue.increment(
                                                      bossNotifEEventEndPageMyNotificationsRecord
                                                          .scoreDom),
                                              'points': FieldValue.increment(0),
                                              'looses': FieldValue.increment(1),
                                              'total_games':
                                                  FieldValue.increment(1),
                                            },
                                          ),
                                        });

                                        await currentUserReference!
                                            .update(createUsersRecordData(
                                          guest: false,
                                        ));

                                        await widget.notifRef!.update(
                                            createMyNotificationsRecordData(
                                          seen: true,
                                        ));
                                        await widget.notifRef!.delete();

                                        context.pushNamed(
                                          'AddRatingPlayersPage',
                                          queryParameters: {
                                            'eventRef': serializeParam(
                                              widget.eEventRef,
                                              ParamType.DocumentReference,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      text: 'Publier le résultat Dom',
                                      options: FFButtonOptions(
                                        width: 350.0,
                                        height: 50.0,
                                        padding: const EdgeInsets.all(0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                        hoverColor: FlutterFlowTheme.of(context)
                                            .success,
                                        hoverTextColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                      ),
                                    ),
                                  ),
                                ),
                              if (bossNotifEEventEndPageMyNotificationsRecord
                                          .eteamDraw !=
                                      '')
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 20.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await MyNotificationsRecord.createDoc(
                                                bossNotifEEventEndPageMyNotificationsRecord
                                                    .userRef!)
                                            .set({
                                          ...createMyNotificationsRecordData(
                                            text: 'Validation du résultat.',
                                            seen: false,
                                            userRef: currentUserReference,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'date_time':
                                                  FieldValue.serverTimestamp(),
                                            },
                                          ),
                                        });

                                        await columnEventEventsRecord.reference
                                            .update(createEventsRecordData(
                                          scoreDom:
                                              bossNotifEEventEndPageMyNotificationsRecord
                                                  .scoreDom,
                                          scoreExt:
                                              bossNotifEEventEndPageMyNotificationsRecord
                                                  .scoreExt,
                                          seenScore: true,
                                        ));

                                        await columnEventEventsRecord
                                            .teamdomRef!
                                            .update({
                                          ...mapToFirestore(
                                            {
                                              'goals_points_in':
                                                  FieldValue.increment(
                                                      bossNotifEEventEndPageMyNotificationsRecord
                                                          .scoreDom),
                                              'goals_points_out':
                                                  FieldValue.increment(
                                                      bossNotifEEventEndPageMyNotificationsRecord
                                                          .scoreExt),
                                              'draws': FieldValue.increment(1),
                                              'points': FieldValue.increment(1),
                                              'total_games':
                                                  FieldValue.increment(1),
                                            },
                                          ),
                                        });

                                        await columnEventEventsRecord
                                            .teamextRef!
                                            .update({
                                          ...mapToFirestore(
                                            {
                                              'goals_points_in':
                                                  FieldValue.increment(
                                                      bossNotifEEventEndPageMyNotificationsRecord
                                                          .scoreExt),
                                              'goals_points_out':
                                                  FieldValue.increment(
                                                      bossNotifEEventEndPageMyNotificationsRecord
                                                          .scoreDom),
                                              'draws': FieldValue.increment(1),
                                              'points': FieldValue.increment(1),
                                              'total_games':
                                                  FieldValue.increment(1),
                                            },
                                          ),
                                        });

                                        await currentUserReference!
                                            .update(createUsersRecordData(
                                          guest: false,
                                        ));

                                        await widget.notifRef!.update(
                                            createMyNotificationsRecordData(
                                          seen: true,
                                        ));
                                        await widget.notifRef!.delete();

                                        context.pushNamed(
                                          'AddRatingPlayersPage',
                                          queryParameters: {
                                            'eventRef': serializeParam(
                                              widget.eEventRef,
                                              ParamType.DocumentReference,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      text: 'Publier le résultat Draw',
                                      options: FFButtonOptions(
                                        width: 350.0,
                                        height: 50.0,
                                        padding: const EdgeInsets.all(0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                        hoverColor: FlutterFlowTheme.of(context)
                                            .success,
                                        hoverTextColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                      ),
                                    ),
                                  ),
                                ),
                              if (bossNotifEEventEndPageMyNotificationsRecord
                                      .eteamWin ==
                                  columnEventEventsRecord.teamextRef)
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 20.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await MyNotificationsRecord.createDoc(
                                                bossNotifEEventEndPageMyNotificationsRecord
                                                    .userRef!)
                                            .set({
                                          ...createMyNotificationsRecordData(
                                            text: 'Validation du résultat.',
                                            seen: false,
                                            userRef: currentUserReference,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'date_time':
                                                  FieldValue.serverTimestamp(),
                                            },
                                          ),
                                        });

                                        await columnEventEventsRecord.reference
                                            .update(createEventsRecordData(
                                          scoreDom:
                                              bossNotifEEventEndPageMyNotificationsRecord
                                                  .scoreDom,
                                          scoreExt:
                                              bossNotifEEventEndPageMyNotificationsRecord
                                                  .scoreExt,
                                          seenScore: true,
                                        ));

                                        await columnEventEventsRecord
                                            .teamdomRef!
                                            .update({
                                          ...mapToFirestore(
                                            {
                                              'goals_points_in':
                                                  FieldValue.increment(
                                                      bossNotifEEventEndPageMyNotificationsRecord
                                                          .scoreDom),
                                              'goals_points_out':
                                                  FieldValue.increment(
                                                      bossNotifEEventEndPageMyNotificationsRecord
                                                          .scoreExt),
                                              'points': FieldValue.increment(0),
                                              'looses': FieldValue.increment(1),
                                              'total_games':
                                                  FieldValue.increment(1),
                                            },
                                          ),
                                        });

                                        await columnEventEventsRecord
                                            .teamextRef!
                                            .update({
                                          ...mapToFirestore(
                                            {
                                              'goals_points_in':
                                                  FieldValue.increment(
                                                      bossNotifEEventEndPageMyNotificationsRecord
                                                          .scoreExt),
                                              'goals_points_out':
                                                  FieldValue.increment(
                                                      bossNotifEEventEndPageMyNotificationsRecord
                                                          .scoreDom),
                                              'points': FieldValue.increment(3),
                                              'wins': FieldValue.increment(1),
                                              'total_games':
                                                  FieldValue.increment(1),
                                            },
                                          ),
                                        });

                                        await currentUserReference!
                                            .update(createUsersRecordData(
                                          guest: false,
                                        ));

                                        await widget.notifRef!.update(
                                            createMyNotificationsRecordData(
                                          seen: true,
                                        ));
                                        await widget.notifRef!.delete();

                                        context.pushNamed(
                                          'AddRatingPlayersPage',
                                          queryParameters: {
                                            'eventRef': serializeParam(
                                              widget.eEventRef,
                                              ParamType.DocumentReference,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      text: 'Publier le résultat Ext',
                                      options: FFButtonOptions(
                                        width: 350.0,
                                        height: 50.0,
                                        padding: const EdgeInsets.all(0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                        hoverColor: FlutterFlowTheme.of(context)
                                            .success,
                                        hoverTextColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                      ),
                                    ),
                                  ),
                                ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Text(
                                    'Si le résultat ci-dessus ne correspond pas avec ce qu\'il s\'est vraiment passé.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'Nous allons mettre une pénalité\nà la E Team voulant tricher',
                                  textAlign: TextAlign.center,
                                  maxLines: 10,
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 10.0),
                                  child: Text(
                                    'Refuser Résultat',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: Text(
                                    'Pour la raison suivante...',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              FlutterFlowDropDown<String>(
                                controller:
                                    _model.dropReasonsValueController ??=
                                        FormFieldController<String>(
                                  _model.dropReasonsValue ??= '',
                                ),
                                options: List<String>.from([
                                  'pas.le.bon.resultat',
                                  'pas.le.bon.score.dom',
                                  'pas.le.bon.score.ext'
                                ]),
                                optionLabels: const [
                                  'Pas le bon résultat',
                                  'Pas le bon score domicile',
                                  'Pas le bon score extérieur'
                                ],
                                onChanged: (val) => safeSetState(
                                    () => _model.dropReasonsValue = val),
                                width: 300.0,
                                height: 55.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Raisons',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
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
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: Text(
                                    'Munissez vous de la photo de fin de match pour prouver votre résultat.\nLes 2 équipes de cette photo doivent être les mêmes que celles ci-dessus.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 10.0),
                                  child: Text(
                                    'Preuve dans cette photo...',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 20.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
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
                                            borderRadius:
                                                BorderRadius.circular(0.0),
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
                                            selectedMedia.every((m) =>
                                                validateFileFormat(
                                                    m.storagePath, context))) {
                                          safeSetState(() =>
                                              _model.isDataUploading = true);
                                          var selectedUploadedFiles =
                                              <FFUploadedFile>[];

                                          var downloadUrls = <String>[];
                                          try {
                                            selectedUploadedFiles =
                                                selectedMedia
                                                    .map((m) => FFUploadedFile(
                                                          name: m.storagePath
                                                              .split('/')
                                                              .last,
                                                          bytes: m.bytes,
                                                          height: m.dimensions
                                                              ?.height,
                                                          width: m.dimensions
                                                              ?.width,
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
                                              downloadUrls.length ==
                                                  selectedMedia.length) {
                                            safeSetState(() {
                                              _model.uploadedLocalFile =
                                                  selectedUploadedFiles.first;
                                              _model.uploadedFileUrl =
                                                  downloadUrls.first;
                                            });
                                          } else {
                                            safeSetState(() {});
                                            return;
                                          }
                                        }
                                      },
                                      child: Icon(
                                        Icons.image_search_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 30.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if ((_model.dropReasonsValue != null &&
                                      _model.dropReasonsValue != '') &&
                                  (_model.uploadedFileUrl != ''))
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 40.0, 0.0, 20.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await MyNotificationsRecord.createDoc(
                                                columnEventEventsRecord
                                                    .adminUser!)
                                            .set({
                                          ...createMyNotificationsRecordData(
                                            text:
                                                'Il y a un litige dans cette rencontre',
                                            eEvent:
                                                bossNotifEEventEndPageMyNotificationsRecord
                                                    .eEvent,
                                            textReasons:
                                                _model.dropReasonsValue,
                                            modSeen: false,
                                            scoreExt:
                                                bossNotifEEventEndPageMyNotificationsRecord
                                                    .scoreExt,
                                            teamRef:
                                                currentUserDocument?.eteamRef,
                                            eteamWin:
                                                bossNotifEEventEndPageMyNotificationsRecord
                                                    .eteamWin,
                                            image: _model.uploadedFileUrl,
                                            eteamDraw:
                                                bossNotifEEventEndPageMyNotificationsRecord
                                                    .eteamDraw,
                                            scoreDom:
                                                bossNotifEEventEndPageMyNotificationsRecord
                                                    .scoreDom,
                                            userRef: currentUserReference,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'date_time':
                                                  FieldValue.serverTimestamp(),
                                            },
                                          ),
                                        });

                                        await currentUserReference!
                                            .update(createUsersRecordData(
                                          guest: false,
                                        ));

                                        await widget.notifRef!.update(
                                            createMyNotificationsRecordData(
                                          seen: true,
                                        ));
                                        await widget.notifRef!.delete();

                                        context.pushNamed(
                                          'AddRatingPlayersPage',
                                          queryParameters: {
                                            'eventRef': serializeParam(
                                              widget.eEventRef,
                                              ParamType.DocumentReference,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      text: 'Signaler le mauvais résultat',
                                      options: FFButtonOptions(
                                        width: 350.0,
                                        height: 50.0,
                                        padding: const EdgeInsets.all(0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
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
                                            FlutterFlowTheme.of(context).error,
                                        hoverTextColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                      ),
                                    ),
                                  ),
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
      },
    );
  }
}
