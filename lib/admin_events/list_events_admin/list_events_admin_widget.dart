import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'list_events_admin_model.dart';
export 'list_events_admin_model.dart';

class ListEventsAdminWidget extends StatefulWidget {
  const ListEventsAdminWidget({super.key});

  static String routeName = 'ListEventsAdmin';
  static String routePath = '/listEventsAdmin';

  @override
  State<ListEventsAdminWidget> createState() => _ListEventsAdminWidgetState();
}

class _ListEventsAdminWidgetState extends State<ListEventsAdminWidget> {
  late ListEventsAdminModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListEventsAdminModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                    kTransitionInfoKey: TransitionInfo(
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
                                color: FlutterFlowTheme.of(context).primaryText,
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 30.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'lv8ozeyn' /* Rencontres Admin */,
                              ),
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
                          ],
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
                              context.pushNamed(AddEventPageWidget.routeName);
                            },
                            child: Icon(
                              Icons.add_circle_outline_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 50.0, 10.0, 70.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowCalendar(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            iconColor: FlutterFlowTheme.of(context).primaryText,
                            weekFormat: true,
                            weekStartsMonday: true,
                            rowHeight: 40.0,
                            onChange: (DateTimeRange? newSelectedDate) {
                              safeSetState(() =>
                                  _model.calendarSelectedDay = newSelectedDate);
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
                                  color: FlutterFlowTheme.of(context).success,
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
                            locale: FFLocalizations.of(context).languageCode,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (_model.calendarSelectedDay != null)
                                  StreamBuilder<List<EventsRecord>>(
                                    stream: queryEventsRecord(
                                      queryBuilder: (eventsRecord) =>
                                          eventsRecord
                                              .where(
                                                'date',
                                                isEqualTo: _model
                                                    .calendarSelectedDay?.start,
                                              )
                                              .orderBy('hour'),
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
                                      List<EventsRecord>
                                          columnEventsEventsRecordList =
                                          snapshot.data!;

                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(
                                            columnEventsEventsRecordList.length,
                                            (columnEventsIndex) {
                                          final columnEventsEventsRecord =
                                              columnEventsEventsRecordList[
                                                  columnEventsIndex];
                                          return Visibility(
                                            visible: columnEventsEventsRecord
                                                    .adminUser ==
                                                currentUserReference,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                5.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                if (columnEventsEventsRecord
                                                                        .sportValue ==
                                                                    'football')
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Icon(
                                                                      Icons
                                                                          .sports_soccer_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                if (columnEventsEventsRecord
                                                                        .sportValue ==
                                                                    'hockey')
                                                                  Icon(
                                                                    Icons
                                                                        .sports_hockey,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                if (columnEventsEventsRecord
                                                                        .sportValue ==
                                                                    'tennis')
                                                                  Icon(
                                                                    Icons
                                                                        .sports_baseball,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent1,
                                                                    size: 24.0,
                                                                  ),
                                                                if (columnEventsEventsRecord
                                                                        .sportValue ==
                                                                    'basketball')
                                                                  Icon(
                                                                    Icons
                                                                        .sports_basketball,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .warning,
                                                                    size: 24.0,
                                                                  ),
                                                                if (columnEventsEventsRecord
                                                                        .sportValue ==
                                                                    'mma')
                                                                  Icon(
                                                                    Icons
                                                                        .sports_mma_outlined,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                if (columnEventsEventsRecord
                                                                        .sportValue ==
                                                                    'boxe')
                                                                  Icon(
                                                                    Icons
                                                                        .sports_mma_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                if (columnEventsEventsRecord
                                                                        .sportValue ==
                                                                    'rugby')
                                                                  Icon(
                                                                    Icons
                                                                        .sports_rugby_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                if (columnEventsEventsRecord
                                                                        .sportValue ==
                                                                    'sports.meca')
                                                                  Icon(
                                                                    Icons
                                                                        .sports_motorsports_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  if (columnEventsEventsRecord
                                                                          .statut ==
                                                                      true)
                                                                    Container(
                                                                      width:
                                                                          20.0,
                                                                      height:
                                                                          20.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                    ),
                                                                  if (columnEventsEventsRecord
                                                                          .statut ==
                                                                      false)
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            20.0,
                                                                        height:
                                                                            20.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                            Text(
                                                              dateTimeFormat(
                                                                "d/M/y",
                                                                columnEventsEventsRecord
                                                                    .date!,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          3.0,
                                                                          0.0,
                                                                          3.0,
                                                                          0.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '3xdphz4a' /* - */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .poppins(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
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
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                columnEventsEventsRecord
                                                                    .hour
                                                                    .toString(),
                                                                '00',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          2.0,
                                                                          0.0,
                                                                          2.0,
                                                                          0.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'uj6w5d4b' /* : */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .poppins(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
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
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                functions.zeroTo00(
                                                                    columnEventsEventsRecord
                                                                        .minute),
                                                                '00',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            columnEventsEventsRecord
                                                                .leagueValue,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                      ],
                                                    ),
                                                  ),
                                                  if (columnEventsEventsRecord
                                                          .sportValue !=
                                                      'sports.meca')
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
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Row(
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
                                                                            5.0,
                                                                            0.0),
                                                                child: Text(
                                                                  columnEventsEventsRecord
                                                                      .teamdom,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .end,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '4m46ysbt' /* - */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  columnEventsEventsRecord
                                                                      .teamext,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  if ((columnEventsEventsRecord
                                                              .statut ==
                                                          false) &&
                                                      (columnEventsEventsRecord
                                                              .sportValue !=
                                                          'sports.meca'))
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          width: 160.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Text(
                                                              columnEventsEventsRecord
                                                                  .scoreDom
                                                                  .toString(),
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 160.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Text(
                                                              columnEventsEventsRecord
                                                                  .scoreExt
                                                                  .toString(),
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        if (columnEventsEventsRecord
                                                                .sportValue !=
                                                            'sports.meca')
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
                                                              context.pushNamed(
                                                                AddBetPageWidget
                                                                    .routeName,
                                                                queryParameters:
                                                                    {
                                                                  'eventRef':
                                                                      serializeParam(
                                                                    columnEventsEventsRecord
                                                                        .reference,
                                                                    ParamType
                                                                        .DocumentReference,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .attach_money_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 30.0,
                                                            ),
                                                          ),
                                                        if (columnEventsEventsRecord
                                                                .sportValue ==
                                                            'sports.meca')
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
                                                              context.pushNamed(
                                                                AddBetMecaPageWidget
                                                                    .routeName,
                                                                queryParameters:
                                                                    {
                                                                  'eventMecaRef':
                                                                      serializeParam(
                                                                    columnEventsEventsRecord
                                                                        .reference,
                                                                    ParamType
                                                                        .DocumentReference,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .attach_money_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 30.0,
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
                                                            context.pushNamed(
                                                              ModifEventPageWidget
                                                                  .routeName,
                                                              queryParameters: {
                                                                'eventRef':
                                                                    serializeParam(
                                                                  columnEventsEventsRecord
                                                                      .reference,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .settings_sharp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 30.0,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Divider(
                                                    thickness: 1.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        }),
                                      );
                                    },
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (!isWeb)
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: FlutterFlowAdBanner(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 70.0,
                      showsTestAd: false,
                      iOSAdUnitID: 'ca-app-pub-5890797816389993/8705679157',
                      androidAdUnitID: 'ca-app-pub-5890797816389993/4818405035',
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
