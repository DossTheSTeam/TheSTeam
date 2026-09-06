import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'leagu_events_list_model.dart';
export 'leagu_events_list_model.dart';

class LeaguEventsListWidget extends StatefulWidget {
  const LeaguEventsListWidget({
    super.key,
    required this.eventRef,
  });

  final DocumentReference? eventRef;

  static String routeName = 'LeaguEventsList';
  static String routePath = '/leaguEventsList';

  @override
  State<LeaguEventsListWidget> createState() => _LeaguEventsListWidgetState();
}

class _LeaguEventsListWidgetState extends State<LeaguEventsListWidget> {
  late LeaguEventsListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LeaguEventsListModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<EventsRecord>(
      stream: EventsRecord.getDocument(widget.eventRef!),
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

        final leaguEventsListEventsRecord = snapshot.data!;

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
              body: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Container(
                      height: 200.0,
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                51.0, 0.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 199.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    if ((leaguEventsListEventsRecord
                                                .leagueValue ==
                                            'champions.league') ||
                                        (leaguEventsListEventsRecord
                                                .leagueValue ==
                                            'champions.cup') ||
                                        (leaguEventsListEventsRecord
                                                .leagueValue ==
                                            'euro.league') ||
                                        (leaguEventsListEventsRecord
                                                .leagueValue ==
                                            'europa.league') ||
                                        (leaguEventsListEventsRecord
                                                .leagueValue ==
                                            'conference.league'))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: 320.0,
                                          height: 200.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            borderRadius: BorderRadius.only(),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.asset(
                                              'assets/images/Europ.TST.jpg',
                                              width: 320.0,
                                              height: 200.0,
                                              fit: BoxFit.fitWidth,
                                              alignment: Alignment(0.0, -1.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    if ((leaguEventsListEventsRecord
                                                .leagueValue ==
                                            'ligue.1') ||
                                        (leaguEventsListEventsRecord
                                                .leagueValue ==
                                            'top.14'))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: 320.0,
                                          height: 200.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.asset(
                                              'assets/images/France.TST.jpg',
                                              width: 320.0,
                                              height: 200.0,
                                              fit: BoxFit.fitWidth,
                                              alignment: Alignment(0.0, 0.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (leaguEventsListEventsRecord
                                            .leagueValue ==
                                        'premier.league')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: 320.0,
                                          height: 200.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.only(),
                                              child: Image.asset(
                                                'assets/images/England.TST.jpg',
                                                width: 320.0,
                                                height: 200.0,
                                                fit: BoxFit.fitWidth,
                                                alignment: Alignment(0.0, 0.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (leaguEventsListEventsRecord
                                            .leagueValue ==
                                        'serie.a')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: 320.0,
                                          height: 200.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              child: Image.asset(
                                                'assets/images/Italie.TST.jpg',
                                                width: 320.0,
                                                height: 200.0,
                                                fit: BoxFit.fitHeight,
                                                alignment: Alignment(0.0, -1.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (leaguEventsListEventsRecord
                                            .leagueValue ==
                                        'laliga')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: 320.0,
                                          height: 200.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.asset(
                                              'assets/images/Espana.TST.jpeg',
                                              width: 320.0,
                                              height: 200.0,
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (leaguEventsListEventsRecord
                                            .leagueValue ==
                                        'bundesliga')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: 320.0,
                                          height: 200.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.asset(
                                              'assets/images/Deutsch.TST.jpeg',
                                              width: 320.0,
                                              height: 200.0,
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                      ),
                                    if ((leaguEventsListEventsRecord.leagueValue == 'nba') ||
                                        (leaguEventsListEventsRecord
                                                .leagueValue ==
                                            'ufc') ||
                                        (leaguEventsListEventsRecord
                                                .leagueValue ==
                                            'nhl'))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: 320.0,
                                          height: 200.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              child: Image.asset(
                                                'assets/images/USA.TST.jpg',
                                                width: 320.0,
                                                height: 200.0,
                                                fit: BoxFit.fitWidth,
                                                alignment: Alignment(0.0, 0.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    if ((leaguEventsListEventsRecord
                                                .leagueValue ==
                                            'moto.gp') ||
                                        (leaguEventsListEventsRecord
                                                .leagueValue ==
                                            'mx.gp') ||
                                        (leaguEventsListEventsRecord
                                                .leagueValue ==
                                            'world.superbike') ||
                                        (leaguEventsListEventsRecord
                                                .leagueValue ==
                                            'formule.1') ||
                                        (leaguEventsListEventsRecord
                                                .leagueValue ==
                                            'atp') ||
                                        (leaguEventsListEventsRecord
                                                .leagueValue ==
                                            'wta'))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: 300.0,
                                          height: 200.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.asset(
                                              'assets/images/World.TST.png',
                                              width: 300.0,
                                              height: 200.0,
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                50.0, 0.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 200.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/photo-1434394354979-a235cd36269d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG1vdW50YWluc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                                  ).image,
                                ),
                                gradient: LinearGradient(
                                  colors: [
                                    FlutterFlowTheme.of(context).tertiary,
                                    FlutterFlowTheme.of(context)
                                        .primaryBackground
                                  ],
                                  stops: [0.0, 1.0],
                                  begin: AlignmentDirectional(0.0, -1.0),
                                  end: AlignmentDirectional(0, 1.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                50.0, 0.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 200.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    FlutterFlowTheme.of(context).tertiary,
                                    FlutterFlowTheme.of(context).tertiary,
                                    FlutterFlowTheme.of(context)
                                        .primaryBackground
                                  ],
                                  stops: [0.0, 0.5, 1.0],
                                  begin: AlignmentDirectional(1.0, 0.0),
                                  end: AlignmentDirectional(-1.0, 0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 30.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: AuthUserStreamWidget(
                                        builder: (context) =>
                                            FlutterFlowIconButton(
                                          borderColor: valueOrDefault<Color>(
                                            currentUserDocument?.color2,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          borderRadius: 50.0,
                                          borderWidth: 1.0,
                                          buttonSize: 50.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiary,
                                          icon: Icon(
                                            Icons.arrow_back_ios_new_rounded,
                                            color: valueOrDefault<Color>(
                                              currentUserDocument?.color1,
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                            ),
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            context.safePop();
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                if (true /* Warning: Trying to access variable not yet defined. */)
                                  FutureBuilder<List<MyNotificationsRecord>>(
                                    future: queryMyNotificationsRecordOnce(
                                      parent: currentUserReference,
                                      singleRecord: true,
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
                                      List<MyNotificationsRecord>
                                          rowNotifsMyNotificationsRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final rowNotifsMyNotificationsRecord =
                                          rowNotifsMyNotificationsRecordList
                                                  .isNotEmpty
                                              ? rowNotifsMyNotificationsRecordList
                                                  .first
                                              : null;

                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: AuthUserStreamWidget(
                                              builder: (context) => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    MyNotifsListWidget
                                                        .routeName,
                                                    extra: <String, dynamic>{
                                                      '__transition_info__':
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .rightToLeft,
                                                        duration: Duration(
                                                            milliseconds: 400),
                                                      ),
                                                    },
                                                  );
                                                },
                                                child: Icon(
                                                  Icons
                                                      .notifications_active_outlined,
                                                  color: valueOrDefault<Color>(
                                                    currentUserDocument?.color1,
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                  ),
                                                  size: 40.0,
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
                          Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                if ((valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            '') ||
                                    (valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        'francais'))
                                  AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      'Evénements',
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
                                if ((valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        'english') ||
                                    (valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        'american'))
                                  AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      'Events',
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
                                if (valueOrDefault(
                                        currentUserDocument?.langage, '') ==
                                    'deutsch')
                                  AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      'Veranstaltungen',
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
                                if (valueOrDefault(
                                        currentUserDocument?.langage, '') ==
                                    'espanol')
                                  AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      'Eventos',
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
                                if (valueOrDefault(
                                        currentUserDocument?.langage, '') ==
                                    'italiano')
                                  AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      'Eventi',
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
                                if (valueOrDefault(
                                        currentUserDocument?.langage, '') ==
                                    'portugues')
                                  AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      'Eventos',
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
                                      0.0, 3.0, 0.0, 0.0),
                                  child: Text(
                                    leaguEventsListEventsRecord.leagueValue,
                                    maxLines: 2,
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleSmallIsCustom,
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
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 200.0, 0.0, 50.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
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
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 50.0),
                                  child: StreamBuilder<List<EventsRecord>>(
                                    stream: queryEventsRecord(
                                      queryBuilder: (eventsRecord) =>
                                          eventsRecord
                                              .where(
                                                'league_value',
                                                isEqualTo:
                                                    leaguEventsListEventsRecord
                                                        .leagueValue,
                                              )
                                              .where(
                                                'sport_value',
                                                isEqualTo:
                                                    leaguEventsListEventsRecord
                                                        .sportValue,
                                              )
                                              .orderBy('date', descending: true)
                                              .orderBy('hour',
                                                  descending: true),
                                      limit: 15,
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
                                          columnEventsRecordList =
                                          snapshot.data!;

                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(
                                            columnEventsRecordList.length,
                                            (columnIndex) {
                                          final columnEventsRecord =
                                              columnEventsRecordList[
                                                  columnIndex];
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 3.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
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
                                                                      5.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              if (columnEventsRecord
                                                                      .statut ==
                                                                  true)
                                                                Container(
                                                                  width: 20.0,
                                                                  height: 20.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .success,
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                ),
                                                              if (columnEventsRecord
                                                                      .statut ==
                                                                  false)
                                                                Container(
                                                                  width: 20.0,
                                                                  height: 20.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                        Text(
                                                          dateTimeFormat(
                                                            "d/M/y",
                                                            columnEventsRecord
                                                                .date!,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
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
                                                                      3.0,
                                                                      0.0,
                                                                      3.0,
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
                                                          columnEventsRecord
                                                              .hour
                                                              .toString(),
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
                                                                columnEventsRecord
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
                                                        if ((columnEventsRecord.sportValue == 'tennis') ||
                                                            (columnEventsRecord
                                                                    .leagueValue ==
                                                                'autres') ||
                                                            (columnEventsRecord
                                                                    .leagueValue ==
                                                                'autres.france'))
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        3.0,
                                                                        3.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: 28.0,
                                                              height: 25.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            6.0),
                                                                shape: BoxShape
                                                                    .rectangle,
                                                              ),
                                                              child: Visibility(
                                                                visible: columnEventsRecord
                                                                            .week !=
                                                                        '',
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          1.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      columnEventsRecord
                                                                          .week,
                                                                      'W',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).labelLargeFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  if (columnEventsRecord
                                                          .sportValue !=
                                                      'sports.meca')
                                                    StreamBuilder<TeamsRecord>(
                                                      stream: TeamsRecord
                                                          .getDocument(
                                                              columnEventsRecord
                                                                  .teamdomRef!),
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

                                                        final contDomTeamsRecord =
                                                            snapshot.data!;

                                                        return Container(
                                                          width: 155.0,
                                                          height: 60.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
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
                                                                    context
                                                                        .pushNamed(
                                                                      TeamPageWidget
                                                                          .routeName,
                                                                      queryParameters:
                                                                          {
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
                                                                  child:
                                                                      Container(
                                                                    width: 55.0,
                                                                    height:
                                                                        35.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              0.0),
                                                                    ),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6.0),
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
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
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
                                                                      context
                                                                          .pushNamed(
                                                                        TeamPageWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'teamRef':
                                                                              serializeParam(
                                                                            contDomTeamsRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child: Text(
                                                                      contDomTeamsRecord
                                                                          .name,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      maxLines:
                                                                          2,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).labelSmallFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).labelSmallIsCustom,
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
                                                            context.pushNamed(
                                                              EventPageWidget
                                                                  .routeName,
                                                              queryParameters: {
                                                                'eventRef':
                                                                    serializeParam(
                                                                  columnEventsRecord
                                                                      .reference,
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
                                                    ],
                                                  ),
                                                  if (columnEventsRecord
                                                          .sportValue !=
                                                      'sports.meca')
                                                    StreamBuilder<TeamsRecord>(
                                                      stream: TeamsRecord
                                                          .getDocument(
                                                              columnEventsRecord
                                                                  .teamextRef!),
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

                                                        final contExtTeamsRecord =
                                                            snapshot.data!;

                                                        return Container(
                                                          width: 155.0,
                                                          height: 60.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
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
                                                                    context
                                                                        .pushNamed(
                                                                      TeamPageWidget
                                                                          .routeName,
                                                                      queryParameters:
                                                                          {
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
                                                                  child:
                                                                      Container(
                                                                    width: 55.0,
                                                                    height:
                                                                        35.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              0.0),
                                                                    ),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6.0),
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
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
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
                                                                      context
                                                                          .pushNamed(
                                                                        TeamPageWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'teamRef':
                                                                              serializeParam(
                                                                            contExtTeamsRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child: Text(
                                                                      contExtTeamsRecord
                                                                          .name,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      maxLines:
                                                                          2,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).labelSmallFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).labelSmallIsCustom,
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
                                              if ((columnEventsRecord
                                                          .seenScore ==
                                                      true) &&
                                                  (columnEventsRecord
                                                          .sportValue !=
                                                      'sports.meca'))
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Container(
                                                        width: 155.0,
                                                        height: 30.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            columnEventsRecord
                                                                .scoreDom
                                                                .toString(),
                                                            textAlign:
                                                                TextAlign.end,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMediumIsCustom,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Container(
                                                        width: 155.0,
                                                        height: 30.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            columnEventsRecord
                                                                .scoreExt
                                                                .toString(),
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMediumIsCustom,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              if (columnEventsRecord
                                                      .sportValue ==
                                                  'sports.meca')
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
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
                                                          EventPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'eventRef':
                                                                serializeParam(
                                                              columnEventsRecord
                                                                  .reference,
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
                                                        columnEventsRecord.week,
                                                        textAlign:
                                                            TextAlign.start,
                                                        maxLines: 2,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                          );
                                        }),
                                      );
                                    },
                                  ),
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
        );
      },
    );
  }
}
