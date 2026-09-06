import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'list_events_add2_bet_model.dart';
export 'list_events_add2_bet_model.dart';

class ListEventsAdd2BetWidget extends StatefulWidget {
  const ListEventsAdd2BetWidget({
    super.key,
    required this.myBetRef,
  });

  final DocumentReference? myBetRef;

  static String routeName = 'ListEventsAdd2Bet';
  static String routePath = '/listEventsAdd2Bet';

  @override
  State<ListEventsAdd2BetWidget> createState() =>
      _ListEventsAdd2BetWidgetState();
}

class _ListEventsAdd2BetWidgetState extends State<ListEventsAdd2BetWidget> {
  late ListEventsAdd2BetModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListEventsAdd2BetModel());
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
            child: Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
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
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.0, -1.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if ((valueOrDefault(
                                                          currentUserDocument
                                                              ?.langage,
                                                          '') ==
                                                      '') ||
                                              (valueOrDefault(
                                                      currentUserDocument
                                                          ?.langage,
                                                      '') ==
                                                  'francais'))
                                            AuthUserStreamWidget(
                                              builder: (context) => Text(
                                                'Evénements',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLargeFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelLargeIsCustom,
                                                        ),
                                              ),
                                            ),
                                          if ((valueOrDefault(
                                                      currentUserDocument
                                                          ?.langage,
                                                      '') ==
                                                  'english') ||
                                              (valueOrDefault(
                                                      currentUserDocument
                                                          ?.langage,
                                                      '') ==
                                                  'american'))
                                            AuthUserStreamWidget(
                                              builder: (context) => Text(
                                                'Events',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLargeFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
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
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLargeFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
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
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLargeFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
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
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLargeFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
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
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLargeFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelLargeIsCustom,
                                                        ),
                                              ),
                                            ),
                                        ],
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
                          AuthUserStreamWidget(
                            builder: (context) => Divider(
                              thickness: 1.0,
                              color: valueOrDefault<Color>(
                                currentUserDocument?.color2,
                                FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 3.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FutureBuilder<int>(
                                    future: queryEventsRecordCount(
                                      queryBuilder: (eventsRecord) =>
                                          eventsRecord
                                              .where(
                                                'date',
                                                isEqualTo: _model
                                                    .calendarSelectedDay?.start,
                                              )
                                              .where(
                                                'sport_value',
                                                isEqualTo: 'football' != ''
                                                    ? 'football'
                                                    : null,
                                              )
                                              .where(
                                                'statut',
                                                isEqualTo: true,
                                              ),
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
                                      int rowCount = snapshot.data!;

                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (rowCount != 0)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 5.0, 3.0),
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
                                                    _model.showSportFilter =
                                                        'football';
                                                    safeSetState(() {});
                                                  },
                                                  child: Container(
                                                    width: 55.0,
                                                    height: 27.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent3,
                                                          offset: Offset(
                                                            0.0,
                                                            2.0,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color: valueOrDefault<
                                                            Color>(
                                                          currentUserDocument
                                                              ?.color1,
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Row(
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
                                                          child: Icon(
                                                            Icons
                                                                .sports_soccer_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 25.0,
                                                          ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            rowCount.toString(),
                                                            '00',
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
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      );
                                    },
                                  ),
                                  FutureBuilder<int>(
                                    future: queryEventsRecordCount(
                                      queryBuilder: (eventsRecord) =>
                                          eventsRecord
                                              .where(
                                                'date',
                                                isEqualTo: _model
                                                    .calendarSelectedDay?.start,
                                              )
                                              .where(
                                                'sport_value',
                                                isEqualTo: 'rugby' != ''
                                                    ? 'rugby'
                                                    : null,
                                              )
                                              .where(
                                                'statut',
                                                isEqualTo: true,
                                              ),
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
                                      int rowCount = snapshot.data!;

                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (rowCount != 0)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 5.0, 3.0),
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
                                                    _model.showSportFilter =
                                                        'rugby';
                                                    safeSetState(() {});
                                                  },
                                                  child: Container(
                                                    width: 55.0,
                                                    height: 27.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent3,
                                                          offset: Offset(
                                                            0.0,
                                                            2.0,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color: valueOrDefault<
                                                            Color>(
                                                          currentUserDocument
                                                              ?.color1,
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      2.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Icon(
                                                            Icons
                                                                .sports_rugby_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 25.0,
                                                          ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            rowCount.toString(),
                                                            '00',
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
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      );
                                    },
                                  ),
                                  FutureBuilder<int>(
                                    future: queryEventsRecordCount(
                                      queryBuilder: (eventsRecord) =>
                                          eventsRecord
                                              .where(
                                                'date',
                                                isEqualTo: _model
                                                    .calendarSelectedDay?.start,
                                              )
                                              .where(
                                                'sport_value',
                                                isEqualTo: 'basketball' != ''
                                                    ? 'basketball'
                                                    : null,
                                              )
                                              .where(
                                                'statut',
                                                isEqualTo: true,
                                              ),
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
                                      int rowCount = snapshot.data!;

                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (rowCount != 0)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 5.0, 3.0),
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
                                                    _model.showSportFilter =
                                                        'basketball';
                                                    safeSetState(() {});
                                                  },
                                                  child: Container(
                                                    width: 55.0,
                                                    height: 27.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent3,
                                                          offset: Offset(
                                                            0.0,
                                                            2.0,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color: valueOrDefault<
                                                            Color>(
                                                          currentUserDocument
                                                              ?.color1,
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Row(
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
                                                          child: Icon(
                                                            Icons
                                                                .sports_basketball,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .warning,
                                                            size: 25.0,
                                                          ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            rowCount.toString(),
                                                            '00',
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
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      );
                                    },
                                  ),
                                  FutureBuilder<int>(
                                    future: queryEventsRecordCount(
                                      queryBuilder: (eventsRecord) =>
                                          eventsRecord
                                              .where(
                                                'date',
                                                isEqualTo: _model
                                                    .calendarSelectedDay?.start,
                                              )
                                              .where(
                                                'sport_value',
                                                isEqualTo: 'hockey' != ''
                                                    ? 'hockey'
                                                    : null,
                                              )
                                              .where(
                                                'statut',
                                                isEqualTo: true,
                                              ),
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
                                      int rowCount = snapshot.data!;

                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (rowCount != 0)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 5.0, 3.0),
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
                                                    _model.showSportFilter =
                                                        'hockey';
                                                    safeSetState(() {});
                                                  },
                                                  child: Container(
                                                    width: 55.0,
                                                    height: 27.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent3,
                                                          offset: Offset(
                                                            0.0,
                                                            2.0,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color: valueOrDefault<
                                                            Color>(
                                                          currentUserDocument
                                                              ?.color1,
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      3.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Icon(
                                                            Icons.sports_hockey,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 25.0,
                                                          ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            rowCount.toString(),
                                                            '00',
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
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      );
                                    },
                                  ),
                                  FutureBuilder<int>(
                                    future: queryEventsRecordCount(
                                      queryBuilder: (eventsRecord) =>
                                          eventsRecord
                                              .where(
                                                'date',
                                                isEqualTo: _model
                                                    .calendarSelectedDay?.start,
                                              )
                                              .where(
                                                'sport_value',
                                                isEqualTo: 'tennis' != ''
                                                    ? 'tennis'
                                                    : null,
                                              )
                                              .where(
                                                'statut',
                                                isEqualTo: true,
                                              ),
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
                                      int rowCount = snapshot.data!;

                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (rowCount != 0)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 5.0, 3.0),
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
                                                    _model.showSportFilter =
                                                        'tennis';
                                                    safeSetState(() {});
                                                  },
                                                  child: Container(
                                                    width: 55.0,
                                                    height: 27.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent3,
                                                          offset: Offset(
                                                            0.0,
                                                            2.0,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color: valueOrDefault<
                                                            Color>(
                                                          currentUserDocument
                                                              ?.color1,
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Row(
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
                                                          child: Icon(
                                                            Icons
                                                                .sports_baseball,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .accent1,
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            rowCount.toString(),
                                                            '00',
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
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      );
                                    },
                                  ),
                                  FutureBuilder<int>(
                                    future: queryEventsRecordCount(
                                      queryBuilder: (eventsRecord) =>
                                          eventsRecord
                                              .where(
                                                'date',
                                                isEqualTo: _model
                                                    .calendarSelectedDay?.start,
                                              )
                                              .where(
                                                'sport_value',
                                                isEqualTo: 'boxe' != ''
                                                    ? 'boxe'
                                                    : null,
                                              )
                                              .where(
                                                'statut',
                                                isEqualTo: true,
                                              ),
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
                                      int rowCount = snapshot.data!;

                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (rowCount != 0)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 5.0, 3.0),
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
                                                    _model.showSportFilter =
                                                        'boxe';
                                                    safeSetState(() {});
                                                  },
                                                  child: Container(
                                                    width: 55.0,
                                                    height: 27.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent3,
                                                          offset: Offset(
                                                            0.0,
                                                            2.0,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color: valueOrDefault<
                                                            Color>(
                                                          currentUserDocument
                                                              ?.color1,
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Row(
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
                                                          child: Icon(
                                                            Icons
                                                                .sports_mma_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 25.0,
                                                          ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            rowCount.toString(),
                                                            '00',
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
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      );
                                    },
                                  ),
                                  FutureBuilder<int>(
                                    future: queryEventsRecordCount(
                                      queryBuilder: (eventsRecord) =>
                                          eventsRecord
                                              .where(
                                                'date',
                                                isEqualTo: _model
                                                    .calendarSelectedDay?.start,
                                              )
                                              .where(
                                                'sport_value',
                                                isEqualTo:
                                                    'mma' != '' ? 'mma' : null,
                                              )
                                              .where(
                                                'statut',
                                                isEqualTo: true,
                                              ),
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
                                      int rowCount = snapshot.data!;

                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (rowCount != 0)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 5.0, 3.0),
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
                                                    _model.showSportFilter =
                                                        'mma';
                                                    safeSetState(() {});
                                                  },
                                                  child: Container(
                                                    width: 55.0,
                                                    height: 27.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent3,
                                                          offset: Offset(
                                                            0.0,
                                                            2.0,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color: valueOrDefault<
                                                            Color>(
                                                          currentUserDocument
                                                              ?.color1,
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Row(
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
                                                          child: Icon(
                                                            Icons
                                                                .sports_mma_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 25.0,
                                                          ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            rowCount.toString(),
                                                            '00',
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
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      );
                                    },
                                  ),
                                  FutureBuilder<int>(
                                    future: queryEventsRecordCount(
                                      queryBuilder: (eventsRecord) =>
                                          eventsRecord
                                              .where(
                                                'date',
                                                isEqualTo: _model
                                                    .calendarSelectedDay?.start,
                                              )
                                              .where(
                                                'sport_value',
                                                isEqualTo: 'sports.meca' != ''
                                                    ? 'sports.meca'
                                                    : null,
                                              )
                                              .where(
                                                'statut',
                                                isEqualTo: true,
                                              ),
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
                                      int rowCount = snapshot.data!;

                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (rowCount != 0)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 5.0, 3.0),
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
                                                    _model.showSportFilter =
                                                        'sports.meca';
                                                    safeSetState(() {});
                                                  },
                                                  child: Container(
                                                    width: 55.0,
                                                    height: 27.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent3,
                                                          offset: Offset(
                                                            0.0,
                                                            2.0,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color: valueOrDefault<
                                                            Color>(
                                                          currentUserDocument
                                                              ?.color1,
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, -1.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        6.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child: Icon(
                                                              Icons
                                                                  .sports_motorsports_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 25.0,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            rowCount.toString(),
                                                            '00',
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
                                                      ],
                                                    ),
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
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -2.98),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => FlutterFlowCalendar(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        iconColor: valueOrDefault<Color>(
                                          currentUserDocument?.color1,
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                        weekFormat: true,
                                        weekStartsMonday: true,
                                        rowHeight: 40.0,
                                        onChange:
                                            (DateTimeRange? newSelectedDate) {
                                          safeSetState(() =>
                                              _model.calendarSelectedDay =
                                                  newSelectedDate);
                                        },
                                        titleStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelSmallIsCustom,
                                            ),
                                        dayOfWeekStyle: FlutterFlowTheme.of(
                                                context)
                                            .labelSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmallFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelSmallIsCustom,
                                            ),
                                        dateStyle: FlutterFlowTheme.of(context)
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
                                        selectedDateStyle: FlutterFlowTheme.of(
                                                context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .success,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .titleSmallIsCustom,
                                            ),
                                        inactiveDateStyle: FlutterFlowTheme.of(
                                                context)
                                            .labelSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmallFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelSmallIsCustom,
                                            ),
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Container(
                                            width: 190.0,
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            child: Visibility(
                                              visible: _model.showSportFilter !=
                                                      null &&
                                                  _model.showSportFilter != '',
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
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
                                                      _model.showSportFilter =
                                                          null;
                                                      safeSetState(() {});
                                                    },
                                                    child: FaIcon(
                                                      FontAwesomeIcons.eyeSlash,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      size: 30.0,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        if (_model
                                                                .showSportFilter ==
                                                            'football')
                                                          Icon(
                                                            Icons
                                                                .sports_soccer_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 25.0,
                                                          ),
                                                        if (_model
                                                                .showSportFilter ==
                                                            'basketball')
                                                          Icon(
                                                            Icons
                                                                .sports_basketball,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .warning,
                                                            size: 25.0,
                                                          ),
                                                        if (_model
                                                                .showSportFilter ==
                                                            'mma')
                                                          Icon(
                                                            Icons
                                                                .sports_mma_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 25.0,
                                                          ),
                                                        if (_model
                                                                .showSportFilter ==
                                                            'sports.meca')
                                                          Icon(
                                                            Icons
                                                                .sports_motorsports_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 25.0,
                                                          ),
                                                        if (_model
                                                                .showSportFilter ==
                                                            'tennis')
                                                          Icon(
                                                            Icons
                                                                .sports_baseball,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .accent1,
                                                            size: 25.0,
                                                          ),
                                                        if (_model
                                                                .showSportFilter ==
                                                            'rugby')
                                                          Icon(
                                                            Icons
                                                                .sports_rugby_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 25.0,
                                                          ),
                                                        if (_model
                                                                .showSportFilter ==
                                                            'hockey')
                                                          Icon(
                                                            Icons.sports_hockey,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 25.0,
                                                          ),
                                                        if (_model
                                                                .showSportFilter ==
                                                            'boxe')
                                                          Icon(
                                                            Icons
                                                                .sports_mma_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 25.0,
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
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
                          AuthUserStreamWidget(
                            builder: (context) => Divider(
                              thickness: 1.0,
                              color: valueOrDefault<Color>(
                                currentUserDocument?.color2,
                                FlutterFlowTheme.of(context)
                                    .secondaryBackground,
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
                      padding: EdgeInsetsDirectional.fromSTEB(
                          10.0, 220.0, 10.0, 50.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (_model.calendarSelectedDay != null)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 50.0),
                                child: StreamBuilder<List<EventsRecord>>(
                                  stream: queryEventsRecord(
                                    queryBuilder: (eventsRecord) => eventsRecord
                                        .where(
                                          'date',
                                          isEqualTo:
                                              _model.calendarSelectedDay?.start,
                                        )
                                        .where(
                                          'sport_value',
                                          isEqualTo:
                                              _model.showSportFilter != ''
                                                  ? _model.showSportFilter
                                                  : null,
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
                                          visible:
                                              columnEventsEventsRecord.statut ==
                                                  true,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      width: 100.0,
                                                      height: 30.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          if (columnEventsEventsRecord
                                                                  .sportValue ==
                                                              'football')
                                                            Icon(
                                                              Icons
                                                                  .sports_soccer_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          if (columnEventsEventsRecord
                                                                  .sportValue ==
                                                              'hockey')
                                                            Icon(
                                                              Icons
                                                                  .sports_hockey,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          if (columnEventsEventsRecord
                                                                  .sportValue ==
                                                              'tennis')
                                                            Icon(
                                                              Icons
                                                                  .sports_baseball,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                          if (columnEventsEventsRecord
                                                                  .sportValue ==
                                                              'basketball')
                                                            Icon(
                                                              Icons
                                                                  .sports_basketball,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .warning,
                                                              size: 24.0,
                                                            ),
                                                          if (columnEventsEventsRecord
                                                                  .sportValue ==
                                                              'mma')
                                                            Icon(
                                                              Icons
                                                                  .sports_mma_outlined,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          if (columnEventsEventsRecord
                                                                  .sportValue ==
                                                              'boxe')
                                                            Icon(
                                                              Icons
                                                                  .sports_mma_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          if (columnEventsEventsRecord
                                                                  .sportValue ==
                                                              'rugby')
                                                            Icon(
                                                              Icons
                                                                  .sports_rugby_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          if (columnEventsEventsRecord
                                                                  .sportValue ==
                                                              'sports.meca')
                                                            Icon(
                                                              Icons
                                                                  .sports_motorsports_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
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
                                                            ':',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      width: 100.0,
                                                      height: 30.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    3.0,
                                                                    0.0),
                                                        child: InkWell(
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
                                                              LeaguEventsListWidget
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
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              if ((columnEventsEventsRecord.leagueValue == 'euro.league') ||
                                                                  (columnEventsEventsRecord
                                                                          .leagueValue ==
                                                                      'champions.cup') ||
                                                                  (columnEventsEventsRecord
                                                                          .leagueValue ==
                                                                      'champions.league') ||
                                                                  (columnEventsEventsRecord
                                                                          .leagueValue ==
                                                                      'europa.league') ||
                                                                  (columnEventsEventsRecord
                                                                          .leagueValue ==
                                                                      'conference.league'))
                                                                Container(
                                                                  width: 35.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                  ),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/Europ.TST.jpg',
                                                                      width:
                                                                          35.0,
                                                                      height:
                                                                          25.0,
                                                                      fit: BoxFit
                                                                          .fitHeight,
                                                                    ),
                                                                  ),
                                                                ),
                                                              if ((columnEventsEventsRecord
                                                                          .leagueValue ==
                                                                      'ligue.1') ||
                                                                  (columnEventsEventsRecord
                                                                          .leagueValue ==
                                                                      'top.14'))
                                                                Container(
                                                                  width: 35.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                  ),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/France.TST.jpg',
                                                                      width:
                                                                          35.0,
                                                                      height:
                                                                          25.0,
                                                                      fit: BoxFit
                                                                          .fitWidth,
                                                                    ),
                                                                  ),
                                                                ),
                                                              if (columnEventsEventsRecord
                                                                      .leagueValue ==
                                                                  'serie.a')
                                                                Container(
                                                                  width: 35.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6.0),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/Italie.TST.jpg',
                                                                        width:
                                                                            35.0,
                                                                        height:
                                                                            25.0,
                                                                        fit: BoxFit
                                                                            .fitWidth,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              if (columnEventsEventsRecord
                                                                      .leagueValue ==
                                                                  'laliga')
                                                                Container(
                                                                  width: 35.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                  ),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/Espana.TST.jpeg',
                                                                      width:
                                                                          35.0,
                                                                      height:
                                                                          25.0,
                                                                      fit: BoxFit
                                                                          .fitWidth,
                                                                    ),
                                                                  ),
                                                                ),
                                                              if (columnEventsEventsRecord
                                                                      .leagueValue ==
                                                                  'bundesliga')
                                                                Container(
                                                                  width: 35.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                  ),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/Deutsch.TST.jpeg',
                                                                      width:
                                                                          35.0,
                                                                      height:
                                                                          25.0,
                                                                      fit: BoxFit
                                                                          .fitWidth,
                                                                    ),
                                                                  ),
                                                                ),
                                                              if ((columnEventsEventsRecord.leagueValue == 'nba') ||
                                                                  (columnEventsEventsRecord
                                                                          .leagueValue ==
                                                                      'ufc') ||
                                                                  (columnEventsEventsRecord
                                                                          .leagueValue ==
                                                                      'nhl'))
                                                                Container(
                                                                  width: 35.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                  ),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/USA.TST.jpg',
                                                                      width:
                                                                          35.0,
                                                                      height:
                                                                          25.0,
                                                                      fit: BoxFit
                                                                          .fitWidth,
                                                                    ),
                                                                  ),
                                                                ),
                                                              if ((columnEventsEventsRecord.sportValue == 'tennis') ||
                                                                  (columnEventsEventsRecord
                                                                          .leagueValue ==
                                                                      'autres') ||
                                                                  (columnEventsEventsRecord
                                                                          .leagueValue ==
                                                                      'autres.france'))
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          3.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    width: 28.0,
                                                                    height:
                                                                        25.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6.0),
                                                                      shape: BoxShape
                                                                          .rectangle,
                                                                    ),
                                                                    child:
                                                                        Visibility(
                                                                      visible: columnEventsEventsRecord.week !=
                                                                              '',
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            -1.0,
                                                                            1.0),
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            columnEventsEventsRecord.week,
                                                                            'W',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              if (columnEventsEventsRecord
                                                                      .leagueValue ==
                                                                  'premier.league')
                                                                Container(
                                                                  width: 35.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                  ),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/England.TST.jpg',
                                                                      width:
                                                                          35.0,
                                                                      height:
                                                                          25.0,
                                                                      fit: BoxFit
                                                                          .fitWidth,
                                                                    ),
                                                                  ),
                                                                ),
                                                              if ((columnEventsEventsRecord.leagueValue == 'moto.gp') ||
                                                                  (columnEventsEventsRecord
                                                                          .leagueValue ==
                                                                      'mx.gp') ||
                                                                  (columnEventsEventsRecord
                                                                          .leagueValue ==
                                                                      'world.superbike') ||
                                                                  (columnEventsEventsRecord
                                                                          .leagueValue ==
                                                                      'formule.1') ||
                                                                  (columnEventsEventsRecord
                                                                          .leagueValue ==
                                                                      'wta') ||
                                                                  (columnEventsEventsRecord
                                                                          .leagueValue ==
                                                                      'atp'))
                                                                Container(
                                                                  width: 25.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                  ),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/World.TST.png',
                                                                      width:
                                                                          25.0,
                                                                      height:
                                                                          25.0,
                                                                      fit: BoxFit
                                                                          .fitHeight,
                                                                    ),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      if (columnEventsEventsRecord
                                                              .sportValue !=
                                                          'sports.meca')
                                                        StreamBuilder<
                                                            TeamsRecord>(
                                                          stream: TeamsRecord
                                                              .getDocument(
                                                                  columnEventsEventsRecord
                                                                      .teamdomRef!),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
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

                                                            final contDomTeamsRecord =
                                                                snapshot.data!;

                                                            return Container(
                                                              width: 155.0,
                                                              height: 60.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          55.0,
                                                                      height:
                                                                          35.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(0.0),
                                                                      ),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(6.0),
                                                                        child: Image
                                                                            .network(
                                                                          contDomTeamsRecord
                                                                              .logo,
                                                                          width:
                                                                              55.0,
                                                                          height:
                                                                              35.0,
                                                                          fit: BoxFit
                                                                              .scaleDown,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        contDomTeamsRecord
                                                                            .name,
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelSmall
                                                                            .override(
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
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
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
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                EventPageAdd2BetWidget
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
                                                                  'myBetRef':
                                                                      serializeParam(
                                                                    widget
                                                                        .myBetRef,
                                                                    ParamType
                                                                        .DocumentReference,
                                                                  ),
                                                                }.withoutNulls,
                                                                extra: <String,
                                                                    dynamic>{
                                                                  '__transition_info__':
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
                                                                  .stadium_rounded,
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
                                                      ),
                                                      if (columnEventsEventsRecord
                                                              .sportValue !=
                                                          'sports.meca')
                                                        StreamBuilder<
                                                            TeamsRecord>(
                                                          stream: TeamsRecord
                                                              .getDocument(
                                                                  columnEventsEventsRecord
                                                                      .teamextRef!),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
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

                                                            final contExtTeamsRecord =
                                                                snapshot.data!;

                                                            return Container(
                                                              width: 155.0,
                                                              height: 60.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          55.0,
                                                                      height:
                                                                          35.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(0.0),
                                                                      ),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(6.0),
                                                                        child: Image
                                                                            .network(
                                                                          contExtTeamsRecord
                                                                              .logo,
                                                                          width:
                                                                              55.0,
                                                                          height:
                                                                              35.0,
                                                                          fit: BoxFit
                                                                              .scaleDown,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        contExtTeamsRecord
                                                                            .name,
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelSmall
                                                                            .override(
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
                                                  if (columnEventsEventsRecord
                                                          .sportValue ==
                                                      'sports.meca')
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: InkWell(
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
                                                              EventPageAdd2BetWidget
                                                                  .routeName,
                                                              queryParameters: {
                                                                'eventRef':
                                                                    serializeParam(
                                                                  columnEventsEventsRecord
                                                                      .reference,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                                'myBetRef':
                                                                    serializeParam(
                                                                  widget
                                                                      .myBetRef,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                '__transition_info__':
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
                                                          child: Text(
                                                            columnEventsEventsRecord
                                                                .week,
                                                            textAlign:
                                                                TextAlign.end,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmallIsCustom,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  AuthUserStreamWidget(
                                                    builder: (context) =>
                                                        Divider(
                                                      thickness: 1.0,
                                                      color:
                                                          valueOrDefault<Color>(
                                                        currentUserDocument
                                                            ?.color2,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        );
                                      }),
                                    );
                                  },
                                ),
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
                        color: FlutterFlowTheme.of(context).secondaryBackground,
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
      ),
    );
  }
}
