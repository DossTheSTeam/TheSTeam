import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'event_teams_events_model.dart';
export 'event_teams_events_model.dart';

class EventTeamsEventsWidget extends StatefulWidget {
  const EventTeamsEventsWidget({
    super.key,
    required this.eventRef,
  });

  final DocumentReference? eventRef;

  @override
  State<EventTeamsEventsWidget> createState() => _EventTeamsEventsWidgetState();
}

class _EventTeamsEventsWidgetState extends State<EventTeamsEventsWidget> {
  late EventTeamsEventsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventTeamsEventsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 6.0,
          sigmaY: 8.0,
        ),
        child: StreamBuilder<EventsRecord>(
          stream: EventsRecord.getDocument(widget.eventRef!),
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

            final containerEventsRecord = snapshot.data!;

            return Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).alternate,
              ),
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 7.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            -2.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60.0,
                                  height: 3.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 10.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AuthUserStreamWidget(
                                    builder: (context) => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        Navigator.pop(context);
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
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      if ((valueOrDefault(
                                                      currentUserDocument
                                                          ?.langage,
                                                      '') ==
                                                  '') ||
                                          (valueOrDefault(
                                                  currentUserDocument?.langage,
                                                  '') ==
                                              'francais'))
                                        AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            'Evénements',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLargeFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .labelLargeIsCustom,
                                                ),
                                          ),
                                        ),
                                      if ((valueOrDefault(
                                                  currentUserDocument?.langage,
                                                  '') ==
                                              'english') ||
                                          (valueOrDefault(
                                                  currentUserDocument?.langage,
                                                  '') ==
                                              'american'))
                                        AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            'Events',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLargeFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .labelLargeIsCustom,
                                                ),
                                          ),
                                        ),
                                      if (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'deutsch')
                                        AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            'Veranstaltungen',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLargeFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .labelLargeIsCustom,
                                                ),
                                          ),
                                        ),
                                      if (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'espanol')
                                        AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            'Eventos',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLargeFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .labelLargeIsCustom,
                                                ),
                                          ),
                                        ),
                                      if (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'italiano')
                                        AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            'Eventi',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLargeFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .labelLargeIsCustom,
                                                ),
                                          ),
                                        ),
                                      if (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'portugues')
                                        AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            'Eventos',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLargeFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .labelLargeIsCustom,
                                                ),
                                          ),
                                        ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_back_ios_new_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 30.0,
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  StreamBuilder<TeamsRecord>(
                                    stream: TeamsRecord.getDocument(
                                        containerEventsRecord.teamdomRef!),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .accent4,
                                              ),
                                            ),
                                          ),
                                        );
                                      }

                                      final contDomTeamsRecord = snapshot.data!;

                                      return Container(
                                        width: 330.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 55.0,
                                              height: 35.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                                child: Image.network(
                                                  contDomTeamsRecord.logo,
                                                  width: 55.0,
                                                  height: 35.0,
                                                  fit: BoxFit.scaleDown,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 3.0, 0.0, 3.0),
                                                child: Text(
                                                  contDomTeamsRecord.name,
                                                  textAlign: TextAlign.start,
                                                  maxLines: 2,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmallFamily,
                                                        color: valueOrDefault<
                                                            Color>(
                                                          contDomTeamsRecord
                                                              .color1,
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmallIsCustom,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  width: 50.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      if ((containerEventsRecord
                                                                  .leagueValue !=
                                                              'autres') &&
                                                          (containerEventsRecord
                                                                  .leagueValue !=
                                                              'autres.france') &&
                                                          (containerEventsRecord
                                                                  .leagueValue !=
                                                              'champions.league') &&
                                                          (containerEventsRecord
                                                                  .leagueValue !=
                                                              'europa.league') &&
                                                          (containerEventsRecord
                                                                  .leagueValue !=
                                                              'conference.league'))
                                                        Icon(
                                                          Icons.bar_chart,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 20.0,
                                                        ),
                                                      Container(
                                                        width: 30.0,
                                                        height: 30.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if ((containerEventsRecord.leagueValue != 'autres') &&
                                                                (containerEventsRecord
                                                                        .leagueValue !=
                                                                    'autres.france') &&
                                                                (containerEventsRecord
                                                                        .leagueValue !=
                                                                    'champions.league') &&
                                                                (containerEventsRecord
                                                                        .leagueValue !=
                                                                    'europa.league') &&
                                                                (containerEventsRecord
                                                                        .leagueValue !=
                                                                    'conference.league') &&
                                                                (containerEventsRecord
                                                                        .leagueValue !=
                                                                    'champions.cup') &&
                                                                (containerEventsRecord
                                                                        .sportValue !=
                                                                    'mma') &&
                                                                (containerEventsRecord
                                                                        .leagueValue !=
                                                                    'other.rugby'))
                                                              FutureBuilder<
                                                                  List<
                                                                      TeamsRecord>>(
                                                                future:
                                                                    queryTeamsRecordOnce(
                                                                  queryBuilder: (teamsRecord) =>
                                                                      teamsRecord
                                                                          .where(
                                                                            'league_value',
                                                                            isEqualTo:
                                                                                contDomTeamsRecord.leagueValue,
                                                                          )
                                                                          .orderBy(
                                                                              'points',
                                                                              descending: true),
                                                                ),
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
                                                                            FlutterFlowTheme.of(context).accent4,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<TeamsRecord>
                                                                      rowTeamsRecordList =
                                                                      snapshot
                                                                          .data!;

                                                                  return Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: List.generate(
                                                                        rowTeamsRecordList
                                                                            .length,
                                                                        (rowIndex) {
                                                                      final rowTeamsRecord =
                                                                          rowTeamsRecordList[
                                                                              rowIndex];
                                                                      return Visibility(
                                                                        visible:
                                                                            rowTeamsRecord.reference ==
                                                                                contDomTeamsRecord.reference,
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            functions.zeroTo1(rowIndex).toString(),
                                                                            '1',
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      );
                                                                    }),
                                                                  );
                                                                },
                                                              ),
                                                            if ((containerEventsRecord.leagueValue == 'champions.league') ||
                                                                (containerEventsRecord
                                                                        .leagueValue ==
                                                                    'europa.league') ||
                                                                (containerEventsRecord
                                                                        .leagueValue ==
                                                                    'conference.league') ||
                                                                (containerEventsRecord
                                                                        .leagueValue ==
                                                                    'champions.cup'))
                                                              FutureBuilder<
                                                                  List<
                                                                      TeamsRecord>>(
                                                                future:
                                                                    queryTeamsRecordOnce(
                                                                  queryBuilder: (teamsRecord) =>
                                                                      teamsRecord
                                                                          .where(
                                                                            'additional_league',
                                                                            isEqualTo:
                                                                                containerEventsRecord.leagueValue,
                                                                          )
                                                                          .orderBy(
                                                                              'points_cup',
                                                                              descending: true),
                                                                ),
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
                                                                            FlutterFlowTheme.of(context).accent4,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<TeamsRecord>
                                                                      rowTeamsRecordList =
                                                                      snapshot
                                                                          .data!;

                                                                  return Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: List.generate(
                                                                        rowTeamsRecordList
                                                                            .length,
                                                                        (rowIndex) {
                                                                      final rowTeamsRecord =
                                                                          rowTeamsRecordList[
                                                                              rowIndex];
                                                                      return Visibility(
                                                                        visible:
                                                                            rowTeamsRecord.reference ==
                                                                                contDomTeamsRecord.reference,
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            functions.zeroTo1(rowIndex).toString(),
                                                                            '1',
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      );
                                                                    }),
                                                                  );
                                                                },
                                                              ),
                                                            if ((containerEventsRecord
                                                                        .sportValue ==
                                                                    'mma') &&
                                                                (contDomTeamsRecord
                                                                        .champion !=
                                                                    true))
                                                              FutureBuilder<
                                                                  List<
                                                                      TeamsRecord>>(
                                                                future:
                                                                    queryTeamsRecordOnce(
                                                                  queryBuilder: (teamsRecord) =>
                                                                      teamsRecord
                                                                          .where(
                                                                            'league_value',
                                                                            isEqualTo:
                                                                                contDomTeamsRecord.leagueValue,
                                                                          )
                                                                          .where(
                                                                            'division_value',
                                                                            isEqualTo:
                                                                                contDomTeamsRecord.divisionValue,
                                                                          )
                                                                          .orderBy(
                                                                              'points',
                                                                              descending: true),
                                                                ),
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
                                                                            FlutterFlowTheme.of(context).accent4,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<TeamsRecord>
                                                                      rowTeamsRecordList =
                                                                      snapshot
                                                                          .data!;

                                                                  return Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: List.generate(
                                                                        rowTeamsRecordList
                                                                            .length,
                                                                        (rowIndex) {
                                                                      final rowTeamsRecord =
                                                                          rowTeamsRecordList[
                                                                              rowIndex];
                                                                      return Visibility(
                                                                        visible:
                                                                            rowTeamsRecord.reference ==
                                                                                contDomTeamsRecord.reference,
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            functions.zeroTo1(rowIndex).toString(),
                                                                            '1',
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      );
                                                                    }),
                                                                  );
                                                                },
                                                              ),
                                                            if ((containerEventsRecord
                                                                        .sportValue ==
                                                                    'mma') &&
                                                                (contDomTeamsRecord
                                                                        .champion ==
                                                                    true))
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Text(
                                                                    'C',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).labelMediumFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                if ((containerEventsRecord
                                                            .leagueValue ==
                                                        'champions.league') ||
                                                    (containerEventsRecord
                                                            .leagueValue ==
                                                        'europa.league') ||
                                                    (containerEventsRecord
                                                            .leagueValue ==
                                                        'conference.league'))
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            contDomTeamsRecord
                                                                .winsCup
                                                                .toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          '-',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            contDomTeamsRecord
                                                                .drawsCup
                                                                .toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          '-',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          contDomTeamsRecord
                                                              .loosesCup
                                                              .toString(),
                                                          '0',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                              fontSize: 10.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumIsCustom,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                if ((containerEventsRecord
                                                            .leagueValue !=
                                                        'autres') &&
                                                    (containerEventsRecord
                                                            .leagueValue !=
                                                        'autres.france') &&
                                                    (containerEventsRecord
                                                            .leagueValue !=
                                                        'champions.league') &&
                                                    (containerEventsRecord
                                                            .leagueValue !=
                                                        'europa.league') &&
                                                    (containerEventsRecord
                                                            .leagueValue !=
                                                        'conference.league'))
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            contDomTeamsRecord
                                                                .wins
                                                                .toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          '-',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                      if ((containerEventsRecord
                                                                  .sportValue !=
                                                              'basketball') &&
                                                          (containerEventsRecord
                                                                  .sportValue !=
                                                              'tennis') &&
                                                          (containerEventsRecord
                                                                  .sportValue !=
                                                              'hockey'))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              contDomTeamsRecord
                                                                  .draws
                                                                  .toString(),
                                                              '0',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ),
                                                      if ((containerEventsRecord
                                                                  .sportValue !=
                                                              'basketball') &&
                                                          (containerEventsRecord
                                                                  .sportValue !=
                                                              'tennis') &&
                                                          (containerEventsRecord
                                                                  .sportValue !=
                                                              'hockey'))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Text(
                                                            '-',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          contDomTeamsRecord
                                                              .looses
                                                              .toString(),
                                                          '0',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                              fontSize: 10.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumIsCustom,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: StreamBuilder<List<TeamEventsRecord>>(
                                stream: queryTeamEventsRecord(
                                  parent: containerEventsRecord.teamdomRef,
                                  queryBuilder: (teamEventsRecord) =>
                                      teamEventsRecord.orderBy('started_time',
                                          descending: true),
                                  limit: 5,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .accent4,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<TeamEventsRecord>
                                      roweventsTeamEventsRecordList =
                                      snapshot.data!;

                                  return SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                          roweventsTeamEventsRecordList.length,
                                          (roweventsIndex) {
                                        final roweventsTeamEventsRecord =
                                            roweventsTeamEventsRecordList[
                                                roweventsIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 10.0, 0.0),
                                          child: Container(
                                            width: 360.0,
                                            height: 155.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 0.0),
                                              child:
                                                  StreamBuilder<EventsRecord>(
                                                stream: EventsRecord.getDocument(
                                                    roweventsTeamEventsRecord
                                                        .events!),
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
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent4,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }

                                                  final columnEventEventsRecord =
                                                      snapshot.data!;

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            if (columnEventEventsRecord.statut ==
                                                                                true)
                                                                              Container(
                                                                                width: 20.0,
                                                                                height: 20.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).success,
                                                                                  shape: BoxShape.circle,
                                                                                ),
                                                                              ),
                                                                            if (columnEventEventsRecord.statut ==
                                                                                false)
                                                                              Container(
                                                                                width: 20.0,
                                                                                height: 20.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  shape: BoxShape.circle,
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          dateTimeFormat(
                                                                            "d/M/y",
                                                                            columnEventEventsRecord.date,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          ),
                                                                          '00/00/0000',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                            ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            3.0,
                                                                            0.0,
                                                                            3.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          '-',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          columnEventEventsRecord
                                                                              .hour
                                                                              .toString(),
                                                                          '00',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                            ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            2.0,
                                                                            0.0,
                                                                            2.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          ':',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          functions
                                                                              .zeroTo00(columnEventEventsRecord.minute),
                                                                          '00',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                StreamBuilder<
                                                                    TeamsRecord>(
                                                                  stream: TeamsRecord
                                                                      .getDocument(
                                                                          columnEventEventsRecord
                                                                              .teamdomRef!),
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
                                                                              FlutterFlowTheme.of(context).accent4,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }

                                                                    final contDomTeamsRecord =
                                                                        snapshot
                                                                            .data!;

                                                                    return Container(
                                                                      width:
                                                                          160.0,
                                                                      height:
                                                                          60.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                      ),
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Container(
                                                                              width: 55.0,
                                                                              height: 35.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                              ),
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(6.0),
                                                                                child: Image.network(
                                                                                  contDomTeamsRecord.logo,
                                                                                  width: 55.0,
                                                                                  height: 35.0,
                                                                                  fit: BoxFit.scaleDown,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                              child: Text(
                                                                                contDomTeamsRecord.name,
                                                                                textAlign: TextAlign.start,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).labelSmallIsCustom,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .minimize_sharp,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          30.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                                StreamBuilder<
                                                                    TeamsRecord>(
                                                                  stream: TeamsRecord
                                                                      .getDocument(
                                                                          columnEventEventsRecord
                                                                              .teamextRef!),
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
                                                                              FlutterFlowTheme.of(context).accent4,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }

                                                                    final contExtTeamsRecord =
                                                                        snapshot
                                                                            .data!;

                                                                    return Container(
                                                                      width:
                                                                          160.0,
                                                                      height:
                                                                          60.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                      ),
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Container(
                                                                              width: 55.0,
                                                                              height: 35.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                              ),
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(6.0),
                                                                                child: Image.network(
                                                                                  contExtTeamsRecord.logo,
                                                                                  width: 55.0,
                                                                                  height: 35.0,
                                                                                  fit: BoxFit.scaleDown,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                              child: Text(
                                                                                contExtTeamsRecord.name,
                                                                                textAlign: TextAlign.start,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).labelSmallIsCustom,
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
                                                          if (columnEventEventsRecord
                                                                  .seenScore ==
                                                              true)
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceAround,
                                                              children: [
                                                                Text(
                                                                  columnEventEventsRecord
                                                                      .scoreDom
                                                                      .toString(),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .end,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).labelMediumFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  columnEventEventsRecord
                                                                      .scoreExt
                                                                      .toString(),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).labelMediumFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          Divider(
                                                            thickness: 1.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  StreamBuilder<TeamsRecord>(
                                    stream: TeamsRecord.getDocument(
                                        containerEventsRecord.teamextRef!),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .accent4,
                                              ),
                                            ),
                                          ),
                                        );
                                      }

                                      final contExtTeamsRecord = snapshot.data!;

                                      return Container(
                                        width: 330.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 55.0,
                                              height: 35.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                                child: Image.network(
                                                  contExtTeamsRecord.logo,
                                                  width: 55.0,
                                                  height: 35.0,
                                                  fit: BoxFit.scaleDown,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 3.0, 0.0, 3.0),
                                                child: Text(
                                                  contExtTeamsRecord.name,
                                                  textAlign: TextAlign.start,
                                                  maxLines: 2,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmallFamily,
                                                        color: valueOrDefault<
                                                            Color>(
                                                          contExtTeamsRecord
                                                              .color1,
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmallIsCustom,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  width: 50.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      if ((containerEventsRecord
                                                                  .leagueValue !=
                                                              'autres') &&
                                                          (containerEventsRecord
                                                                  .leagueValue !=
                                                              'autres.france') &&
                                                          (containerEventsRecord
                                                                  .leagueValue !=
                                                              'champions.league') &&
                                                          (containerEventsRecord
                                                                  .leagueValue !=
                                                              'europa.league') &&
                                                          (containerEventsRecord
                                                                  .leagueValue !=
                                                              'conference.league'))
                                                        Icon(
                                                          Icons.bar_chart,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 20.0,
                                                        ),
                                                      Container(
                                                        width: 30.0,
                                                        height: 30.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if ((containerEventsRecord.leagueValue != 'autres') &&
                                                                (containerEventsRecord
                                                                        .leagueValue !=
                                                                    'autres.france') &&
                                                                (containerEventsRecord
                                                                        .leagueValue !=
                                                                    'champions.league') &&
                                                                (containerEventsRecord
                                                                        .leagueValue !=
                                                                    'europa.league') &&
                                                                (containerEventsRecord
                                                                        .leagueValue !=
                                                                    'conference.league') &&
                                                                (containerEventsRecord
                                                                        .leagueValue !=
                                                                    'champions.cup') &&
                                                                (containerEventsRecord
                                                                        .sportValue !=
                                                                    'mma') &&
                                                                (containerEventsRecord
                                                                        .leagueValue !=
                                                                    'other.rugby'))
                                                              FutureBuilder<
                                                                  List<
                                                                      TeamsRecord>>(
                                                                future:
                                                                    queryTeamsRecordOnce(
                                                                  queryBuilder: (teamsRecord) =>
                                                                      teamsRecord
                                                                          .where(
                                                                            'league_value',
                                                                            isEqualTo:
                                                                                contExtTeamsRecord.leagueValue,
                                                                          )
                                                                          .orderBy(
                                                                              'points',
                                                                              descending: true),
                                                                ),
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
                                                                            FlutterFlowTheme.of(context).accent4,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<TeamsRecord>
                                                                      rowTeamsRecordList =
                                                                      snapshot
                                                                          .data!;

                                                                  return Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: List.generate(
                                                                        rowTeamsRecordList
                                                                            .length,
                                                                        (rowIndex) {
                                                                      final rowTeamsRecord =
                                                                          rowTeamsRecordList[
                                                                              rowIndex];
                                                                      return Visibility(
                                                                        visible:
                                                                            rowTeamsRecord.reference ==
                                                                                contExtTeamsRecord.reference,
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            functions.zeroTo1(rowIndex).toString(),
                                                                            '1',
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      );
                                                                    }),
                                                                  );
                                                                },
                                                              ),
                                                            if ((containerEventsRecord.leagueValue == 'champions.league') ||
                                                                (containerEventsRecord
                                                                        .leagueValue ==
                                                                    'europa.league') ||
                                                                (containerEventsRecord
                                                                        .leagueValue ==
                                                                    'conference.league') ||
                                                                (containerEventsRecord
                                                                        .leagueValue ==
                                                                    'champions.cup'))
                                                              FutureBuilder<
                                                                  List<
                                                                      TeamsRecord>>(
                                                                future:
                                                                    queryTeamsRecordOnce(
                                                                  queryBuilder: (teamsRecord) =>
                                                                      teamsRecord
                                                                          .where(
                                                                            'additional_league',
                                                                            isEqualTo:
                                                                                containerEventsRecord.leagueValue,
                                                                          )
                                                                          .orderBy(
                                                                              'points_cup',
                                                                              descending: true),
                                                                ),
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
                                                                            FlutterFlowTheme.of(context).accent4,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<TeamsRecord>
                                                                      rowTeamsRecordList =
                                                                      snapshot
                                                                          .data!;

                                                                  return Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: List.generate(
                                                                        rowTeamsRecordList
                                                                            .length,
                                                                        (rowIndex) {
                                                                      final rowTeamsRecord =
                                                                          rowTeamsRecordList[
                                                                              rowIndex];
                                                                      return Visibility(
                                                                        visible:
                                                                            rowTeamsRecord.reference ==
                                                                                contExtTeamsRecord.reference,
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            functions.zeroTo1(rowIndex).toString(),
                                                                            '1',
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      );
                                                                    }),
                                                                  );
                                                                },
                                                              ),
                                                            if ((containerEventsRecord
                                                                        .sportValue ==
                                                                    'mma') &&
                                                                (contExtTeamsRecord
                                                                        .champion !=
                                                                    true))
                                                              FutureBuilder<
                                                                  List<
                                                                      TeamsRecord>>(
                                                                future:
                                                                    queryTeamsRecordOnce(
                                                                  queryBuilder: (teamsRecord) =>
                                                                      teamsRecord
                                                                          .where(
                                                                            'league_value',
                                                                            isEqualTo:
                                                                                contExtTeamsRecord.leagueValue,
                                                                          )
                                                                          .where(
                                                                            'division_value',
                                                                            isEqualTo:
                                                                                contExtTeamsRecord.divisionValue,
                                                                          )
                                                                          .orderBy(
                                                                              'points',
                                                                              descending: true),
                                                                ),
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
                                                                            FlutterFlowTheme.of(context).accent4,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<TeamsRecord>
                                                                      rowTeamsRecordList =
                                                                      snapshot
                                                                          .data!;

                                                                  return Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: List.generate(
                                                                        rowTeamsRecordList
                                                                            .length,
                                                                        (rowIndex) {
                                                                      final rowTeamsRecord =
                                                                          rowTeamsRecordList[
                                                                              rowIndex];
                                                                      return Visibility(
                                                                        visible:
                                                                            rowTeamsRecord.reference ==
                                                                                contExtTeamsRecord.reference,
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            functions.zeroTo1(rowIndex).toString(),
                                                                            '1',
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      );
                                                                    }),
                                                                  );
                                                                },
                                                              ),
                                                            if ((containerEventsRecord
                                                                        .sportValue ==
                                                                    'mma') &&
                                                                (contExtTeamsRecord
                                                                        .champion ==
                                                                    true))
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Text(
                                                                    'C',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).labelMediumFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                if ((containerEventsRecord
                                                            .leagueValue ==
                                                        'champions.league') ||
                                                    (containerEventsRecord
                                                            .leagueValue ==
                                                        'europa.league') ||
                                                    (containerEventsRecord
                                                            .leagueValue ==
                                                        'conference.league'))
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            contExtTeamsRecord
                                                                .winsCup
                                                                .toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          '-',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            contExtTeamsRecord
                                                                .drawsCup
                                                                .toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          '-',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          contExtTeamsRecord
                                                              .loosesCup
                                                              .toString(),
                                                          '0',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                              fontSize: 10.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumIsCustom,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                if ((containerEventsRecord
                                                            .leagueValue !=
                                                        'autres') &&
                                                    (containerEventsRecord
                                                            .leagueValue !=
                                                        'autres.france') &&
                                                    (containerEventsRecord
                                                            .leagueValue !=
                                                        'champions.league') &&
                                                    (containerEventsRecord
                                                            .leagueValue !=
                                                        'europa.league') &&
                                                    (containerEventsRecord
                                                            .leagueValue !=
                                                        'conference.league'))
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            contExtTeamsRecord
                                                                .wins
                                                                .toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          '-',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                      if ((containerEventsRecord
                                                                  .sportValue !=
                                                              'basketball') &&
                                                          (containerEventsRecord
                                                                  .sportValue !=
                                                              'tennis') &&
                                                          (containerEventsRecord
                                                                  .sportValue !=
                                                              'hockey'))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              contExtTeamsRecord
                                                                  .draws
                                                                  .toString(),
                                                              '0',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ),
                                                      if ((containerEventsRecord
                                                                  .sportValue !=
                                                              'basketball') &&
                                                          (containerEventsRecord
                                                                  .sportValue !=
                                                              'tennis') &&
                                                          (containerEventsRecord
                                                                  .sportValue !=
                                                              'hockey'))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Text(
                                                            '-',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          contExtTeamsRecord
                                                              .looses
                                                              .toString(),
                                                          '0',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                              fontSize: 10.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumIsCustom,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: StreamBuilder<List<TeamEventsRecord>>(
                                stream: queryTeamEventsRecord(
                                  parent: containerEventsRecord.teamextRef,
                                  queryBuilder: (teamEventsRecord) =>
                                      teamEventsRecord.orderBy('started_time',
                                          descending: true),
                                  limit: 5,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .accent4,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<TeamEventsRecord>
                                      roweventsTeamEventsRecordList =
                                      snapshot.data!;

                                  return SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                          roweventsTeamEventsRecordList.length,
                                          (roweventsIndex) {
                                        final roweventsTeamEventsRecord =
                                            roweventsTeamEventsRecordList[
                                                roweventsIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 10.0, 0.0),
                                          child: Container(
                                            width: 360.0,
                                            height: 155.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 0.0),
                                              child:
                                                  StreamBuilder<EventsRecord>(
                                                stream: EventsRecord.getDocument(
                                                    roweventsTeamEventsRecord
                                                        .events!),
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
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent4,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }

                                                  final columnEventEventsRecord =
                                                      snapshot.data!;

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            if (columnEventEventsRecord.statut ==
                                                                                true)
                                                                              Container(
                                                                                width: 20.0,
                                                                                height: 20.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).success,
                                                                                  shape: BoxShape.circle,
                                                                                ),
                                                                              ),
                                                                            if (columnEventEventsRecord.statut ==
                                                                                false)
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                child: Container(
                                                                                  width: 20.0,
                                                                                  height: 20.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    shape: BoxShape.circle,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          dateTimeFormat(
                                                                            "d/M/y",
                                                                            columnEventEventsRecord.date,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          ),
                                                                          '00/00/0000',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                            ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            3.0,
                                                                            0.0,
                                                                            3.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          '-',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          columnEventEventsRecord
                                                                              .hour
                                                                              .toString(),
                                                                          '00',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                            ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            2.0,
                                                                            0.0,
                                                                            2.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          ':',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          functions
                                                                              .zeroTo00(columnEventEventsRecord.minute),
                                                                          '00',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                StreamBuilder<
                                                                    TeamsRecord>(
                                                                  stream: TeamsRecord
                                                                      .getDocument(
                                                                          columnEventEventsRecord
                                                                              .teamdomRef!),
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
                                                                              FlutterFlowTheme.of(context).accent4,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }

                                                                    final contDomTeamsRecord =
                                                                        snapshot
                                                                            .data!;

                                                                    return Container(
                                                                      width:
                                                                          160.0,
                                                                      height:
                                                                          60.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                      ),
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Container(
                                                                              width: 55.0,
                                                                              height: 35.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                              ),
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(6.0),
                                                                                child: Image.network(
                                                                                  contDomTeamsRecord.logo,
                                                                                  width: 55.0,
                                                                                  height: 35.0,
                                                                                  fit: BoxFit.scaleDown,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                              child: Text(
                                                                                contDomTeamsRecord.name,
                                                                                textAlign: TextAlign.start,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).labelSmallIsCustom,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .minimize_sharp,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          30.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                                StreamBuilder<
                                                                    TeamsRecord>(
                                                                  stream: TeamsRecord
                                                                      .getDocument(
                                                                          columnEventEventsRecord
                                                                              .teamextRef!),
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
                                                                              FlutterFlowTheme.of(context).accent4,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }

                                                                    final contExtTeamsRecord =
                                                                        snapshot
                                                                            .data!;

                                                                    return Container(
                                                                      width:
                                                                          160.0,
                                                                      height:
                                                                          60.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                      ),
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Container(
                                                                              width: 55.0,
                                                                              height: 35.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                              ),
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(6.0),
                                                                                child: Image.network(
                                                                                  contExtTeamsRecord.logo,
                                                                                  width: 55.0,
                                                                                  height: 35.0,
                                                                                  fit: BoxFit.scaleDown,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                              child: Text(
                                                                                contExtTeamsRecord.name,
                                                                                textAlign: TextAlign.start,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).labelSmallIsCustom,
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
                                                          if (columnEventEventsRecord
                                                                  .seenScore ==
                                                              true)
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceAround,
                                                              children: [
                                                                Text(
                                                                  columnEventEventsRecord
                                                                      .scoreDom
                                                                      .toString(),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .end,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).labelMediumFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  columnEventEventsRecord
                                                                      .scoreExt
                                                                      .toString(),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).labelMediumFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          Divider(
                                                            thickness: 1.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
