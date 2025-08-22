import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                                              kTransitionInfoKey:
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
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                                dayOfWeekStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                                dateStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                selectedDateStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                inactiveDateStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
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
                                          font: GoogleFonts.poppins(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontStyle,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 5.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '3lnuzehj' /* : */,
                                      ),
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontStyle,
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
                                            font: GoogleFonts.poppins(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontStyle,
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
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 10.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                modifRankPilotesEventsRecord.week,
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
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
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ylyk00hk' /* 1  . */,
                                                    ),
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
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'u49wqcsy' /* Pilotes */,
                                                      ),
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
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'p1hlpa2o' /* 2  . */,
                                                    ),
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
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '24adobbr' /* Pilotes */,
                                                      ),
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
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'mtd5ldeg' /* 3  . */,
                                                    ),
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
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '4d58tpaw' /* Pilotes */,
                                                      ),
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
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '33sbedks' /* 4 . */,
                                                    ),
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
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'g9x5rt63' /* Pilotes */,
                                                      ),
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
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3knku65q' /* 5  . */,
                                                    ),
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
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'eq84p9rt' /* Pilotes */,
                                                      ),
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
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'av9b1w3q' /* 6  . */,
                                                    ),
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
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'fjf6dcu1' /* Pilotes */,
                                                      ),
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
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yh7a5m1d' /* 7  . */,
                                                    ),
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
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'tbywda1e' /* Pilotes */,
                                                      ),
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
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'reyn4nhp' /* 8  . */,
                                                    ),
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
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'f9y3e886' /* Pilotes */,
                                                      ),
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
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zo0r9u3g' /* 9  . */,
                                                    ),
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
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '5po6vxek' /* Pilotes */,
                                                      ),
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
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3cmr5xew' /* 10 . */,
                                                    ),
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
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '7hwp1zkt' /* Pilotes */,
                                                      ),
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
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '3ccd5zho' /* 11 . */,
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
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'mqz3fbqr' /* Pilotes */,
                                                        ),
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
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        't7dxk5wx' /* 12 . */,
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
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '96xyebro' /* Pilotes */,
                                                        ),
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
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '3fl2249u' /* 13 . */,
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
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'y4ram2s7' /* Pilotes */,
                                                        ),
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
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '700en94j' /* 14 . */,
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
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'zfpxxciz' /* Pilotes */,
                                                        ),
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
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '4mxlkau4' /* 15 . */,
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
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'xn8xpzid' /* Pilotes */,
                                                        ),
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
                                          context.safePop();
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'w9tubfp2' /* Valider */,
                                        ),
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
                                                font: GoogleFonts.poppins(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
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
