import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'modif_rank_pilotes_model.dart';
export 'modif_rank_pilotes_model.dart';

class ModifRankPilotesWidget extends StatefulWidget {
  const ModifRankPilotesWidget({
    super.key,
    required this.eventMecaRef,
  });

  final DocumentReference? eventMecaRef;

  static String routeName = 'modifRankPilotes';
  static String routePath = '/modifRankPilotes';

  @override
  State<ModifRankPilotesWidget> createState() => _ModifRankPilotesWidgetState();
}

class _ModifRankPilotesWidgetState extends State<ModifRankPilotesWidget> {
  late ModifRankPilotesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModifRankPilotesModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<EventsRecord>(
      stream: EventsRecord.getDocument(widget.eventMecaRef!),
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

        final modifRankPilotesEventsRecord = snapshot.data!;

        return GestureDetector(
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
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 70.0),
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
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 30.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                ],
                              ),
                              FlutterFlowCalendar(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                iconColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                weekFormat: true,
                                weekStartsMonday: true,
                                rowHeight: 40.0,
                                onChange: (DateTimeRange? newSelectedDate) {
                                  safeSetState(() => _model
                                      .calendarSelectedDay = newSelectedDate);
                                },
                                titleStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelSmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .labelSmallIsCustom,
                                    ),
                                dayOfWeekStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelSmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .labelSmallIsCustom,
                                    ),
                                dateStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                                selectedDateStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleSmallIsCustom,
                                    ),
                                inactiveDateStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelSmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .labelSmallIsCustom,
                                    ),
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    modifRankPilotesEventsRecord.hour
                                        .toString(),
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmallFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .headlineSmallIsCustom,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 5.0, 0.0),
                                    child: Text(
                                      ':',
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmallFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .headlineSmallIsCustom,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 20.0, 0.0),
                                    child: Text(
                                      modifRankPilotesEventsRecord.minute
                                          .toString(),
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmallFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .headlineSmallIsCustom,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              Text(
                                modifRankPilotesEventsRecord.leagueValue,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      fontSize: 10.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                              Text(
                                modifRankPilotesEventsRecord.week,
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .headlineSmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .headlineSmallIsCustom,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 20.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '1  .',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                                StreamBuilder<
                                                    List<TeamsRecord>>(
                                                  stream: queryTeamsRecord(
                                                    queryBuilder:
                                                        (teamsRecord) =>
                                                            teamsRecord.where(
                                                      'league_value',
                                                      isEqualTo:
                                                          modifRankPilotesEventsRecord
                                                              .leagueValue,
                                                    ),
                                                  ),
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
                                                    List<TeamsRecord>
                                                        dropTeam1TeamsRecordList =
                                                        snapshot.data!;

                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropTeam1ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropTeam1Value ??=
                                                            '',
                                                      ),
                                                      options: List<
                                                              String>.from(
                                                          dropTeam1TeamsRecordList
                                                              .map((e) =>
                                                                  e.value)
                                                              .toList()),
                                                      optionLabels:
                                                          dropTeam1TeamsRecordList
                                                              .map(
                                                                  (e) => e.name)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.dropTeam1Value =
                                                                  val),
                                                      width: 200.0,
                                                      height: 40.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                      hintText: 'Pilotes',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        size: 24.0,
                                                      ),
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      elevation: 2.0,
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderWidth: 0.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    );
                                                  },
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    StreamBuilder<
                                                        List<TeamsRecord>>(
                                                      stream: queryTeamsRecord(
                                                        queryBuilder:
                                                            (teamsRecord) =>
                                                                teamsRecord
                                                                    .where(
                                                          'value',
                                                          isEqualTo: _model
                                                              .dropTeam1Value,
                                                        ),
                                                        singleRecord: true,
                                                      ),
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
                                                        List<TeamsRecord>
                                                            rowTeamsRecordList =
                                                            snapshot.data!;
                                                        // Return an empty Container when the item does not exist.
                                                        if (snapshot
                                                            .data!.isEmpty) {
                                                          return Container();
                                                        }
                                                        final rowTeamsRecord =
                                                            rowTeamsRecordList
                                                                    .isNotEmpty
                                                                ? rowTeamsRecordList
                                                                    .first
                                                                : null;

                                                        return Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (rowTeamsRecord
                                                                    ?.updateTime !=
                                                                _model
                                                                    .calendarSelectedDay
                                                                    ?.start)
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  if (modifRankPilotesEventsRecord
                                                                          .leagueValue ==
                                                                      'formule.1')
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
                                                                        await rowTeamsRecord!
                                                                            .reference
                                                                            .update({
                                                                          ...createTeamsRecordData(
                                                                            updateTime:
                                                                                _model.calendarSelectedDay?.start,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'points': FieldValue.increment(25),
                                                                              'total_games': FieldValue.increment(1),
                                                                              'wins': FieldValue.increment(1),
                                                                              'draws': FieldValue.increment(1),
                                                                            },
                                                                          ),
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .send_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                  if ((modifRankPilotesEventsRecord.leagueValue == 'moto.gp') ||
                                                                      (modifRankPilotesEventsRecord
                                                                              .leagueValue ==
                                                                          'world.superbike') ||
                                                                      (modifRankPilotesEventsRecord
                                                                              .leagueValue ==
                                                                          'mx.gp'))
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
                                                                        await rowTeamsRecord!
                                                                            .reference
                                                                            .update({
                                                                          ...createTeamsRecordData(
                                                                            updateTime:
                                                                                _model.calendarSelectedDay?.start,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'points': FieldValue.increment(25),
                                                                              'total_games': FieldValue.increment(1),
                                                                              'wins': FieldValue.increment(1),
                                                                              'draws': FieldValue.increment(1),
                                                                            },
                                                                          ),
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .send_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                          ],
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 20.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '2  .',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                                StreamBuilder<
                                                    List<TeamsRecord>>(
                                                  stream: queryTeamsRecord(
                                                    queryBuilder:
                                                        (teamsRecord) =>
                                                            teamsRecord.where(
                                                      'league_value',
                                                      isEqualTo:
                                                          modifRankPilotesEventsRecord
                                                              .leagueValue,
                                                    ),
                                                  ),
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
                                                    List<TeamsRecord>
                                                        dropTeam2TeamsRecordList =
                                                        snapshot.data!;

                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropTeam2ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropTeam2Value ??=
                                                            '',
                                                      ),
                                                      options: List<
                                                              String>.from(
                                                          dropTeam2TeamsRecordList
                                                              .map((e) =>
                                                                  e.value)
                                                              .toList()),
                                                      optionLabels:
                                                          dropTeam2TeamsRecordList
                                                              .map(
                                                                  (e) => e.name)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.dropTeam2Value =
                                                                  val),
                                                      width: 200.0,
                                                      height: 40.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                      hintText: 'Pilotes',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        size: 24.0,
                                                      ),
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      elevation: 2.0,
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderWidth: 0.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    );
                                                  },
                                                ),
                                                StreamBuilder<
                                                    List<TeamsRecord>>(
                                                  stream: queryTeamsRecord(
                                                    queryBuilder:
                                                        (teamsRecord) =>
                                                            teamsRecord.where(
                                                      'value',
                                                      isEqualTo:
                                                          _model.dropTeam2Value,
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
                                                    List<TeamsRecord>
                                                        rowTeamsRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the item does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final rowTeamsRecord =
                                                        rowTeamsRecordList
                                                                .isNotEmpty
                                                            ? rowTeamsRecordList
                                                                .first
                                                            : null;

                                                    return Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (rowTeamsRecord
                                                                ?.updateTime !=
                                                            _model
                                                                .calendarSelectedDay
                                                                ?.start)
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              if (modifRankPilotesEventsRecord
                                                                      .leagueValue ==
                                                                  'formule.1')
                                                                InkWell(
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
                                                                    await rowTeamsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...createTeamsRecordData(
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'points':
                                                                              FieldValue.increment(18),
                                                                          'total_games':
                                                                              FieldValue.increment(1),
                                                                          'draws':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .send_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              if ((modifRankPilotesEventsRecord.leagueValue == 'moto.gp') ||
                                                                  (modifRankPilotesEventsRecord
                                                                          .leagueValue ==
                                                                      'world.superbike') ||
                                                                  (modifRankPilotesEventsRecord
                                                                          .leagueValue ==
                                                                      'mx.gp'))
                                                                InkWell(
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
                                                                    await rowTeamsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...createTeamsRecordData(
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'points':
                                                                              FieldValue.increment(20),
                                                                          'total_games':
                                                                              FieldValue.increment(1),
                                                                          'draws':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .send_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
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
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 20.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '3  .',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                                StreamBuilder<
                                                    List<TeamsRecord>>(
                                                  stream: queryTeamsRecord(
                                                    queryBuilder:
                                                        (teamsRecord) =>
                                                            teamsRecord.where(
                                                      'league_value',
                                                      isEqualTo:
                                                          modifRankPilotesEventsRecord
                                                              .leagueValue,
                                                    ),
                                                  ),
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
                                                    List<TeamsRecord>
                                                        dropTeam3TeamsRecordList =
                                                        snapshot.data!;

                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropTeam3ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropTeam3Value ??=
                                                            '',
                                                      ),
                                                      options: List<
                                                              String>.from(
                                                          dropTeam3TeamsRecordList
                                                              .map((e) =>
                                                                  e.value)
                                                              .toList()),
                                                      optionLabels:
                                                          dropTeam3TeamsRecordList
                                                              .map(
                                                                  (e) => e.name)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.dropTeam3Value =
                                                                  val),
                                                      width: 200.0,
                                                      height: 40.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                      hintText: 'Pilotes',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        size: 24.0,
                                                      ),
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      elevation: 2.0,
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderWidth: 0.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    );
                                                  },
                                                ),
                                                StreamBuilder<
                                                    List<TeamsRecord>>(
                                                  stream: queryTeamsRecord(
                                                    queryBuilder:
                                                        (teamsRecord) =>
                                                            teamsRecord.where(
                                                      'value',
                                                      isEqualTo:
                                                          _model.dropTeam3Value,
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
                                                    List<TeamsRecord>
                                                        rowTeamsRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the item does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final rowTeamsRecord =
                                                        rowTeamsRecordList
                                                                .isNotEmpty
                                                            ? rowTeamsRecordList
                                                                .first
                                                            : null;

                                                    return Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (rowTeamsRecord
                                                                ?.updateTime !=
                                                            _model
                                                                .calendarSelectedDay
                                                                ?.start)
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              if (modifRankPilotesEventsRecord
                                                                      .leagueValue ==
                                                                  'formule.1')
                                                                InkWell(
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
                                                                    await rowTeamsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...createTeamsRecordData(
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'points':
                                                                              FieldValue.increment(15),
                                                                          'total_games':
                                                                              FieldValue.increment(1),
                                                                          'draws':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .send_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              if ((modifRankPilotesEventsRecord.leagueValue == 'moto.gp') ||
                                                                  (modifRankPilotesEventsRecord
                                                                          .leagueValue ==
                                                                      'world.superbike') ||
                                                                  (modifRankPilotesEventsRecord
                                                                          .leagueValue ==
                                                                      'mx.gp'))
                                                                InkWell(
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
                                                                    await rowTeamsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...createTeamsRecordData(
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'points':
                                                                              FieldValue.increment(15),
                                                                          'total_games':
                                                                              FieldValue.increment(1),
                                                                          'draws':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .send_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
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
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 20.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '4 .',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                                StreamBuilder<
                                                    List<TeamsRecord>>(
                                                  stream: queryTeamsRecord(
                                                    queryBuilder:
                                                        (teamsRecord) =>
                                                            teamsRecord.where(
                                                      'league_value',
                                                      isEqualTo:
                                                          modifRankPilotesEventsRecord
                                                              .leagueValue,
                                                    ),
                                                  ),
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
                                                    List<TeamsRecord>
                                                        dropTeam4TeamsRecordList =
                                                        snapshot.data!;

                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropTeam4ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropTeam4Value ??=
                                                            '',
                                                      ),
                                                      options: List<
                                                              String>.from(
                                                          dropTeam4TeamsRecordList
                                                              .map((e) =>
                                                                  e.value)
                                                              .toList()),
                                                      optionLabels:
                                                          dropTeam4TeamsRecordList
                                                              .map(
                                                                  (e) => e.name)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.dropTeam4Value =
                                                                  val),
                                                      width: 200.0,
                                                      height: 40.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                      hintText: 'Pilotes',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        size: 24.0,
                                                      ),
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      elevation: 2.0,
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderWidth: 0.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    );
                                                  },
                                                ),
                                                StreamBuilder<
                                                    List<TeamsRecord>>(
                                                  stream: queryTeamsRecord(
                                                    queryBuilder:
                                                        (teamsRecord) =>
                                                            teamsRecord.where(
                                                      'value',
                                                      isEqualTo:
                                                          _model.dropTeam4Value,
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
                                                    List<TeamsRecord>
                                                        rowTeamsRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the item does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final rowTeamsRecord =
                                                        rowTeamsRecordList
                                                                .isNotEmpty
                                                            ? rowTeamsRecordList
                                                                .first
                                                            : null;

                                                    return Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (rowTeamsRecord
                                                                ?.updateTime !=
                                                            _model
                                                                .calendarSelectedDay
                                                                ?.start)
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              if (modifRankPilotesEventsRecord
                                                                      .leagueValue ==
                                                                  'formule.1')
                                                                InkWell(
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
                                                                    await rowTeamsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...createTeamsRecordData(
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'points':
                                                                              FieldValue.increment(12),
                                                                          'total_games':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .send_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              if ((modifRankPilotesEventsRecord.leagueValue == 'moto.gp') ||
                                                                  (modifRankPilotesEventsRecord
                                                                          .leagueValue ==
                                                                      'world.superbike') ||
                                                                  (modifRankPilotesEventsRecord
                                                                          .leagueValue ==
                                                                      'mx.gp'))
                                                                InkWell(
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
                                                                    await rowTeamsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...createTeamsRecordData(
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'points':
                                                                              FieldValue.increment(13),
                                                                          'total_games':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .send_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
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
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 20.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '5  .',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                                StreamBuilder<
                                                    List<TeamsRecord>>(
                                                  stream: queryTeamsRecord(
                                                    queryBuilder:
                                                        (teamsRecord) =>
                                                            teamsRecord.where(
                                                      'league_value',
                                                      isEqualTo:
                                                          modifRankPilotesEventsRecord
                                                              .leagueValue,
                                                    ),
                                                  ),
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
                                                    List<TeamsRecord>
                                                        dropTeam5TeamsRecordList =
                                                        snapshot.data!;

                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropTeam5ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropTeam5Value ??=
                                                            '',
                                                      ),
                                                      options: List<
                                                              String>.from(
                                                          dropTeam5TeamsRecordList
                                                              .map((e) =>
                                                                  e.value)
                                                              .toList()),
                                                      optionLabels:
                                                          dropTeam5TeamsRecordList
                                                              .map(
                                                                  (e) => e.name)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.dropTeam5Value =
                                                                  val),
                                                      width: 200.0,
                                                      height: 40.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                      hintText: 'Pilotes',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        size: 24.0,
                                                      ),
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      elevation: 2.0,
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderWidth: 0.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    );
                                                  },
                                                ),
                                                StreamBuilder<
                                                    List<TeamsRecord>>(
                                                  stream: queryTeamsRecord(
                                                    queryBuilder:
                                                        (teamsRecord) =>
                                                            teamsRecord.where(
                                                      'value',
                                                      isEqualTo:
                                                          _model.dropTeam5Value,
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
                                                    List<TeamsRecord>
                                                        rowTeamsRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the item does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final rowTeamsRecord =
                                                        rowTeamsRecordList
                                                                .isNotEmpty
                                                            ? rowTeamsRecordList
                                                                .first
                                                            : null;

                                                    return Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (rowTeamsRecord
                                                                ?.updateTime !=
                                                            _model
                                                                .calendarSelectedDay
                                                                ?.start)
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              if (modifRankPilotesEventsRecord
                                                                      .leagueValue ==
                                                                  'formule.1')
                                                                InkWell(
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
                                                                    await rowTeamsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...createTeamsRecordData(
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'points':
                                                                              FieldValue.increment(10),
                                                                          'total_games':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .send_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              if ((modifRankPilotesEventsRecord.leagueValue == 'moto.gp') ||
                                                                  (modifRankPilotesEventsRecord
                                                                          .leagueValue ==
                                                                      'world.superbike') ||
                                                                  (modifRankPilotesEventsRecord
                                                                          .leagueValue ==
                                                                      'mx.gp'))
                                                                InkWell(
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
                                                                    await rowTeamsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...createTeamsRecordData(
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'points':
                                                                              FieldValue.increment(11),
                                                                          'total_games':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .send_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
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
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 20.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '6  .',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                                StreamBuilder<
                                                    List<TeamsRecord>>(
                                                  stream: queryTeamsRecord(
                                                    queryBuilder:
                                                        (teamsRecord) =>
                                                            teamsRecord.where(
                                                      'league_value',
                                                      isEqualTo:
                                                          modifRankPilotesEventsRecord
                                                              .leagueValue,
                                                    ),
                                                  ),
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
                                                    List<TeamsRecord>
                                                        dropTeam6TeamsRecordList =
                                                        snapshot.data!;

                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropTeam6ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropTeam6Value ??=
                                                            '',
                                                      ),
                                                      options: List<
                                                              String>.from(
                                                          dropTeam6TeamsRecordList
                                                              .map((e) =>
                                                                  e.value)
                                                              .toList()),
                                                      optionLabels:
                                                          dropTeam6TeamsRecordList
                                                              .map(
                                                                  (e) => e.name)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.dropTeam6Value =
                                                                  val),
                                                      width: 200.0,
                                                      height: 40.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                      hintText: 'Pilotes',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        size: 24.0,
                                                      ),
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      elevation: 2.0,
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderWidth: 0.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    );
                                                  },
                                                ),
                                                StreamBuilder<
                                                    List<TeamsRecord>>(
                                                  stream: queryTeamsRecord(
                                                    queryBuilder:
                                                        (teamsRecord) =>
                                                            teamsRecord.where(
                                                      'value',
                                                      isEqualTo:
                                                          _model.dropTeam6Value,
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
                                                    List<TeamsRecord>
                                                        rowTeamsRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the item does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final rowTeamsRecord =
                                                        rowTeamsRecordList
                                                                .isNotEmpty
                                                            ? rowTeamsRecordList
                                                                .first
                                                            : null;

                                                    return Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (rowTeamsRecord
                                                                ?.updateTime !=
                                                            _model
                                                                .calendarSelectedDay
                                                                ?.start)
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              if (modifRankPilotesEventsRecord
                                                                      .leagueValue ==
                                                                  'formule.1')
                                                                InkWell(
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
                                                                    await rowTeamsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...createTeamsRecordData(
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'points':
                                                                              FieldValue.increment(8),
                                                                          'total_games':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .send_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              if ((modifRankPilotesEventsRecord.leagueValue == 'moto.gp') ||
                                                                  (modifRankPilotesEventsRecord
                                                                          .leagueValue ==
                                                                      'world.superbike') ||
                                                                  (modifRankPilotesEventsRecord
                                                                          .leagueValue ==
                                                                      'mx.gp'))
                                                                InkWell(
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
                                                                    await rowTeamsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...createTeamsRecordData(
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'points':
                                                                              FieldValue.increment(10),
                                                                          'total_games':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .send_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
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
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 20.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '7  .',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                                StreamBuilder<
                                                    List<TeamsRecord>>(
                                                  stream: queryTeamsRecord(
                                                    queryBuilder:
                                                        (teamsRecord) =>
                                                            teamsRecord.where(
                                                      'league_value',
                                                      isEqualTo:
                                                          modifRankPilotesEventsRecord
                                                              .leagueValue,
                                                    ),
                                                  ),
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
                                                    List<TeamsRecord>
                                                        dropTeam7TeamsRecordList =
                                                        snapshot.data!;

                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropTeam7ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropTeam7Value ??=
                                                            '',
                                                      ),
                                                      options: List<
                                                              String>.from(
                                                          dropTeam7TeamsRecordList
                                                              .map((e) =>
                                                                  e.value)
                                                              .toList()),
                                                      optionLabels:
                                                          dropTeam7TeamsRecordList
                                                              .map(
                                                                  (e) => e.name)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.dropTeam7Value =
                                                                  val),
                                                      width: 200.0,
                                                      height: 40.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                      hintText: 'Pilotes',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        size: 24.0,
                                                      ),
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      elevation: 2.0,
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderWidth: 0.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    );
                                                  },
                                                ),
                                                StreamBuilder<
                                                    List<TeamsRecord>>(
                                                  stream: queryTeamsRecord(
                                                    queryBuilder:
                                                        (teamsRecord) =>
                                                            teamsRecord.where(
                                                      'value',
                                                      isEqualTo:
                                                          _model.dropTeam7Value,
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
                                                    List<TeamsRecord>
                                                        rowTeamsRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the item does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final rowTeamsRecord =
                                                        rowTeamsRecordList
                                                                .isNotEmpty
                                                            ? rowTeamsRecordList
                                                                .first
                                                            : null;

                                                    return Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (rowTeamsRecord
                                                                ?.updateTime !=
                                                            _model
                                                                .calendarSelectedDay
                                                                ?.start)
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              if (modifRankPilotesEventsRecord
                                                                      .leagueValue ==
                                                                  'formule.1')
                                                                InkWell(
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
                                                                    await rowTeamsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...createTeamsRecordData(
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'points':
                                                                              FieldValue.increment(6),
                                                                          'total_games':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .send_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              if ((modifRankPilotesEventsRecord.leagueValue == 'moto.gp') ||
                                                                  (modifRankPilotesEventsRecord
                                                                          .leagueValue ==
                                                                      'world.superbike') ||
                                                                  (modifRankPilotesEventsRecord
                                                                          .leagueValue ==
                                                                      'mx.gp'))
                                                                InkWell(
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
                                                                    await rowTeamsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...createTeamsRecordData(
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'points':
                                                                              FieldValue.increment(9),
                                                                          'total_games':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .send_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
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
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 20.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '8  .',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                                StreamBuilder<
                                                    List<TeamsRecord>>(
                                                  stream: queryTeamsRecord(
                                                    queryBuilder:
                                                        (teamsRecord) =>
                                                            teamsRecord.where(
                                                      'league_value',
                                                      isEqualTo:
                                                          modifRankPilotesEventsRecord
                                                              .leagueValue,
                                                    ),
                                                  ),
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
                                                    List<TeamsRecord>
                                                        dropTeam8TeamsRecordList =
                                                        snapshot.data!;

                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropTeam8ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropTeam8Value ??=
                                                            '',
                                                      ),
                                                      options: List<
                                                              String>.from(
                                                          dropTeam8TeamsRecordList
                                                              .map((e) =>
                                                                  e.value)
                                                              .toList()),
                                                      optionLabels:
                                                          dropTeam8TeamsRecordList
                                                              .map(
                                                                  (e) => e.name)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.dropTeam8Value =
                                                                  val),
                                                      width: 200.0,
                                                      height: 40.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                      hintText: 'Pilotes',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        size: 24.0,
                                                      ),
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      elevation: 2.0,
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderWidth: 0.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    );
                                                  },
                                                ),
                                                StreamBuilder<
                                                    List<TeamsRecord>>(
                                                  stream: queryTeamsRecord(
                                                    queryBuilder:
                                                        (teamsRecord) =>
                                                            teamsRecord.where(
                                                      'value',
                                                      isEqualTo:
                                                          _model.dropTeam8Value,
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
                                                    List<TeamsRecord>
                                                        rowTeamsRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the item does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final rowTeamsRecord =
                                                        rowTeamsRecordList
                                                                .isNotEmpty
                                                            ? rowTeamsRecordList
                                                                .first
                                                            : null;

                                                    return Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (rowTeamsRecord
                                                                ?.updateTime !=
                                                            _model
                                                                .calendarSelectedDay
                                                                ?.start)
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              if (modifRankPilotesEventsRecord
                                                                      .leagueValue ==
                                                                  'formule.1')
                                                                InkWell(
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
                                                                    await rowTeamsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...createTeamsRecordData(
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'points':
                                                                              FieldValue.increment(4),
                                                                          'total_games':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .send_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              if ((modifRankPilotesEventsRecord.leagueValue == 'moto.gp') ||
                                                                  (modifRankPilotesEventsRecord
                                                                          .leagueValue ==
                                                                      'world.superbike') ||
                                                                  (modifRankPilotesEventsRecord
                                                                          .leagueValue ==
                                                                      'mx.gp'))
                                                                InkWell(
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
                                                                    await rowTeamsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...createTeamsRecordData(
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'points':
                                                                              FieldValue.increment(8),
                                                                          'total_games':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .send_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
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
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 20.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '9  .',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                                StreamBuilder<
                                                    List<TeamsRecord>>(
                                                  stream: queryTeamsRecord(
                                                    queryBuilder:
                                                        (teamsRecord) =>
                                                            teamsRecord.where(
                                                      'league_value',
                                                      isEqualTo:
                                                          modifRankPilotesEventsRecord
                                                              .leagueValue,
                                                    ),
                                                  ),
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
                                                    List<TeamsRecord>
                                                        dropTeam9TeamsRecordList =
                                                        snapshot.data!;

                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropTeam9ValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropTeam9Value ??=
                                                            '',
                                                      ),
                                                      options: List<
                                                              String>.from(
                                                          dropTeam9TeamsRecordList
                                                              .map((e) =>
                                                                  e.value)
                                                              .toList()),
                                                      optionLabels:
                                                          dropTeam9TeamsRecordList
                                                              .map(
                                                                  (e) => e.name)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.dropTeam9Value =
                                                                  val),
                                                      width: 200.0,
                                                      height: 40.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                      hintText: 'Pilotes',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        size: 24.0,
                                                      ),
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      elevation: 2.0,
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderWidth: 0.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    );
                                                  },
                                                ),
                                                StreamBuilder<
                                                    List<TeamsRecord>>(
                                                  stream: queryTeamsRecord(
                                                    queryBuilder:
                                                        (teamsRecord) =>
                                                            teamsRecord.where(
                                                      'value',
                                                      isEqualTo:
                                                          _model.dropTeam9Value,
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
                                                    List<TeamsRecord>
                                                        rowTeamsRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the item does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final rowTeamsRecord =
                                                        rowTeamsRecordList
                                                                .isNotEmpty
                                                            ? rowTeamsRecordList
                                                                .first
                                                            : null;

                                                    return Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (rowTeamsRecord
                                                                ?.updateTime !=
                                                            _model
                                                                .calendarSelectedDay
                                                                ?.start)
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              if (modifRankPilotesEventsRecord
                                                                      .leagueValue ==
                                                                  'formule.1')
                                                                InkWell(
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
                                                                    await rowTeamsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...createTeamsRecordData(
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'points':
                                                                              FieldValue.increment(2),
                                                                          'total_games':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .send_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              if ((modifRankPilotesEventsRecord.leagueValue == 'moto.gp') ||
                                                                  (modifRankPilotesEventsRecord
                                                                          .leagueValue ==
                                                                      'world.superbike') ||
                                                                  (modifRankPilotesEventsRecord
                                                                          .leagueValue ==
                                                                      'mx.gp'))
                                                                InkWell(
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
                                                                    await rowTeamsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...createTeamsRecordData(
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'points':
                                                                              FieldValue.increment(7),
                                                                          'total_games':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .send_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
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
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 20.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '10 .',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                                StreamBuilder<
                                                    List<TeamsRecord>>(
                                                  stream: queryTeamsRecord(
                                                    queryBuilder:
                                                        (teamsRecord) =>
                                                            teamsRecord.where(
                                                      'league_value',
                                                      isEqualTo:
                                                          modifRankPilotesEventsRecord
                                                              .leagueValue,
                                                    ),
                                                  ),
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
                                                    List<TeamsRecord>
                                                        dropTeam10TeamsRecordList =
                                                        snapshot.data!;

                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropTeam10ValueController1 ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropTeam10Value1 ??=
                                                            '',
                                                      ),
                                                      options: List<
                                                              String>.from(
                                                          dropTeam10TeamsRecordList
                                                              .map((e) =>
                                                                  e.value)
                                                              .toList()),
                                                      optionLabels:
                                                          dropTeam10TeamsRecordList
                                                              .map(
                                                                  (e) => e.name)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.dropTeam10Value1 =
                                                                  val),
                                                      width: 200.0,
                                                      height: 40.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                      hintText: 'Pilotes',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        size: 24.0,
                                                      ),
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      elevation: 2.0,
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderWidth: 0.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    );
                                                  },
                                                ),
                                                if (true /* Warning: Trying to access variable not yet defined. */)
                                                  StreamBuilder<
                                                      List<TeamsRecord>>(
                                                    stream: queryTeamsRecord(
                                                      queryBuilder:
                                                          (teamsRecord) =>
                                                              teamsRecord.where(
                                                        'value',
                                                        isEqualTo: _model
                                                            .dropTeam10Value1,
                                                      ),
                                                      singleRecord: true,
                                                    ),
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
                                                      List<TeamsRecord>
                                                          rowTeamsRecordList =
                                                          snapshot.data!;
                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final rowTeamsRecord =
                                                          rowTeamsRecordList
                                                                  .isNotEmpty
                                                              ? rowTeamsRecordList
                                                                  .first
                                                              : null;

                                                      return Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          if (rowTeamsRecord
                                                                  ?.updateTime !=
                                                              _model
                                                                  .calendarSelectedDay
                                                                  ?.start)
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                if (modifRankPilotesEventsRecord
                                                                        .leagueValue ==
                                                                    'formule.1')
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
                                                                      await rowTeamsRecord!
                                                                          .reference
                                                                          .update({
                                                                        ...createTeamsRecordData(
                                                                          updateTime: _model
                                                                              .calendarSelectedDay
                                                                              ?.start,
                                                                        ),
                                                                        ...mapToFirestore(
                                                                          {
                                                                            'points':
                                                                                FieldValue.increment(1),
                                                                            'total_games':
                                                                                FieldValue.increment(1),
                                                                          },
                                                                        ),
                                                                      });
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .send_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                if ((modifRankPilotesEventsRecord.leagueValue == 'moto.gp') ||
                                                                    (modifRankPilotesEventsRecord
                                                                            .leagueValue ==
                                                                        'world.superbike') ||
                                                                    (modifRankPilotesEventsRecord
                                                                            .leagueValue ==
                                                                        'mx.gp'))
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
                                                                      await rowTeamsRecord!
                                                                          .reference
                                                                          .update({
                                                                        ...createTeamsRecordData(
                                                                          updateTime: _model
                                                                              .calendarSelectedDay
                                                                              ?.start,
                                                                        ),
                                                                        ...mapToFirestore(
                                                                          {
                                                                            'points':
                                                                                FieldValue.increment(6),
                                                                            'total_games':
                                                                                FieldValue.increment(1),
                                                                          },
                                                                        ),
                                                                      });
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .send_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
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
                                          if ((modifRankPilotesEventsRecord
                                                      .leagueValue ==
                                                  'moto.gp') ||
                                              (modifRankPilotesEventsRecord
                                                      .leagueValue ==
                                                  'world.superbike') ||
                                              (modifRankPilotesEventsRecord
                                                      .leagueValue ==
                                                  'mx.gp'))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 20.0, 10.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      '11 .',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                  StreamBuilder<
                                                      List<TeamsRecord>>(
                                                    stream: queryTeamsRecord(
                                                      queryBuilder:
                                                          (teamsRecord) =>
                                                              teamsRecord.where(
                                                        'league_value',
                                                        isEqualTo:
                                                            modifRankPilotesEventsRecord
                                                                .leagueValue,
                                                      ),
                                                    ),
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
                                                      List<TeamsRecord>
                                                          dropTeam10TeamsRecordList =
                                                          snapshot.data!;

                                                      return FlutterFlowDropDown<
                                                          String>(
                                                        controller: _model
                                                                .dropTeam10ValueController2 ??=
                                                            FormFieldController<
                                                                String>(
                                                          _model.dropTeam10Value2 ??=
                                                              '',
                                                        ),
                                                        options: List<
                                                                String>.from(
                                                            dropTeam10TeamsRecordList
                                                                .map((e) =>
                                                                    e.value)
                                                                .toList()),
                                                        optionLabels:
                                                            dropTeam10TeamsRecordList
                                                                .map((e) =>
                                                                    e.name)
                                                                .toList(),
                                                        onChanged: (val) =>
                                                            safeSetState(() =>
                                                                _model.dropTeam10Value2 =
                                                                    val),
                                                        width: 200.0,
                                                        height: 40.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                        hintText: 'Pilotes',
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          size: 24.0,
                                                        ),
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        elevation: 2.0,
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderWidth: 0.0,
                                                        borderRadius: 8.0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    12.0,
                                                                    0.0),
                                                        hidesUnderline: true,
                                                        isOverButton: false,
                                                        isSearchable: false,
                                                        isMultiSelect: false,
                                                      );
                                                    },
                                                  ),
                                                  StreamBuilder<
                                                      List<TeamsRecord>>(
                                                    stream: queryTeamsRecord(
                                                      queryBuilder:
                                                          (teamsRecord) =>
                                                              teamsRecord.where(
                                                        'value',
                                                        isEqualTo: _model
                                                            .dropTeam10Value2,
                                                      ),
                                                      singleRecord: true,
                                                    ),
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
                                                      List<TeamsRecord>
                                                          rowTeamsRecordList =
                                                          snapshot.data!;
                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final rowTeamsRecord =
                                                          rowTeamsRecordList
                                                                  .isNotEmpty
                                                              ? rowTeamsRecordList
                                                                  .first
                                                              : null;

                                                      return Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          if (rowTeamsRecord
                                                                  ?.updateTime !=
                                                              _model
                                                                  .calendarSelectedDay
                                                                  ?.start)
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                InkWell(
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
                                                                    await rowTeamsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...createTeamsRecordData(
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'points':
                                                                              FieldValue.increment(5),
                                                                          'total_games':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .send_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
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
                                          if ((modifRankPilotesEventsRecord
                                                      .leagueValue ==
                                                  'moto.gp') ||
                                              (modifRankPilotesEventsRecord
                                                      .leagueValue ==
                                                  'world.superbike') ||
                                              (modifRankPilotesEventsRecord
                                                      .leagueValue ==
                                                  'mx.gp'))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 20.0, 10.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      '12 .',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                  StreamBuilder<
                                                      List<TeamsRecord>>(
                                                    stream: queryTeamsRecord(
                                                      queryBuilder:
                                                          (teamsRecord) =>
                                                              teamsRecord.where(
                                                        'league_value',
                                                        isEqualTo:
                                                            modifRankPilotesEventsRecord
                                                                .leagueValue,
                                                      ),
                                                    ),
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
                                                      List<TeamsRecord>
                                                          dropTeam10TeamsRecordList =
                                                          snapshot.data!;

                                                      return FlutterFlowDropDown<
                                                          String>(
                                                        controller: _model
                                                                .dropTeam10ValueController3 ??=
                                                            FormFieldController<
                                                                String>(
                                                          _model.dropTeam10Value3 ??=
                                                              '',
                                                        ),
                                                        options: List<
                                                                String>.from(
                                                            dropTeam10TeamsRecordList
                                                                .map((e) =>
                                                                    e.value)
                                                                .toList()),
                                                        optionLabels:
                                                            dropTeam10TeamsRecordList
                                                                .map((e) =>
                                                                    e.name)
                                                                .toList(),
                                                        onChanged: (val) =>
                                                            safeSetState(() =>
                                                                _model.dropTeam10Value3 =
                                                                    val),
                                                        width: 200.0,
                                                        height: 40.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                        hintText: 'Pilotes',
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          size: 24.0,
                                                        ),
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        elevation: 2.0,
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderWidth: 0.0,
                                                        borderRadius: 8.0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    12.0,
                                                                    0.0),
                                                        hidesUnderline: true,
                                                        isOverButton: false,
                                                        isSearchable: false,
                                                        isMultiSelect: false,
                                                      );
                                                    },
                                                  ),
                                                  StreamBuilder<
                                                      List<TeamsRecord>>(
                                                    stream: queryTeamsRecord(
                                                      queryBuilder:
                                                          (teamsRecord) =>
                                                              teamsRecord.where(
                                                        'value',
                                                        isEqualTo: _model
                                                            .dropTeam10Value3,
                                                      ),
                                                      singleRecord: true,
                                                    ),
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
                                                      List<TeamsRecord>
                                                          rowTeamsRecordList =
                                                          snapshot.data!;
                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final rowTeamsRecord =
                                                          rowTeamsRecordList
                                                                  .isNotEmpty
                                                              ? rowTeamsRecordList
                                                                  .first
                                                              : null;

                                                      return Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          if (rowTeamsRecord
                                                                  ?.updateTime !=
                                                              _model
                                                                  .calendarSelectedDay
                                                                  ?.start)
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                InkWell(
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
                                                                    await rowTeamsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...createTeamsRecordData(
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'points':
                                                                              FieldValue.increment(4),
                                                                          'total_games':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .send_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
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
                                          if ((modifRankPilotesEventsRecord
                                                      .leagueValue ==
                                                  'moto.gp') ||
                                              (modifRankPilotesEventsRecord
                                                      .leagueValue ==
                                                  'world.superbike') ||
                                              (modifRankPilotesEventsRecord
                                                      .leagueValue ==
                                                  'mx.gp'))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 20.0, 10.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      '13 .',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                  StreamBuilder<
                                                      List<TeamsRecord>>(
                                                    stream: queryTeamsRecord(
                                                      queryBuilder:
                                                          (teamsRecord) =>
                                                              teamsRecord.where(
                                                        'league_value',
                                                        isEqualTo:
                                                            modifRankPilotesEventsRecord
                                                                .leagueValue,
                                                      ),
                                                    ),
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
                                                      List<TeamsRecord>
                                                          dropTeam10TeamsRecordList =
                                                          snapshot.data!;

                                                      return FlutterFlowDropDown<
                                                          String>(
                                                        controller: _model
                                                                .dropTeam10ValueController4 ??=
                                                            FormFieldController<
                                                                String>(
                                                          _model.dropTeam10Value4 ??=
                                                              '',
                                                        ),
                                                        options: List<
                                                                String>.from(
                                                            dropTeam10TeamsRecordList
                                                                .map((e) =>
                                                                    e.value)
                                                                .toList()),
                                                        optionLabels:
                                                            dropTeam10TeamsRecordList
                                                                .map((e) =>
                                                                    e.name)
                                                                .toList(),
                                                        onChanged: (val) =>
                                                            safeSetState(() =>
                                                                _model.dropTeam10Value4 =
                                                                    val),
                                                        width: 200.0,
                                                        height: 40.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                        hintText: 'Pilotes',
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          size: 24.0,
                                                        ),
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        elevation: 2.0,
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderWidth: 0.0,
                                                        borderRadius: 8.0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    12.0,
                                                                    0.0),
                                                        hidesUnderline: true,
                                                        isOverButton: false,
                                                        isSearchable: false,
                                                        isMultiSelect: false,
                                                      );
                                                    },
                                                  ),
                                                  StreamBuilder<
                                                      List<TeamsRecord>>(
                                                    stream: queryTeamsRecord(
                                                      queryBuilder:
                                                          (teamsRecord) =>
                                                              teamsRecord.where(
                                                        'value',
                                                        isEqualTo: _model
                                                            .dropTeam10Value4,
                                                      ),
                                                      singleRecord: true,
                                                    ),
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
                                                      List<TeamsRecord>
                                                          rowTeamsRecordList =
                                                          snapshot.data!;
                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final rowTeamsRecord =
                                                          rowTeamsRecordList
                                                                  .isNotEmpty
                                                              ? rowTeamsRecordList
                                                                  .first
                                                              : null;

                                                      return Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          if (rowTeamsRecord
                                                                  ?.updateTime !=
                                                              _model
                                                                  .calendarSelectedDay
                                                                  ?.start)
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                InkWell(
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
                                                                    await rowTeamsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...createTeamsRecordData(
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'points':
                                                                              FieldValue.increment(3),
                                                                          'total_games':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .send_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
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
                                          if ((modifRankPilotesEventsRecord
                                                      .leagueValue ==
                                                  'moto.gp') ||
                                              (modifRankPilotesEventsRecord
                                                      .leagueValue ==
                                                  'world.superbike') ||
                                              (modifRankPilotesEventsRecord
                                                      .leagueValue ==
                                                  'mx.gp'))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 20.0, 10.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      '14 .',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                  StreamBuilder<
                                                      List<TeamsRecord>>(
                                                    stream: queryTeamsRecord(
                                                      queryBuilder:
                                                          (teamsRecord) =>
                                                              teamsRecord.where(
                                                        'league_value',
                                                        isEqualTo:
                                                            modifRankPilotesEventsRecord
                                                                .leagueValue,
                                                      ),
                                                    ),
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
                                                      List<TeamsRecord>
                                                          dropTeam10TeamsRecordList =
                                                          snapshot.data!;

                                                      return FlutterFlowDropDown<
                                                          String>(
                                                        controller: _model
                                                                .dropTeam10ValueController5 ??=
                                                            FormFieldController<
                                                                String>(
                                                          _model.dropTeam10Value5 ??=
                                                              '',
                                                        ),
                                                        options: List<
                                                                String>.from(
                                                            dropTeam10TeamsRecordList
                                                                .map((e) =>
                                                                    e.value)
                                                                .toList()),
                                                        optionLabels:
                                                            dropTeam10TeamsRecordList
                                                                .map((e) =>
                                                                    e.name)
                                                                .toList(),
                                                        onChanged: (val) =>
                                                            safeSetState(() =>
                                                                _model.dropTeam10Value5 =
                                                                    val),
                                                        width: 200.0,
                                                        height: 40.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                        hintText: 'Pilotes',
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          size: 24.0,
                                                        ),
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        elevation: 2.0,
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderWidth: 0.0,
                                                        borderRadius: 8.0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    12.0,
                                                                    0.0),
                                                        hidesUnderline: true,
                                                        isOverButton: false,
                                                        isSearchable: false,
                                                        isMultiSelect: false,
                                                      );
                                                    },
                                                  ),
                                                  StreamBuilder<
                                                      List<TeamsRecord>>(
                                                    stream: queryTeamsRecord(
                                                      queryBuilder:
                                                          (teamsRecord) =>
                                                              teamsRecord.where(
                                                        'value',
                                                        isEqualTo: _model
                                                            .dropTeam10Value5,
                                                      ),
                                                      singleRecord: true,
                                                    ),
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
                                                      List<TeamsRecord>
                                                          rowTeamsRecordList =
                                                          snapshot.data!;
                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final rowTeamsRecord =
                                                          rowTeamsRecordList
                                                                  .isNotEmpty
                                                              ? rowTeamsRecordList
                                                                  .first
                                                              : null;

                                                      return Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          if (rowTeamsRecord
                                                                  ?.updateTime !=
                                                              _model
                                                                  .calendarSelectedDay
                                                                  ?.start)
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                InkWell(
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
                                                                    await rowTeamsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...createTeamsRecordData(
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'points':
                                                                              FieldValue.increment(2),
                                                                          'total_games':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .send_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
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
                                          if ((modifRankPilotesEventsRecord
                                                      .leagueValue ==
                                                  'moto.gp') ||
                                              (modifRankPilotesEventsRecord
                                                      .leagueValue ==
                                                  'world.superbike') ||
                                              (modifRankPilotesEventsRecord
                                                      .leagueValue ==
                                                  'mx.gp'))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 20.0, 10.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      '15 .',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                  StreamBuilder<
                                                      List<TeamsRecord>>(
                                                    stream: queryTeamsRecord(
                                                      queryBuilder:
                                                          (teamsRecord) =>
                                                              teamsRecord.where(
                                                        'league_value',
                                                        isEqualTo:
                                                            modifRankPilotesEventsRecord
                                                                .leagueValue,
                                                      ),
                                                    ),
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
                                                      List<TeamsRecord>
                                                          dropTeam10TeamsRecordList =
                                                          snapshot.data!;

                                                      return FlutterFlowDropDown<
                                                          String>(
                                                        controller: _model
                                                                .dropTeam10ValueController6 ??=
                                                            FormFieldController<
                                                                String>(
                                                          _model.dropTeam10Value6 ??=
                                                              '',
                                                        ),
                                                        options: List<
                                                                String>.from(
                                                            dropTeam10TeamsRecordList
                                                                .map((e) =>
                                                                    e.value)
                                                                .toList()),
                                                        optionLabels:
                                                            dropTeam10TeamsRecordList
                                                                .map((e) =>
                                                                    e.name)
                                                                .toList(),
                                                        onChanged: (val) =>
                                                            safeSetState(() =>
                                                                _model.dropTeam10Value6 =
                                                                    val),
                                                        width: 200.0,
                                                        height: 40.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                        hintText: 'Pilotes',
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          size: 24.0,
                                                        ),
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        elevation: 2.0,
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderWidth: 0.0,
                                                        borderRadius: 8.0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    12.0,
                                                                    0.0),
                                                        hidesUnderline: true,
                                                        isOverButton: false,
                                                        isSearchable: false,
                                                        isMultiSelect: false,
                                                      );
                                                    },
                                                  ),
                                                  StreamBuilder<
                                                      List<TeamsRecord>>(
                                                    stream: queryTeamsRecord(
                                                      queryBuilder:
                                                          (teamsRecord) =>
                                                              teamsRecord.where(
                                                        'value',
                                                        isEqualTo: _model
                                                            .dropTeam10Value6,
                                                      ),
                                                      singleRecord: true,
                                                    ),
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
                                                      List<TeamsRecord>
                                                          rowTeamsRecordList =
                                                          snapshot.data!;
                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final rowTeamsRecord =
                                                          rowTeamsRecordList
                                                                  .isNotEmpty
                                                              ? rowTeamsRecordList
                                                                  .first
                                                              : null;

                                                      return Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          if (rowTeamsRecord
                                                                  ?.updateTime !=
                                                              _model
                                                                  .calendarSelectedDay
                                                                  ?.start)
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                InkWell(
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
                                                                    await rowTeamsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...createTeamsRecordData(
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'points':
                                                                              FieldValue.increment(1),
                                                                          'total_games':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .send_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
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
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          triggerPushNotification(
                                            notificationTitle:
                                                'Course terminée',
                                            notificationText:
                                                '1 - ${_model.dropTeam1Value} : 2 - ${_model.dropTeam2Value} : 3 - ${_model.dropTeam3Value}',
                                            userRefs:
                                                modifRankPilotesEventsRecord
                                                    .notifsUsers
                                                    .toList(),
                                            initialPageName: 'EventPage',
                                            parameterData: {
                                              'eventRef': widget.eventMecaRef,
                                            },
                                          );
                                          context.safePop();
                                        },
                                        text: 'Valider',
                                        options: FFButtonOptions(
                                          width: 130.0,
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmallIsCustom,
                                              ),
                                          elevation: 3.0,
                                          borderSide: BorderSide(
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
                                  Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: Image.asset(
                              'assets/images/Logo_The_S_Team.png',
                            ).image,
                          ),
                        ),
                        child: Visibility(
                          visible: !isWeb,
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: FlutterFlowAdBanner(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 60.0,
                              showsTestAd: false,
                              iOSAdUnitID:
                                  'ca-app-pub-5890797816389993/8936699392',
                              androidAdUnitID:
                                  'ca-app-pub-5890797816389993/6218487975',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
