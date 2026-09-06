import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'my_teams_list_events_model.dart';
export 'my_teams_list_events_model.dart';

class MyTeamsListEventsWidget extends StatefulWidget {
  const MyTeamsListEventsWidget({super.key});

  static String routeName = 'MyTeamsListEvents';
  static String routePath = '/myTeamsListEvents';

  @override
  State<MyTeamsListEventsWidget> createState() =>
      _MyTeamsListEventsWidgetState();
}

class _MyTeamsListEventsWidgetState extends State<MyTeamsListEventsWidget> {
  late MyTeamsListEventsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyTeamsListEventsModel());
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                                        '__transition_info__': TransitionInfo(
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
                                    color: valueOrDefault<Color>(
                                      currentUserDocument?.color1,
                                      FlutterFlowTheme.of(context).primaryText,
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
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                                    FlutterFlowTheme.of(context)
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
                                                    FlutterFlowTheme.of(context)
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
                                            currentUserDocument?.langage, '') ==
                                        'deutsch')
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          'Veranstaltungen',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
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
                                            currentUserDocument?.langage, '') ==
                                        'espanol')
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          'Eventos',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
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
                                            currentUserDocument?.langage, '') ==
                                        'italiano')
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          'Eventi',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
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
                                            currentUserDocument?.langage, '') ==
                                        'portugues')
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          'Eventos',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
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
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 5.0, 0.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            ListEventsWidget.routeName,
                                            extra: <String, dynamic>{
                                              '__transition_info__':
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .rightToLeft,
                                                duration:
                                                    Duration(milliseconds: 400),
                                              ),
                                            },
                                          );
                                        },
                                        child: FaIcon(
                                          FontAwesomeIcons.clock,
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
                            ],
                          ),
                        ],
                      ),
                      AuthUserStreamWidget(
                        builder: (context) => Divider(
                          thickness: 1.0,
                          color: valueOrDefault<Color>(
                            currentUserDocument?.color2,
                            FlutterFlowTheme.of(context).secondaryBackground,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 50.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 50.0),
                            child: StreamBuilder<List<MyTeamslikeRecord>>(
                              stream: queryMyTeamslikeRecord(
                                parent: currentUserReference,
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
                                          FlutterFlowTheme.of(context).accent4,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<MyTeamslikeRecord>
                                    columnMyTeamslikeRecordList =
                                    snapshot.data!;

                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      columnMyTeamslikeRecordList.length,
                                      (columnIndex) {
                                    final columnMyTeamslikeRecord =
                                        columnMyTeamslikeRecordList[
                                            columnIndex];
                                    return StreamBuilder<TeamsRecord>(
                                      stream: TeamsRecord.getDocument(
                                          columnMyTeamslikeRecord
                                              .teams.firstOrNull!),
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

                                        final columnTeamsRecord =
                                            snapshot.data!;

                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (columnTeamsRecord.sportValue !=
                                                'sports.meca')
                                              StreamBuilder<
                                                  List<TeamEventsRecord>>(
                                                stream: queryTeamEventsRecord(
                                                  parent: columnTeamsRecord
                                                      .reference,
                                                  queryBuilder:
                                                      (teamEventsRecord) =>
                                                          teamEventsRecord
                                                              .orderBy(
                                                                  'started_time',
                                                                  descending:
                                                                      true),
                                                  limit: 15,
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
                                                  List<TeamEventsRecord>
                                                      columnEventsTeamEventsRecordList =
                                                      snapshot.data!;

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: List.generate(
                                                        columnEventsTeamEventsRecordList
                                                            .length,
                                                        (columnEventsIndex) {
                                                      final columnEventsTeamEventsRecord =
                                                          columnEventsTeamEventsRecordList[
                                                              columnEventsIndex];
                                                      return StreamBuilder<
                                                          EventsRecord>(
                                                        stream: EventsRecord
                                                            .getDocument(
                                                                columnEventsTeamEventsRecord
                                                                    .events!),
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

                                                          final columnEventEventsRecord =
                                                              snapshot.data!;

                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              if (columnEventEventsRecord
                                                                      .statut ==
                                                                  true)
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 10.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (columnEventEventsRecord.statut == true)
                                                                                      Container(
                                                                                        width: 20.0,
                                                                                        height: 20.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).success,
                                                                                          shape: BoxShape.circle,
                                                                                        ),
                                                                                      ),
                                                                                    if (columnEventEventsRecord.statut == false)
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
                                                                                valueOrDefault<String>(
                                                                                  dateTimeFormat(
                                                                                    "d/M/y",
                                                                                    columnEventEventsRecord.date,
                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                  ),
                                                                                  '00/00/0000',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                    ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 3.0, 0.0),
                                                                                child: Text(
                                                                                  '-',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                valueOrDefault<String>(
                                                                                  columnEventEventsRecord.hour.toString(),
                                                                                  '00',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                    ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
                                                                                child: Text(
                                                                                  ':',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                valueOrDefault<String>(
                                                                                  functions.zeroTo00(columnEventEventsRecord.minute),
                                                                                  '00',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                3.0,
                                                                                0.0),
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                context.pushNamed(
                                                                                  LeaguEventsListWidget.routeName,
                                                                                  queryParameters: {
                                                                                    'eventRef': serializeParam(
                                                                                      columnEventEventsRecord.reference,
                                                                                      ParamType.DocumentReference,
                                                                                    ),
                                                                                  }.withoutNulls,
                                                                                );
                                                                              },
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                                children: [
                                                                                  if ((columnEventEventsRecord.leagueValue == 'euro.league') || (columnEventEventsRecord.leagueValue == 'champions.cup') || (columnEventEventsRecord.leagueValue == 'champions.league') || (columnEventEventsRecord.leagueValue == 'europa.league') || (columnEventEventsRecord.leagueValue == 'conference.league'))
                                                                                    Container(
                                                                                      width: 35.0,
                                                                                      height: 25.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        borderRadius: BorderRadius.circular(0.0),
                                                                                        shape: BoxShape.rectangle,
                                                                                      ),
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(6.0),
                                                                                        child: Image.asset(
                                                                                          'assets/images/Europ.TST.jpg',
                                                                                          width: 35.0,
                                                                                          height: 25.0,
                                                                                          fit: BoxFit.fitHeight,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  if ((columnEventEventsRecord.leagueValue == 'ligue.1') || (columnEventEventsRecord.leagueValue == 'top.14'))
                                                                                    Container(
                                                                                      width: 35.0,
                                                                                      height: 25.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        borderRadius: BorderRadius.circular(0.0),
                                                                                        shape: BoxShape.rectangle,
                                                                                      ),
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(6.0),
                                                                                        child: Image.asset(
                                                                                          'assets/images/France.TST.jpg',
                                                                                          width: 35.0,
                                                                                          height: 25.0,
                                                                                          fit: BoxFit.fitWidth,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  if (columnEventEventsRecord.leagueValue == 'serie.a')
                                                                                    Container(
                                                                                      width: 35.0,
                                                                                      height: 25.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        borderRadius: BorderRadius.circular(0.0),
                                                                                        shape: BoxShape.rectangle,
                                                                                      ),
                                                                                      child: Align(
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(6.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Italie.TST.jpg',
                                                                                            width: 35.0,
                                                                                            height: 25.0,
                                                                                            fit: BoxFit.fitWidth,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  if (columnEventEventsRecord.leagueValue == 'laliga')
                                                                                    Container(
                                                                                      width: 35.0,
                                                                                      height: 25.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        borderRadius: BorderRadius.circular(0.0),
                                                                                        shape: BoxShape.rectangle,
                                                                                      ),
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(6.0),
                                                                                        child: Image.asset(
                                                                                          'assets/images/Espana.TST.jpeg',
                                                                                          width: 35.0,
                                                                                          height: 25.0,
                                                                                          fit: BoxFit.fitWidth,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  if (columnEventEventsRecord.leagueValue == 'bundesliga')
                                                                                    Container(
                                                                                      width: 35.0,
                                                                                      height: 25.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        borderRadius: BorderRadius.circular(0.0),
                                                                                        shape: BoxShape.rectangle,
                                                                                      ),
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(6.0),
                                                                                        child: Image.asset(
                                                                                          'assets/images/Deutsch.TST.jpeg',
                                                                                          width: 35.0,
                                                                                          height: 25.0,
                                                                                          fit: BoxFit.fitWidth,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  if ((columnEventEventsRecord.leagueValue == 'nba') || (columnEventEventsRecord.leagueValue == 'ufc') || (columnEventEventsRecord.leagueValue == 'nhl'))
                                                                                    Container(
                                                                                      width: 35.0,
                                                                                      height: 25.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        borderRadius: BorderRadius.circular(0.0),
                                                                                        shape: BoxShape.rectangle,
                                                                                      ),
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(6.0),
                                                                                        child: Image.asset(
                                                                                          'assets/images/USA.TST.jpg',
                                                                                          width: 35.0,
                                                                                          height: 25.0,
                                                                                          fit: BoxFit.fitWidth,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  if ((columnEventEventsRecord.sportValue == 'tennis') || (columnEventEventsRecord.leagueValue == 'autres') || (columnEventEventsRecord.leagueValue == 'autres.france'))
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
                                                                                      child: Container(
                                                                                        width: 28.0,
                                                                                        height: 25.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          borderRadius: BorderRadius.circular(6.0),
                                                                                          shape: BoxShape.rectangle,
                                                                                        ),
                                                                                        child: Visibility(
                                                                                          visible: columnEventEventsRecord.week != '',
                                                                                          child: Align(
                                                                                            alignment: AlignmentDirectional(-1.0, 1.0),
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                columnEventEventsRecord.week,
                                                                                                'W',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  if (columnEventEventsRecord.leagueValue == 'premier.league')
                                                                                    Container(
                                                                                      width: 35.0,
                                                                                      height: 25.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        borderRadius: BorderRadius.circular(0.0),
                                                                                        shape: BoxShape.rectangle,
                                                                                      ),
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(6.0),
                                                                                        child: Image.asset(
                                                                                          'assets/images/England.TST.jpg',
                                                                                          width: 35.0,
                                                                                          height: 25.0,
                                                                                          fit: BoxFit.fitWidth,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  if ((columnEventEventsRecord.leagueValue == 'moto.gp') || (columnEventEventsRecord.leagueValue == 'mx.gp') || (columnEventEventsRecord.leagueValue == 'world.superbike') || (columnEventEventsRecord.leagueValue == 'formule.1') || (columnEventEventsRecord.leagueValue == 'wta') || (columnEventEventsRecord.leagueValue == 'atp'))
                                                                                    Container(
                                                                                      width: 25.0,
                                                                                      height: 25.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        borderRadius: BorderRadius.circular(0.0),
                                                                                        shape: BoxShape.rectangle,
                                                                                      ),
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(0.0),
                                                                                        child: Image.asset(
                                                                                          'assets/images/World.TST.png',
                                                                                          width: 25.0,
                                                                                          height: 25.0,
                                                                                          fit: BoxFit.fitHeight,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          StreamBuilder<
                                                                              TeamsRecord>(
                                                                            stream:
                                                                                TeamsRecord.getDocument(columnEventEventsRecord.teamdomRef!),
                                                                            builder:
                                                                                (context, snapshot) {
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

                                                                              final contDomTeamsRecord = snapshot.data!;

                                                                              return Container(
                                                                                width: 155.0,
                                                                                height: 60.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                ),
                                                                                child: Align(
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                                                                        child: InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            context.pushNamed(
                                                                                              TeamPageWidget.routeName,
                                                                                              queryParameters: {
                                                                                                'teamRef': serializeParam(
                                                                                                  contDomTeamsRecord.reference,
                                                                                                  ParamType.DocumentReference,
                                                                                                ),
                                                                                              }.withoutNulls,
                                                                                            );
                                                                                          },
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
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ),
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                child: AuthUserStreamWidget(
                                                                                  builder: (context) => InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      context.pushNamed(
                                                                                        EventPageWidget.routeName,
                                                                                        queryParameters: {
                                                                                          'eventRef': serializeParam(
                                                                                            columnEventEventsRecord.reference,
                                                                                            ParamType.DocumentReference,
                                                                                          ),
                                                                                        }.withoutNulls,
                                                                                        extra: <String, dynamic>{
                                                                                          '__transition_info__': TransitionInfo(
                                                                                            hasTransition: true,
                                                                                            transitionType: PageTransitionType.bottomToTop,
                                                                                            duration: Duration(milliseconds: 400),
                                                                                          ),
                                                                                        },
                                                                                      );
                                                                                    },
                                                                                    child: Icon(
                                                                                      Icons.stadium_rounded,
                                                                                      color: valueOrDefault<Color>(
                                                                                        currentUserDocument?.color1,
                                                                                        FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                      size: 30.0,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          StreamBuilder<
                                                                              TeamsRecord>(
                                                                            stream:
                                                                                TeamsRecord.getDocument(columnEventEventsRecord.teamextRef!),
                                                                            builder:
                                                                                (context, snapshot) {
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

                                                                              final contExtTeamsRecord = snapshot.data!;

                                                                              return Container(
                                                                                width: 155.0,
                                                                                height: 60.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                ),
                                                                                child: Align(
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                                                                        child: InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            context.pushNamed(
                                                                                              TeamPageWidget.routeName,
                                                                                              queryParameters: {
                                                                                                'teamRef': serializeParam(
                                                                                                  contExtTeamsRecord.reference,
                                                                                                  ParamType.DocumentReference,
                                                                                                ),
                                                                                              }.withoutNulls,
                                                                                            );
                                                                                          },
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
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                155.0,
                                                                            height:
                                                                                30.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                              child: Text(
                                                                                valueOrDefault<String>(
                                                                                  columnEventEventsRecord.scoreDom.toString(),
                                                                                  '0',
                                                                                ),
                                                                                textAlign: TextAlign.end,
                                                                                style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                155.0,
                                                                            height:
                                                                                30.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                              child: Text(
                                                                                valueOrDefault<String>(
                                                                                  columnEventEventsRecord.scoreExt.toString(),
                                                                                  '0',
                                                                                ),
                                                                                textAlign: TextAlign.end,
                                                                                style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    AuthUserStreamWidget(
                                                                      builder:
                                                                          (context) =>
                                                                              Divider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: valueOrDefault<
                                                                            Color>(
                                                                          currentUserDocument
                                                                              ?.color2,
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                          ],
                                        );
                                      },
                                    );
                                  }),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 20.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        TeamsListWidget.routeName,
                                        extra: <String, dynamic>{
                                          '__transition_info__': TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.bottomToTop,
                                            duration:
                                                Duration(milliseconds: 400),
                                          ),
                                        },
                                      );
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                              'Vos équipes preferées n\'ont\npas d\'évènements à venir\nRechercher des équipes',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLargeFamily,
                                                        fontSize: 16.0,
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
                                              'Your favorite teams have no\nupcoming events.\nSearch for teams',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLargeFamily,
                                                        fontSize: 16.0,
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
                                              'Ihre Lieblingsteams haben keine \nanstehenden Veranstaltungen.\nTeams suchen',
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLargeFamily,
                                                        fontSize: 16.0,
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
                                              'Tus equipos favoritos no tienen\neventos próximos.\nBuscar equipos',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLargeFamily,
                                                        fontSize: 16.0,
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
                                              'Le tue squadre preferite non\nhanno eventi imminenti.\nCerca squadre',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLargeFamily,
                                                        fontSize: 16.0,
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
                                              'As suas equipas favoritas\nnão têm eventos futuros.\nProcure por equipas',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLargeFamily,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .labelLargeIsCustom,
                                                      ),
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
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 10.0, 0.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          TeamsListWidget.routeName,
                                          extra: <String, dynamic>{
                                            '__transition_info__':
                                                TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .bottomToTop,
                                              duration:
                                                  Duration(milliseconds: 400),
                                            ),
                                          },
                                        );
                                      },
                                      child: Icon(
                                        Icons.security_rounded,
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
                          iOSAdUnitID: 'ca-app-pub-5890797816389993/8936699392',
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
  }
}
