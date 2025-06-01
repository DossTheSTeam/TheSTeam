import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/teams_fold/audio_fan_conference/audio_fan_conference_widget.dart';
import '/teams_fold/audio_member_conference/audio_member_conference_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'add_event_page_model.dart';
export 'add_event_page_model.dart';

class AddEventPageWidget extends StatefulWidget {
  const AddEventPageWidget({super.key});

  static String routeName = 'AddEventPage';
  static String routePath = '/addEventPage';

  @override
  State<AddEventPageWidget> createState() => _AddEventPageWidgetState();
}

class _AddEventPageWidgetState extends State<AddEventPageWidget> {
  late AddEventPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddEventPageModel());

    _model.numWeekFieldTextController ??= TextEditingController();
    _model.numWeekFieldFocusNode ??= FocusNode();
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
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
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
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (currentUserDocument?.audioTeam != null)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) =>
                                        StreamBuilder<TeamsRecord>(
                                      stream: TeamsRecord.getDocument(
                                          currentUserDocument!.audioTeam!),
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

                                        final rowTeamsRecord = snapshot.data!;

                                        return Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    TeamPageWidget.routeName,
                                                    queryParameters: {
                                                      'teamRef': serializeParam(
                                                        currentUserDocument
                                                            ?.audioTeam,
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
                                                                .bottomToTop,
                                                        duration: Duration(
                                                            milliseconds: 400),
                                                      ),
                                                    },
                                                  );
                                                },
                                                child: Container(
                                                  width: 65.0,
                                                  height: 50.0,
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
                                                      rowTeamsRecord.logo,
                                                      width: 300.0,
                                                      height: 200.0,
                                                      fit: BoxFit.fitHeight,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: StreamBuilder<
                                                  TeamConferenceRecord>(
                                                stream: TeamConferenceRecord
                                                    .getDocument(rowTeamsRecord
                                                        .conference!),
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

                                                  final rowTeamConferenceRecord =
                                                      snapshot.data!;

                                                  return Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (rowTeamConferenceRecord
                                                          .members
                                                          .contains(
                                                              currentUserReference))
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FlutterFlowIconButton(
                                                              borderColor:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                rowTeamsRecord
                                                                    .color2,
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                              ),
                                                              borderRadius:
                                                                  50.0,
                                                              borderWidth: 1.0,
                                                              buttonSize: 50.0,
                                                              fillColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiary,
                                                              icon: FaIcon(
                                                                FontAwesomeIcons
                                                                    .microphoneAlt,
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  rowTeamsRecord
                                                                      .color1,
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                                size: 31.0,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  enableDrag:
                                                                      false,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return WebViewAware(
                                                                      child:
                                                                          GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          FocusScope.of(context)
                                                                              .unfocus();
                                                                          FocusManager
                                                                              .instance
                                                                              .primaryFocus
                                                                              ?.unfocus();
                                                                        },
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              MediaQuery.viewInsetsOf(context),
                                                                          child:
                                                                              AudioMemberConferenceWidget(
                                                                            teamRef:
                                                                                currentUserDocument!.audioTeam!,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    safeSetState(
                                                                        () {}));
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      if (rowTeamConferenceRecord
                                                          .fans
                                                          .contains(
                                                              currentUserReference))
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FlutterFlowIconButton(
                                                              borderColor:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                rowTeamsRecord
                                                                    .color2,
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                              ),
                                                              borderRadius:
                                                                  50.0,
                                                              borderWidth: 1.0,
                                                              buttonSize: 50.0,
                                                              fillColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiary,
                                                              icon: FaIcon(
                                                                FontAwesomeIcons
                                                                    .headphonesAlt,
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  rowTeamsRecord
                                                                      .color1,
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                                size: 31.0,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  enableDrag:
                                                                      false,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return WebViewAware(
                                                                      child:
                                                                          GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          FocusScope.of(context)
                                                                              .unfocus();
                                                                          FocusManager
                                                                              .instance
                                                                              .primaryFocus
                                                                              ?.unfocus();
                                                                        },
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              MediaQuery.viewInsetsOf(context),
                                                                          child:
                                                                              AudioFanConferenceWidget(
                                                                            teamRef:
                                                                                currentUserDocument!.audioTeam!,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    safeSetState(
                                                                        () {}));
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'fhkyy529' /* Créer une rencontre */,
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
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      FlutterFlowCalendar(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        iconColor: FlutterFlowTheme.of(context).primaryText,
                        weekFormat: true,
                        weekStartsMonday: true,
                        rowHeight: 40.0,
                        onChange: (DateTimeRange? newSelectedDate) {
                          safeSetState(() =>
                              _model.calendarSelectedDay = newSelectedDate);
                        },
                        titleStyle:
                            FlutterFlowTheme.of(context).labelSmall.override(
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
                        dayOfWeekStyle:
                            FlutterFlowTheme.of(context).labelSmall.override(
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
                        dateStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
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
                        selectedDateStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
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
                        inactiveDateStyle:
                            FlutterFlowTheme.of(context).labelSmall.override(
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
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'xe73tt7q' /* Heure */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  font: GoogleFonts.montserrat(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontStyle,
                                ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              '3hcokkj2' /* Minute */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  font: GoogleFonts.montserrat(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontStyle,
                                ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 160.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.circular(8.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                            ),
                            child: FlutterFlowCountController(
                              decrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.minus,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).secondaryText
                                    : FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              incrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.plus,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).primaryText
                                    : FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              countBuilder: (count) => Text(
                                count.toString(),
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      font: GoogleFonts.montserrat(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                              ),
                              count: _model.countHourValue ??= 19,
                              updateCount: (count) => safeSetState(
                                  () => _model.countHourValue = count),
                              stepSize: 1,
                              minimum: 0,
                              maximum: 23,
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              '9jolq073' /* H */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  font: GoogleFonts.montserrat(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontStyle,
                                ),
                          ),
                          Container(
                            width: 160.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.circular(8.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                            ),
                            child: FlutterFlowCountController(
                              decrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.minus,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).secondaryText
                                    : FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              incrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.plus,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).primaryText
                                    : FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              countBuilder: (count) => Text(
                                count.toString(),
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      font: GoogleFonts.montserrat(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                              ),
                              count: _model.countMinuteValue ??= 0,
                              updateCount: (count) => safeSetState(
                                  () => _model.countMinuteValue = count),
                              stepSize: 5,
                              minimum: 0,
                              maximum: 55,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 11.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'lz1ai74l' /* Journée ou
Nom Event */
                                  ,
                                ),
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
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  17.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 180.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller:
                                          _model.numWeekFieldTextController,
                                      focusNode: _model.numWeekFieldFocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'oelnwwbn' /* ##### */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
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
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
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
                                      textAlign: TextAlign.start,
                                      validator: _model
                                          .numWeekFieldTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 10.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '0awga9i0' /* (facultatif) */,
                                ),
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
                                      letterSpacing: 0.0,
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
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      if (valueOrDefault(
                              currentUserDocument?.stsocialapp, '') ==
                          'administrateur')
                        AuthUserStreamWidget(
                          builder: (context) => Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FlutterFlowDropDown<String>(
                                      controller:
                                          _model.dropSportValueController ??=
                                              FormFieldController<String>(
                                        _model.dropSportValue ??= '',
                                      ),
                                      options: List<String>.from([
                                        'football',
                                        'basketball',
                                        'tennis',
                                        'hockey',
                                        'mma',
                                        'rugby',
                                        'sports.meca'
                                      ]),
                                      optionLabels: [
                                        FFLocalizations.of(context).getText(
                                          'uycqofhy' /* Football */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'drfgnwew' /* Basketball */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'mcrgfi6i' /* Tennis */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'z1zcpewo' /* Hockey */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'kuuuztnf' /* MMA */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ijz0ct32' /* Rugby */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'rshirdn3' /* Sports Méca. */,
                                        )
                                      ],
                                      onChanged: (val) => safeSetState(
                                          () => _model.dropSportValue = val),
                                      width: 160.0,
                                      height: 40.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
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
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        '2ctea7db' /* Sports */,
                                      ),
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      elevation: 2.0,
                                      borderColor: Colors.transparent,
                                      borderWidth: 0.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: FlutterFlowDropDown<String>(
                                        controller:
                                            _model.dropLigueValueController ??=
                                                FormFieldController<String>(
                                          _model.dropLigueValue ??= '',
                                        ),
                                        options: List<String>.from([
                                          'premier.league',
                                          'laliga',
                                          'bundesliga',
                                          'serie.a',
                                          'ligue.1',
                                          'autres',
                                          'pays.football',
                                          'nba',
                                          'atp',
                                          'wta',
                                          'champions.league',
                                          'europa.league',
                                          'conference.league',
                                          'nhl',
                                          'ufc',
                                          'autres.france',
                                          'top.14',
                                          'nations.rugby',
                                          'formule.1',
                                          'moto.gp',
                                          'world.superbike',
                                          'mx.gp',
                                          'euro.league',
                                          'champions.cup',
                                          'nations.basket'
                                        ]),
                                        optionLabels: [
                                          FFLocalizations.of(context).getText(
                                            '1v99zhis' /* Premier League */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '3fxzoemw' /* LaLiga */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '1syqru6h' /* Bundesliga */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'o92lhz7w' /* Serie A */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'wfs864xu' /* Ligue 1 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'yjym4s7f' /* Autres */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'leh9xkgx' /* Pays Football */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'uc9p1i8a' /* NBA */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '67112en7' /* ATP */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'tzi4yr2h' /* WTA */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'ktyunsm6' /* Champions League */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'yivvkwl8' /* Europa League */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'qorpz7v5' /* Conference League */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '7yk5yp1u' /* nhl */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'ket3v7a1' /* UFC */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'xwluklbx' /* Autres - France */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'jal49tll' /* Top 14 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'yiyen523' /* Nations Rugby */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'uz9v2bnx' /* Formula 1 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'k076bo4n' /* Moto GP */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'phdbciya' /* World Superbike */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'gn93zd0e' /* MX GP */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'wv967ap4' /* Euro League */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'j2rtcm7l' /* Champions Cup */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'tf88qakd' /* Nations Basket */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(
                                            () => _model.dropLigueValue = val),
                                        width: 180.0,
                                        height: 40.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
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
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'mqk4vsds' /* Ligues */,
                                        ),
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
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: false,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (_model.dropSportValue == 'mma')
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: FlutterFlowDropDown<String>(
                                    controller: _model
                                            .dropLigueFightValueController1 ??=
                                        FormFieldController<String>(
                                      _model.dropLigueFightValue1 ??= '',
                                    ),
                                    options: List<String>.from([
                                      'fly.weight',
                                      'bantam.weight',
                                      'feather.weight',
                                      'light.weight',
                                      'welter.weight',
                                      'middle.weight',
                                      'light.heavy.weight',
                                      'heavy.weight'
                                    ]),
                                    optionLabels: [
                                      FFLocalizations.of(context).getText(
                                        'kkqc6vu7' /* Fly Weight */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'kbhy3lo2' /* Bantam Weight */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'buxvmsgz' /* Feather Weight */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'ux5hmdnv' /* Light Weight */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'h0ej69mk' /* Welter Weight */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        '09gje5jv' /* Middle Weight */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'd743q7vp' /* Light Heavy Weight */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'r9zrgsnf' /* Heavy Weight */,
                                      )
                                    ],
                                    onChanged: (val) => safeSetState(() =>
                                        _model.dropLigueFightValue1 = val),
                                    width: 170.0,
                                    height: 40.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
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
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'p70zc03d' /* Poids */,
                                    ),
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
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                              Divider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              if ((_model.dropSportValue != 'sports.meca') &&
                                  (_model.dropSportValue != 'mma') &&
                                  (_model.dropSportValue != null &&
                                      _model.dropSportValue != ''))
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          StreamBuilder<List<TeamsRecord>>(
                                            stream: queryTeamsRecord(
                                              queryBuilder: (teamsRecord) =>
                                                  teamsRecord.where(Filter.or(
                                                Filter(
                                                  'league_value',
                                                  isEqualTo:
                                                      _model.dropLigueValue,
                                                ),
                                                Filter(
                                                  'additional_league',
                                                  isEqualTo:
                                                      _model.dropLigueValue,
                                                ),
                                              )),
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
                                                  dropTeamDomTeamsRecordList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .dropTeamDomValueController ??=
                                                    FormFieldController<String>(
                                                  _model.dropTeamDomValue ??=
                                                      '',
                                                ),
                                                options: List<String>.from(
                                                    dropTeamDomTeamsRecordList
                                                        .map((e) => e.value)
                                                        .toList()),
                                                optionLabels:
                                                    dropTeamDomTeamsRecordList
                                                        .map((e) => e.name)
                                                        .toList(),
                                                onChanged: (val) =>
                                                    safeSetState(() => _model
                                                            .dropTeamDomValue =
                                                        val),
                                                width: 200.0,
                                                height: 40.0,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
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
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'zvk8sck0' /* Teams */,
                                                ),
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                          if (_model.dropTeamDomValue != null &&
                                              _model.dropTeamDomValue != '')
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: StreamBuilder<
                                                  List<TeamsRecord>>(
                                                stream: queryTeamsRecord(
                                                  queryBuilder: (teamsRecord) =>
                                                      teamsRecord.where(
                                                    'value',
                                                    isEqualTo:
                                                        _model.dropTeamDomValue,
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
                                                      columnTeamDomRefTeamsRecordList =
                                                      snapshot.data!;
                                                  // Return an empty Container when the item does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final columnTeamDomRefTeamsRecord =
                                                      columnTeamDomRefTeamsRecordList
                                                              .isNotEmpty
                                                          ? columnTeamDomRefTeamsRecordList
                                                              .first
                                                          : null;

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        valueOrDefault<String>(
                                                          columnTeamDomRefTeamsRecord
                                                              ?.name,
                                                          'teamdom',
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
                                                                  fontSize:
                                                                      10.0,
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
                                                      if (_model.eventRef
                                                              ?.reference ==
                                                          null)
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
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                var eventsRecordReference =
                                                                    EventsRecord
                                                                        .collection
                                                                        .doc();
                                                                await eventsRecordReference
                                                                    .set(
                                                                        createEventsRecordData(
                                                                  date: _model
                                                                      .calendarSelectedDay
                                                                      ?.start,
                                                                  hour: _model
                                                                      .countHourValue,
                                                                  minute: _model
                                                                      .countMinuteValue,
                                                                  teamdom:
                                                                      columnTeamDomRefTeamsRecord
                                                                          ?.value,
                                                                  draw: valueOrDefault<
                                                                      String>(
                                                                    'Match nul',
                                                                    'draw',
                                                                  ),
                                                                  l2myes:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    'Les 2 équipes marquent - Oui',
                                                                    'l2myes',
                                                                  ),
                                                                  l2mno:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    'Les 2 équipes marquent - Non',
                                                                    'l2mno',
                                                                  ),
                                                                  adminUser:
                                                                      currentUserReference,
                                                                  statut: false,
                                                                  sportValue: _model
                                                                      .dropSportValue,
                                                                  teamdomRef:
                                                                      columnTeamDomRefTeamsRecord
                                                                          ?.reference,
                                                                  leagueValue:
                                                                      _model
                                                                          .dropLigueValue,
                                                                  week: _model
                                                                      .numWeekFieldTextController
                                                                      .text,
                                                                  esport: false,
                                                                ));
                                                                _model.eventRef =
                                                                    EventsRecord
                                                                        .getDocumentFromData(
                                                                            createEventsRecordData(
                                                                              date: _model.calendarSelectedDay?.start,
                                                                              hour: _model.countHourValue,
                                                                              minute: _model.countMinuteValue,
                                                                              teamdom: columnTeamDomRefTeamsRecord?.value,
                                                                              draw: valueOrDefault<String>(
                                                                                'Match nul',
                                                                                'draw',
                                                                              ),
                                                                              l2myes: valueOrDefault<String>(
                                                                                'Les 2 équipes marquent - Oui',
                                                                                'l2myes',
                                                                              ),
                                                                              l2mno: valueOrDefault<String>(
                                                                                'Les 2 équipes marquent - Non',
                                                                                'l2mno',
                                                                              ),
                                                                              adminUser: currentUserReference,
                                                                              statut: false,
                                                                              sportValue: _model.dropSportValue,
                                                                              teamdomRef: columnTeamDomRefTeamsRecord?.reference,
                                                                              leagueValue: _model.dropLigueValue,
                                                                              week: _model.numWeekFieldTextController.text,
                                                                              esport: false,
                                                                            ),
                                                                            eventsRecordReference);

                                                                await TeamEventsRecord.createDoc(
                                                                        columnTeamDomRefTeamsRecord!
                                                                            .reference)
                                                                    .set(
                                                                        createTeamEventsRecordData(
                                                                  startedTime: _model
                                                                      .calendarSelectedDay
                                                                      ?.start,
                                                                  events: _model
                                                                      .eventRef
                                                                      ?.reference,
                                                                ));

                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'v7yv529y' /* Valider Domicile */,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 130.0,
                                                                height: 40.0,
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .poppins(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          16.0,
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
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            40.0),
                                                                hoverColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .success,
                                                                hoverTextColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      thickness: 1.0,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        StreamBuilder<List<TeamsRecord>>(
                                          stream: queryTeamsRecord(
                                            queryBuilder: (teamsRecord) =>
                                                teamsRecord.where(Filter.or(
                                              Filter(
                                                'league_value',
                                                isEqualTo:
                                                    _model.dropLigueValue,
                                              ),
                                              Filter(
                                                'additional_league',
                                                isEqualTo:
                                                    _model.dropLigueValue,
                                              ),
                                            )),
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
                                                dropTeamExtTeamsRecordList =
                                                snapshot.data!;

                                            return FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropTeamExtValueController ??=
                                                  FormFieldController<String>(
                                                _model.dropTeamExtValue ??= '',
                                              ),
                                              options: List<String>.from(
                                                  dropTeamExtTeamsRecordList
                                                      .map((e) => e.value)
                                                      .toList()),
                                              optionLabels:
                                                  dropTeamExtTeamsRecordList
                                                      .map((e) => e.name)
                                                      .toList(),
                                              onChanged: (val) => safeSetState(
                                                  () => _model
                                                      .dropTeamExtValue = val),
                                              width: 200.0,
                                              height: 40.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
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
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'ngon1m40' /* Teams */,
                                              ),
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              elevation: 2.0,
                                              borderColor: Colors.transparent,
                                              borderWidth: 0.0,
                                              borderRadius: 8.0,
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 12.0, 0.0),
                                              hidesUnderline: true,
                                              isOverButton: false,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            );
                                          },
                                        ),
                                        if (_model.dropTeamExtValue != null &&
                                            _model.dropTeamExtValue != '')
                                          StreamBuilder<List<TeamsRecord>>(
                                            stream: queryTeamsRecord(
                                              queryBuilder: (teamsRecord) =>
                                                  teamsRecord.where(
                                                'value',
                                                isEqualTo:
                                                    _model.dropTeamExtValue,
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
                                                  columnTeamExtRefTeamsRecordList =
                                                  snapshot.data!;
                                              // Return an empty Container when the item does not exist.
                                              if (snapshot.data!.isEmpty) {
                                                return Container();
                                              }
                                              final columnTeamExtRefTeamsRecord =
                                                  columnTeamExtRefTeamsRecordList
                                                          .isNotEmpty
                                                      ? columnTeamExtRefTeamsRecordList
                                                          .first
                                                      : null;

                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      columnTeamExtRefTeamsRecord
                                                          ?.name,
                                                      'teamext',
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
                                                          fontSize: 10.0,
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
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          await _model.eventRef!
                                                              .reference
                                                              .update(
                                                                  createEventsRecordData(
                                                            teamext: _model
                                                                .dropTeamExtValue,
                                                            teamextRef:
                                                                columnTeamExtRefTeamsRecord
                                                                    ?.reference,
                                                          ));

                                                          await TeamEventsRecord
                                                                  .createDoc(
                                                                      columnTeamExtRefTeamsRecord!
                                                                          .reference)
                                                              .set(
                                                                  createTeamEventsRecordData(
                                                            startedTime: _model
                                                                .calendarSelectedDay
                                                                ?.start,
                                                            events: _model
                                                                .eventRef
                                                                ?.reference,
                                                          ));

                                                          context.pushNamed(
                                                            AddBetPageWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'eventRef':
                                                                  serializeParam(
                                                                _model.eventRef
                                                                    ?.reference,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        text:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'tg22twwi' /* Créer l'évennement */,
                                                        ),
                                                        options:
                                                            FFButtonOptions(
                                                          width: 130.0,
                                                          height: 40.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
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
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        16.0,
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
                                                          elevation: 3.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      40.0),
                                                          hoverColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .success,
                                                          hoverTextColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
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
                                  ],
                                ),
                              if (_model.dropSportValue == 'mma')
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          StreamBuilder<List<TeamsRecord>>(
                                            stream: queryTeamsRecord(
                                              queryBuilder: (teamsRecord) =>
                                                  teamsRecord
                                                      .where(
                                                        'league_value',
                                                        isEqualTo: _model
                                                            .dropLigueValue,
                                                      )
                                                      .where(
                                                        'division_value',
                                                        isEqualTo: _model
                                                            .dropLigueFightValue1,
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
                                                  dropTeamMMADomTeamsRecordList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .dropTeamMMADomValueController ??=
                                                    FormFieldController<String>(
                                                  _model.dropTeamMMADomValue ??=
                                                      '',
                                                ),
                                                options: List<String>.from(
                                                    dropTeamMMADomTeamsRecordList
                                                        .map((e) => e.value)
                                                        .toList()),
                                                optionLabels:
                                                    dropTeamMMADomTeamsRecordList
                                                        .map((e) => e.name)
                                                        .toList(),
                                                onChanged: (val) =>
                                                    safeSetState(() => _model
                                                            .dropTeamMMADomValue =
                                                        val),
                                                width: 200.0,
                                                height: 40.0,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
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
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'ite24t0w' /* Teams */,
                                                ),
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                          if (_model.dropTeamMMADomValue !=
                                                  null &&
                                              _model.dropTeamMMADomValue != '')
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: StreamBuilder<
                                                  List<TeamsRecord>>(
                                                stream: queryTeamsRecord(
                                                  queryBuilder: (teamsRecord) =>
                                                      teamsRecord.where(
                                                    'value',
                                                    isEqualTo: _model
                                                        .dropTeamMMADomValue,
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
                                                      columnTeamDomRefTeamsRecordList =
                                                      snapshot.data!;
                                                  // Return an empty Container when the item does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final columnTeamDomRefTeamsRecord =
                                                      columnTeamDomRefTeamsRecordList
                                                              .isNotEmpty
                                                          ? columnTeamDomRefTeamsRecordList
                                                              .first
                                                          : null;

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        valueOrDefault<String>(
                                                          columnTeamDomRefTeamsRecord
                                                              ?.name,
                                                          'teamdom',
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
                                                                  fontSize:
                                                                      10.0,
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
                                                      if (_model.eventFightRef
                                                              ?.reference ==
                                                          null)
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
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                var eventsRecordReference =
                                                                    EventsRecord
                                                                        .collection
                                                                        .doc();
                                                                await eventsRecordReference
                                                                    .set(
                                                                        createEventsRecordData(
                                                                  date: _model
                                                                      .calendarSelectedDay
                                                                      ?.start,
                                                                  hour: _model
                                                                      .countHourValue,
                                                                  minute: _model
                                                                      .countMinuteValue,
                                                                  teamdom:
                                                                      columnTeamDomRefTeamsRecord
                                                                          ?.value,
                                                                  draw: valueOrDefault<
                                                                      String>(
                                                                    'Match nul',
                                                                    'draw',
                                                                  ),
                                                                  l2myes:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    'Les 2 équipes marquent - Oui',
                                                                    'l2myes',
                                                                  ),
                                                                  l2mno:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    'Les 2 équipes marquent - Non',
                                                                    'l2mno',
                                                                  ),
                                                                  adminUser:
                                                                      currentUserReference,
                                                                  statut: false,
                                                                  sportValue: _model
                                                                      .dropSportValue,
                                                                  teamdomRef:
                                                                      columnTeamDomRefTeamsRecord
                                                                          ?.reference,
                                                                  leagueValue:
                                                                      _model
                                                                          .dropLigueValue,
                                                                  week: _model
                                                                      .numWeekFieldTextController
                                                                      .text,
                                                                  esport: false,
                                                                  divisionValue:
                                                                      _model
                                                                          .dropLigueFightValue1,
                                                                ));
                                                                _model.eventFightRef =
                                                                    EventsRecord
                                                                        .getDocumentFromData(
                                                                            createEventsRecordData(
                                                                              date: _model.calendarSelectedDay?.start,
                                                                              hour: _model.countHourValue,
                                                                              minute: _model.countMinuteValue,
                                                                              teamdom: columnTeamDomRefTeamsRecord?.value,
                                                                              draw: valueOrDefault<String>(
                                                                                'Match nul',
                                                                                'draw',
                                                                              ),
                                                                              l2myes: valueOrDefault<String>(
                                                                                'Les 2 équipes marquent - Oui',
                                                                                'l2myes',
                                                                              ),
                                                                              l2mno: valueOrDefault<String>(
                                                                                'Les 2 équipes marquent - Non',
                                                                                'l2mno',
                                                                              ),
                                                                              adminUser: currentUserReference,
                                                                              statut: false,
                                                                              sportValue: _model.dropSportValue,
                                                                              teamdomRef: columnTeamDomRefTeamsRecord?.reference,
                                                                              leagueValue: _model.dropLigueValue,
                                                                              week: _model.numWeekFieldTextController.text,
                                                                              esport: false,
                                                                              divisionValue: _model.dropLigueFightValue1,
                                                                            ),
                                                                            eventsRecordReference);

                                                                await TeamEventsRecord.createDoc(
                                                                        columnTeamDomRefTeamsRecord!
                                                                            .reference)
                                                                    .set(
                                                                        createTeamEventsRecordData(
                                                                  startedTime: _model
                                                                      .calendarSelectedDay
                                                                      ?.start,
                                                                  events: _model
                                                                      .eventFightRef
                                                                      ?.reference,
                                                                ));

                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'e95uo45x' /* Valider Domicile */,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 130.0,
                                                                height: 40.0,
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .poppins(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          16.0,
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
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            40.0),
                                                                hoverColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .success,
                                                                hoverTextColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      thickness: 1.0,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        StreamBuilder<List<TeamsRecord>>(
                                          stream: queryTeamsRecord(
                                            queryBuilder: (teamsRecord) =>
                                                teamsRecord
                                                    .where(
                                                      'league_value',
                                                      isEqualTo:
                                                          _model.dropLigueValue,
                                                    )
                                                    .where(
                                                      'division_value',
                                                      isEqualTo: _model
                                                          .dropLigueFightValue1,
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
                                                dropTeamMMAExtTeamsRecordList =
                                                snapshot.data!;

                                            return FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropTeamMMAExtValueController ??=
                                                  FormFieldController<String>(
                                                _model.dropTeamMMAExtValue ??=
                                                    '',
                                              ),
                                              options: List<String>.from(
                                                  dropTeamMMAExtTeamsRecordList
                                                      .map((e) => e.value)
                                                      .toList()),
                                              optionLabels:
                                                  dropTeamMMAExtTeamsRecordList
                                                      .map((e) => e.name)
                                                      .toList(),
                                              onChanged: (val) => safeSetState(
                                                  () => _model
                                                          .dropTeamMMAExtValue =
                                                      val),
                                              width: 200.0,
                                              height: 40.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
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
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'rfxi5kof' /* Teams */,
                                              ),
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              elevation: 2.0,
                                              borderColor: Colors.transparent,
                                              borderWidth: 0.0,
                                              borderRadius: 8.0,
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 12.0, 0.0),
                                              hidesUnderline: true,
                                              isOverButton: false,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            );
                                          },
                                        ),
                                        if (_model.dropTeamMMAExtValue !=
                                                null &&
                                            _model.dropTeamMMAExtValue != '')
                                          StreamBuilder<List<TeamsRecord>>(
                                            stream: queryTeamsRecord(
                                              queryBuilder: (teamsRecord) =>
                                                  teamsRecord.where(
                                                'value',
                                                isEqualTo:
                                                    _model.dropTeamMMAExtValue,
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
                                                  columnTeamExtRefTeamsRecordList =
                                                  snapshot.data!;
                                              // Return an empty Container when the item does not exist.
                                              if (snapshot.data!.isEmpty) {
                                                return Container();
                                              }
                                              final columnTeamExtRefTeamsRecord =
                                                  columnTeamExtRefTeamsRecordList
                                                          .isNotEmpty
                                                      ? columnTeamExtRefTeamsRecordList
                                                          .first
                                                      : null;

                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      columnTeamExtRefTeamsRecord
                                                          ?.name,
                                                      'teamext',
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
                                                          fontSize: 10.0,
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
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          await _model
                                                              .eventFightRef!
                                                              .reference
                                                              .update(
                                                                  createEventsRecordData(
                                                            teamext: _model
                                                                .dropTeamMMAExtValue,
                                                            teamextRef:
                                                                columnTeamExtRefTeamsRecord
                                                                    ?.reference,
                                                          ));

                                                          await TeamEventsRecord
                                                                  .createDoc(
                                                                      columnTeamExtRefTeamsRecord!
                                                                          .reference)
                                                              .set(
                                                                  createTeamEventsRecordData(
                                                            startedTime: _model
                                                                .calendarSelectedDay
                                                                ?.start,
                                                            events: _model
                                                                .eventFightRef
                                                                ?.reference,
                                                          ));

                                                          context.pushNamed(
                                                            AddBetPageWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'eventRef':
                                                                  serializeParam(
                                                                _model
                                                                    .eventFightRef
                                                                    ?.reference,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        text:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '5ree4omd' /* Créer l'évennement */,
                                                        ),
                                                        options:
                                                            FFButtonOptions(
                                                          width: 130.0,
                                                          height: 40.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
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
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        16.0,
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
                                                          elevation: 3.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      40.0),
                                                          hoverColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .success,
                                                          hoverTextColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
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
                                  ],
                                ),
                              if (_model.dropSportValue == 'sports.meca')
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 40.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      if (_model.dropSportValue ==
                                          'sports.meca')
                                        Text(
                                          valueOrDefault<String>(
                                            _model.dropLigueValue,
                                            'ligue',
                                          ),
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
                                                fontSize: 10.0,
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
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              var eventsRecordReference =
                                                  EventsRecord.collection.doc();
                                              await eventsRecordReference
                                                  .set(createEventsRecordData(
                                                date: _model
                                                    .calendarSelectedDay?.start,
                                                hour: _model.countHourValue,
                                                minute: _model.countMinuteValue,
                                                adminUser: currentUserReference,
                                                statut: false,
                                                sportValue:
                                                    _model.dropSportValue,
                                                leagueValue:
                                                    _model.dropLigueValue,
                                                week: _model
                                                    .numWeekFieldTextController
                                                    .text,
                                                esport: false,
                                              ));
                                              _model.eventAutoRef = EventsRecord
                                                  .getDocumentFromData(
                                                      createEventsRecordData(
                                                        date: _model
                                                            .calendarSelectedDay
                                                            ?.start,
                                                        hour: _model
                                                            .countHourValue,
                                                        minute: _model
                                                            .countMinuteValue,
                                                        adminUser:
                                                            currentUserReference,
                                                        statut: false,
                                                        sportValue: _model
                                                            .dropSportValue,
                                                        leagueValue: _model
                                                            .dropLigueValue,
                                                        week: _model
                                                            .numWeekFieldTextController
                                                            .text,
                                                        esport: false,
                                                      ),
                                                      eventsRecordReference);

                                              context.pushNamed(
                                                AddBetMecaPageWidget.routeName,
                                                queryParameters: {
                                                  'eventMecaRef':
                                                      serializeParam(
                                                    _model.eventAutoRef
                                                        ?.reference,
                                                    ParamType.DocumentReference,
                                                  ),
                                                }.withoutNulls,
                                              );

                                              safeSetState(() {});
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              '9g3ochfy' /* Ajouter les pilotes */,
                                            ),
                                            options: FFButtonOptions(
                                              width: 130.0,
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
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
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                      if (valueOrDefault<bool>(
                              currentUserDocument?.adminSport, false) ==
                          true)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 30.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            valueOrDefault(
                                                currentUserDocument
                                                    ?.adminSportvalue,
                                                ''),
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
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (valueOrDefault(
                                                      currentUserDocument
                                                          ?.adminSportvalue,
                                                      '') ==
                                                  'basketball')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 5.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropLigueBasketValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropLigueBasketValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from([
                                                      'nba',
                                                      'euro.league',
                                                      'nations.basket'
                                                    ]),
                                                    optionLabels: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '2mhoekyk' /* NBA */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'sy1bdcoi' /* Euro League */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'btfskhbo' /* Nations */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropLigueBasketValue =
                                                            val),
                                                    width: 180.0,
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
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'ngxnnf1o' /* Ligues */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
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
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: false,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                              if (valueOrDefault(
                                                      currentUserDocument
                                                          ?.adminSportvalue,
                                                      '') ==
                                                  'tennis')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 5.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropLigueTennisValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropLigueTennisValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from(
                                                        ['atp', 'wta']),
                                                    optionLabels: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'jch2fyv3' /* ATP */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '7olg7s26' /* WTA */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropLigueTennisValue =
                                                            val),
                                                    width: 180.0,
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
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '67m2vsh4' /* Ligues */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
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
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: false,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                              if (valueOrDefault(
                                                      currentUserDocument
                                                          ?.adminSportvalue,
                                                      '') ==
                                                  'hockey')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 5.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropLigueHockeyValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropLigueHockeyValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from([
                                                      'nhl',
                                                      'gazon.elite.h',
                                                      'gazon.elite.f',
                                                      'salle.elite.h',
                                                      'salle.elite.f'
                                                    ]),
                                                    optionLabels: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '3ra9kqls' /* NHL */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'enar0wl2' /* Gazon Elite H */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '0455t2yg' /* Gazon Elite F */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '6xpgmqlz' /* Salle Elite H */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '7rzldj6n' /* Salle Elite F */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropLigueHockeyValue =
                                                            val),
                                                    width: 180.0,
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
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'b8bv6scc' /* Ligues */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
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
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: false,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                              if (valueOrDefault(
                                                      currentUserDocument
                                                          ?.adminSportvalue,
                                                      '') ==
                                                  'mma')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 5.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropLigueMMAValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropLigueMMAValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from(
                                                        ['ufc']),
                                                    optionLabels: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        's90o0jy2' /* UFC */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropLigueMMAValue =
                                                            val),
                                                    width: 180.0,
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
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '2faf0qt9' /* Ligues */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
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
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: false,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                              if (valueOrDefault(
                                                      currentUserDocument
                                                          ?.adminSportvalue,
                                                      '') ==
                                                  'rugby')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 5.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropLigueRugbyValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropLigueRugbyValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from([
                                                      'top.14',
                                                      'champions.cup',
                                                      'nations.rugby'
                                                    ]),
                                                    optionLabels: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'caggylrs' /* Top 14 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'st7v8ghf' /* Champions Cup */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '75l1n7o7' /* Nations */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropLigueRugbyValue =
                                                            val),
                                                    width: 180.0,
                                                    height: 50.0,
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
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'svkdsihd' /* Ligues */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
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
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: false,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                              if (valueOrDefault(
                                                      currentUserDocument
                                                          ?.adminSportvalue,
                                                      '') ==
                                                  'sports.meca')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 5.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropLigueMecaValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropLigueMecaValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from([
                                                      'formule.1',
                                                      'moto.gp',
                                                      'world.superbike',
                                                      'mx.gp'
                                                    ]),
                                                    optionLabels: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'eku1fwwc' /* Formule 1 */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'mat4kodf' /* Moto GP */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'wm6vy3k8' /* World Superbike */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'qazu84br' /* MX GP */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropLigueMecaValue =
                                                            val),
                                                    width: 180.0,
                                                    height: 50.0,
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
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      't0y3lh4z' /* Ligues */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
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
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: false,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                              if (valueOrDefault(
                                                      currentUserDocument
                                                          ?.adminSportvalue,
                                                      '') ==
                                                  'mma')
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropLigueFightValueController2 ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropLigueFightValue2 ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from([
                                                      'fly.weight',
                                                      'bantam.weight',
                                                      'feather.weight',
                                                      'light.weight',
                                                      'welter.weight',
                                                      'middle.weight',
                                                      'light.heavy.weight',
                                                      'heavy.weight'
                                                    ]),
                                                    optionLabels: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '2j32kcif' /* Fly Weight */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'pum3172n' /* Bantam Weight */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ipv31fm1' /* Feather Weight */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'm096q0z6' /* Light Weight */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'yzjukkkp' /* Welter Weight */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'tpkxmmme' /* Middle Weight */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'neid92r9' /* Light Heavy Weight */,
                                                      ),
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'lxch0v3w' /* Heavy Weight */,
                                                      )
                                                    ],
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropLigueFightValue2 =
                                                            val),
                                                    width: 170.0,
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
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'yuaxb0xx' /* Poids */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
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
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: false,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (_model.dropLigueBasketValue != null &&
                                        _model.dropLigueBasketValue != '')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 8.0),
                                              child: StreamBuilder<
                                                  List<TeamsRecord>>(
                                                stream: queryTeamsRecord(
                                                  queryBuilder: (teamsRecord) =>
                                                      teamsRecord.where(
                                                    'league_value',
                                                    isEqualTo: _model
                                                        .dropLigueBasketValue,
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
                                                      dropTeamDomBasketTeamsRecordList =
                                                      snapshot.data!;

                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropTeamDomBasketValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropTeamDomBasketValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from(
                                                        dropTeamDomBasketTeamsRecordList
                                                            .map((e) => e.value)
                                                            .toList()),
                                                    optionLabels:
                                                        dropTeamDomBasketTeamsRecordList
                                                            .map((e) => e.name)
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropTeamDomBasketValue =
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
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'tnpwtso9' /* Teams */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
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
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: false,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  );
                                                },
                                              ),
                                            ),
                                            StreamBuilder<List<TeamsRecord>>(
                                              stream: queryTeamsRecord(
                                                queryBuilder: (teamsRecord) =>
                                                    teamsRecord.where(
                                                  'value',
                                                  isEqualTo: _model
                                                      .dropTeamDomBasketValue,
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
                                                    columnTeamsRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final columnTeamsRecord =
                                                    columnTeamsRecordList
                                                            .isNotEmpty
                                                        ? columnTeamsRecordList
                                                            .first
                                                        : null;

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      valueOrDefault<String>(
                                                        columnTeamsRecord?.name,
                                                        'teamdom',
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
                                                                fontSize: 10.0,
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
                                                    if (_model.eventBasketRef
                                                            ?.reference ==
                                                        null)
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
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              var eventsRecordReference =
                                                                  EventsRecord
                                                                      .collection
                                                                      .doc();
                                                              await eventsRecordReference
                                                                  .set(
                                                                      createEventsRecordData(
                                                                date: _model
                                                                    .calendarSelectedDay
                                                                    ?.start,
                                                                hour: _model
                                                                    .countHourValue,
                                                                minute: _model
                                                                    .countMinuteValue,
                                                                teamdom:
                                                                    columnTeamsRecord
                                                                        ?.value,
                                                                draw:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  'Match nul',
                                                                  'draw',
                                                                ),
                                                                l2myes:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  'Les 2 équipes marquent - Oui',
                                                                  'l2myes',
                                                                ),
                                                                l2mno:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  'Les 2 équipes marquent - Non',
                                                                  'l2mno',
                                                                ),
                                                                adminUser:
                                                                    currentUserReference,
                                                                statut: false,
                                                                sportValue:
                                                                    'basketball',
                                                                teamdomRef:
                                                                    columnTeamsRecord
                                                                        ?.reference,
                                                                leagueValue: _model
                                                                    .dropLigueBasketValue,
                                                                week: _model
                                                                    .numWeekFieldTextController
                                                                    .text,
                                                                esport: false,
                                                              ));
                                                              _model.eventBasketRef =
                                                                  EventsRecord
                                                                      .getDocumentFromData(
                                                                          createEventsRecordData(
                                                                            date:
                                                                                _model.calendarSelectedDay?.start,
                                                                            hour:
                                                                                _model.countHourValue,
                                                                            minute:
                                                                                _model.countMinuteValue,
                                                                            teamdom:
                                                                                columnTeamsRecord?.value,
                                                                            draw:
                                                                                valueOrDefault<String>(
                                                                              'Match nul',
                                                                              'draw',
                                                                            ),
                                                                            l2myes:
                                                                                valueOrDefault<String>(
                                                                              'Les 2 équipes marquent - Oui',
                                                                              'l2myes',
                                                                            ),
                                                                            l2mno:
                                                                                valueOrDefault<String>(
                                                                              'Les 2 équipes marquent - Non',
                                                                              'l2mno',
                                                                            ),
                                                                            adminUser:
                                                                                currentUserReference,
                                                                            statut:
                                                                                false,
                                                                            sportValue:
                                                                                'basketball',
                                                                            teamdomRef:
                                                                                columnTeamsRecord?.reference,
                                                                            leagueValue:
                                                                                _model.dropLigueBasketValue,
                                                                            week:
                                                                                _model.numWeekFieldTextController.text,
                                                                            esport:
                                                                                false,
                                                                          ),
                                                                          eventsRecordReference);

                                                              await TeamEventsRecord
                                                                      .createDoc(
                                                                          columnTeamsRecord!
                                                                              .reference)
                                                                  .set(
                                                                      createTeamEventsRecordData(
                                                                startedTime: _model
                                                                    .calendarSelectedDay
                                                                    ?.start,
                                                                events: _model
                                                                    .eventBasketRef
                                                                    ?.reference,
                                                              ));

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'kjmtn2hf' /* Valider Domicile */,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              width: 130.0,
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                              elevation: 3.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40.0),
                                                              hoverColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                              hoverTextColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
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
                                    if (_model.dropLigueTennisValue != null &&
                                        _model.dropLigueTennisValue != '')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 8.0),
                                              child: StreamBuilder<
                                                  List<TeamsRecord>>(
                                                stream: queryTeamsRecord(
                                                  queryBuilder: (teamsRecord) =>
                                                      teamsRecord.where(
                                                    'league_value',
                                                    isEqualTo: _model
                                                        .dropLigueTennisValue,
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
                                                      dropTeamDomTennisTeamsRecordList =
                                                      snapshot.data!;

                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropTeamDomTennisValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropTeamDomTennisValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from(
                                                        dropTeamDomTennisTeamsRecordList
                                                            .map((e) => e.value)
                                                            .toList()),
                                                    optionLabels:
                                                        dropTeamDomTennisTeamsRecordList
                                                            .map((e) => e.name)
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropTeamDomTennisValue =
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
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'ta1lmg1r' /* Teams */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
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
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: false,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  );
                                                },
                                              ),
                                            ),
                                            StreamBuilder<List<TeamsRecord>>(
                                              stream: queryTeamsRecord(
                                                queryBuilder: (teamsRecord) =>
                                                    teamsRecord.where(
                                                  'value',
                                                  isEqualTo: _model
                                                      .dropTeamDomTennisValue,
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
                                                    columnTeamsRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final columnTeamsRecord =
                                                    columnTeamsRecordList
                                                            .isNotEmpty
                                                        ? columnTeamsRecordList
                                                            .first
                                                        : null;

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      valueOrDefault<String>(
                                                        columnTeamsRecord?.name,
                                                        'teamdom',
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
                                                                fontSize: 10.0,
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
                                                    if (_model.eventTennisRef
                                                            ?.reference ==
                                                        null)
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
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              var eventsRecordReference =
                                                                  EventsRecord
                                                                      .collection
                                                                      .doc();
                                                              await eventsRecordReference
                                                                  .set(
                                                                      createEventsRecordData(
                                                                date: _model
                                                                    .calendarSelectedDay
                                                                    ?.start,
                                                                hour: _model
                                                                    .countHourValue,
                                                                minute: _model
                                                                    .countMinuteValue,
                                                                teamdom:
                                                                    columnTeamsRecord
                                                                        ?.value,
                                                                draw:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  'Match nul',
                                                                  'draw',
                                                                ),
                                                                l2myes:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  'Les 2 équipes marquent - Oui',
                                                                  'l2myes',
                                                                ),
                                                                l2mno:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  'Les 2 équipes marquent - Non',
                                                                  'l2mno',
                                                                ),
                                                                adminUser:
                                                                    currentUserReference,
                                                                statut: false,
                                                                sportValue:
                                                                    'tennis',
                                                                teamdomRef:
                                                                    columnTeamsRecord
                                                                        ?.reference,
                                                                leagueValue: _model
                                                                    .dropLigueTennisValue,
                                                                week: _model
                                                                    .numWeekFieldTextController
                                                                    .text,
                                                                esport: false,
                                                              ));
                                                              _model.eventTennisRef =
                                                                  EventsRecord
                                                                      .getDocumentFromData(
                                                                          createEventsRecordData(
                                                                            date:
                                                                                _model.calendarSelectedDay?.start,
                                                                            hour:
                                                                                _model.countHourValue,
                                                                            minute:
                                                                                _model.countMinuteValue,
                                                                            teamdom:
                                                                                columnTeamsRecord?.value,
                                                                            draw:
                                                                                valueOrDefault<String>(
                                                                              'Match nul',
                                                                              'draw',
                                                                            ),
                                                                            l2myes:
                                                                                valueOrDefault<String>(
                                                                              'Les 2 équipes marquent - Oui',
                                                                              'l2myes',
                                                                            ),
                                                                            l2mno:
                                                                                valueOrDefault<String>(
                                                                              'Les 2 équipes marquent - Non',
                                                                              'l2mno',
                                                                            ),
                                                                            adminUser:
                                                                                currentUserReference,
                                                                            statut:
                                                                                false,
                                                                            sportValue:
                                                                                'tennis',
                                                                            teamdomRef:
                                                                                columnTeamsRecord?.reference,
                                                                            leagueValue:
                                                                                _model.dropLigueTennisValue,
                                                                            week:
                                                                                _model.numWeekFieldTextController.text,
                                                                            esport:
                                                                                false,
                                                                          ),
                                                                          eventsRecordReference);

                                                              await TeamEventsRecord
                                                                      .createDoc(
                                                                          columnTeamsRecord!
                                                                              .reference)
                                                                  .set(
                                                                      createTeamEventsRecordData(
                                                                startedTime: _model
                                                                    .calendarSelectedDay
                                                                    ?.start,
                                                                events: _model
                                                                    .eventTennisRef
                                                                    ?.reference,
                                                              ));

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'edba452y' /* Valider Domicile */,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              width: 130.0,
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                              elevation: 3.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40.0),
                                                              hoverColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                              hoverTextColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
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
                                    if (_model.dropLigueHockeyValue != null &&
                                        _model.dropLigueHockeyValue != '')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 8.0),
                                              child: StreamBuilder<
                                                  List<TeamsRecord>>(
                                                stream: queryTeamsRecord(
                                                  queryBuilder: (teamsRecord) =>
                                                      teamsRecord.where(
                                                    'league_value',
                                                    isEqualTo: _model
                                                        .dropLigueHockeyValue,
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
                                                      dropTeamDomHockeyTeamsRecordList =
                                                      snapshot.data!;

                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropTeamDomHockeyValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropTeamDomHockeyValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from(
                                                        dropTeamDomHockeyTeamsRecordList
                                                            .map((e) => e.value)
                                                            .toList()),
                                                    optionLabels:
                                                        dropTeamDomHockeyTeamsRecordList
                                                            .map((e) => e.name)
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropTeamDomHockeyValue =
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
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'eaqssnwd' /* Teams */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
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
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: false,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  );
                                                },
                                              ),
                                            ),
                                            StreamBuilder<List<TeamsRecord>>(
                                              stream: queryTeamsRecord(
                                                queryBuilder: (teamsRecord) =>
                                                    teamsRecord.where(
                                                  'value',
                                                  isEqualTo: _model
                                                      .dropTeamDomHockeyValue,
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
                                                    columnTeamsRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final columnTeamsRecord =
                                                    columnTeamsRecordList
                                                            .isNotEmpty
                                                        ? columnTeamsRecordList
                                                            .first
                                                        : null;

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      valueOrDefault<String>(
                                                        columnTeamsRecord?.name,
                                                        'teamdom',
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
                                                                fontSize: 10.0,
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
                                                    if (_model.eventHockeyRef
                                                            ?.reference ==
                                                        null)
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
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              var eventsRecordReference =
                                                                  EventsRecord
                                                                      .collection
                                                                      .doc();
                                                              await eventsRecordReference
                                                                  .set(
                                                                      createEventsRecordData(
                                                                date: _model
                                                                    .calendarSelectedDay
                                                                    ?.start,
                                                                hour: _model
                                                                    .countHourValue,
                                                                minute: _model
                                                                    .countMinuteValue,
                                                                teamdom:
                                                                    columnTeamsRecord
                                                                        ?.value,
                                                                draw:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  'Match nul',
                                                                  'draw',
                                                                ),
                                                                l2myes:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  'Les 2 équipes marquent - Oui',
                                                                  'l2myes',
                                                                ),
                                                                l2mno:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  'Les 2 équipes marquent - Non',
                                                                  'l2mno',
                                                                ),
                                                                adminUser:
                                                                    currentUserReference,
                                                                statut: false,
                                                                sportValue:
                                                                    'hockey',
                                                                teamdomRef:
                                                                    columnTeamsRecord
                                                                        ?.reference,
                                                                leagueValue: _model
                                                                    .dropTeamDomHockeyValue,
                                                                week: _model
                                                                    .numWeekFieldTextController
                                                                    .text,
                                                                esport: false,
                                                              ));
                                                              _model.eventHockeyRef =
                                                                  EventsRecord
                                                                      .getDocumentFromData(
                                                                          createEventsRecordData(
                                                                            date:
                                                                                _model.calendarSelectedDay?.start,
                                                                            hour:
                                                                                _model.countHourValue,
                                                                            minute:
                                                                                _model.countMinuteValue,
                                                                            teamdom:
                                                                                columnTeamsRecord?.value,
                                                                            draw:
                                                                                valueOrDefault<String>(
                                                                              'Match nul',
                                                                              'draw',
                                                                            ),
                                                                            l2myes:
                                                                                valueOrDefault<String>(
                                                                              'Les 2 équipes marquent - Oui',
                                                                              'l2myes',
                                                                            ),
                                                                            l2mno:
                                                                                valueOrDefault<String>(
                                                                              'Les 2 équipes marquent - Non',
                                                                              'l2mno',
                                                                            ),
                                                                            adminUser:
                                                                                currentUserReference,
                                                                            statut:
                                                                                false,
                                                                            sportValue:
                                                                                'hockey',
                                                                            teamdomRef:
                                                                                columnTeamsRecord?.reference,
                                                                            leagueValue:
                                                                                _model.dropTeamDomHockeyValue,
                                                                            week:
                                                                                _model.numWeekFieldTextController.text,
                                                                            esport:
                                                                                false,
                                                                          ),
                                                                          eventsRecordReference);

                                                              await TeamEventsRecord
                                                                      .createDoc(
                                                                          columnTeamsRecord!
                                                                              .reference)
                                                                  .set(
                                                                      createTeamEventsRecordData(
                                                                startedTime: _model
                                                                    .calendarSelectedDay
                                                                    ?.start,
                                                                events: _model
                                                                    .eventHockeyRef
                                                                    ?.reference,
                                                              ));

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'hjb02dc3' /* Valider Domicile */,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              width: 130.0,
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                              elevation: 3.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40.0),
                                                              hoverColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                              hoverTextColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
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
                                    if (_model.dropLigueMMAValue != null &&
                                        _model.dropLigueMMAValue != '')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 8.0),
                                              child: StreamBuilder<
                                                  List<TeamsRecord>>(
                                                stream: queryTeamsRecord(
                                                  queryBuilder: (teamsRecord) =>
                                                      teamsRecord
                                                          .where(
                                                            'league_value',
                                                            isEqualTo: _model
                                                                .dropLigueMMAValue,
                                                          )
                                                          .where(
                                                            'division_value',
                                                            isEqualTo: _model
                                                                .dropLigueFightValue2,
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
                                                      dropTeamDomMMATeamsRecordList =
                                                      snapshot.data!;

                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropTeamDomMMAValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropTeamDomMMAValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from(
                                                        dropTeamDomMMATeamsRecordList
                                                            .map((e) => e.value)
                                                            .toList()),
                                                    optionLabels:
                                                        dropTeamDomMMATeamsRecordList
                                                            .map((e) => e.name)
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropTeamDomMMAValue =
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
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'z5jr6uj2' /* Teams */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
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
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: false,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  );
                                                },
                                              ),
                                            ),
                                            StreamBuilder<List<TeamsRecord>>(
                                              stream: queryTeamsRecord(
                                                queryBuilder: (teamsRecord) =>
                                                    teamsRecord.where(
                                                  'value',
                                                  isEqualTo: _model
                                                      .dropTeamDomMMAValue,
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
                                                    columnTeamsRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final columnTeamsRecord =
                                                    columnTeamsRecordList
                                                            .isNotEmpty
                                                        ? columnTeamsRecordList
                                                            .first
                                                        : null;

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      valueOrDefault<String>(
                                                        columnTeamsRecord?.name,
                                                        'teamdom',
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
                                                                fontSize: 10.0,
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
                                                    if (_model.eventMMARef
                                                            ?.reference ==
                                                        null)
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
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              var eventsRecordReference =
                                                                  EventsRecord
                                                                      .collection
                                                                      .doc();
                                                              await eventsRecordReference
                                                                  .set(
                                                                      createEventsRecordData(
                                                                date: _model
                                                                    .calendarSelectedDay
                                                                    ?.start,
                                                                hour: _model
                                                                    .countHourValue,
                                                                minute: _model
                                                                    .countMinuteValue,
                                                                teamdom:
                                                                    columnTeamsRecord
                                                                        ?.value,
                                                                draw:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  'Match nul',
                                                                  'draw',
                                                                ),
                                                                l2myes:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  'Les 2 équipes marquent - Oui',
                                                                  'l2myes',
                                                                ),
                                                                l2mno:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  'Les 2 équipes marquent - Non',
                                                                  'l2mno',
                                                                ),
                                                                adminUser:
                                                                    currentUserReference,
                                                                statut: false,
                                                                sportValue:
                                                                    'mma',
                                                                teamdomRef:
                                                                    columnTeamsRecord
                                                                        ?.reference,
                                                                leagueValue: _model
                                                                    .dropLigueMMAValue,
                                                                week: _model
                                                                    .numWeekFieldTextController
                                                                    .text,
                                                                esport: false,
                                                                divisionValue:
                                                                    _model
                                                                        .dropLigueFightValue2,
                                                              ));
                                                              _model.eventMMARef =
                                                                  EventsRecord
                                                                      .getDocumentFromData(
                                                                          createEventsRecordData(
                                                                            date:
                                                                                _model.calendarSelectedDay?.start,
                                                                            hour:
                                                                                _model.countHourValue,
                                                                            minute:
                                                                                _model.countMinuteValue,
                                                                            teamdom:
                                                                                columnTeamsRecord?.value,
                                                                            draw:
                                                                                valueOrDefault<String>(
                                                                              'Match nul',
                                                                              'draw',
                                                                            ),
                                                                            l2myes:
                                                                                valueOrDefault<String>(
                                                                              'Les 2 équipes marquent - Oui',
                                                                              'l2myes',
                                                                            ),
                                                                            l2mno:
                                                                                valueOrDefault<String>(
                                                                              'Les 2 équipes marquent - Non',
                                                                              'l2mno',
                                                                            ),
                                                                            adminUser:
                                                                                currentUserReference,
                                                                            statut:
                                                                                false,
                                                                            sportValue:
                                                                                'mma',
                                                                            teamdomRef:
                                                                                columnTeamsRecord?.reference,
                                                                            leagueValue:
                                                                                _model.dropLigueMMAValue,
                                                                            week:
                                                                                _model.numWeekFieldTextController.text,
                                                                            esport:
                                                                                false,
                                                                            divisionValue:
                                                                                _model.dropLigueFightValue2,
                                                                          ),
                                                                          eventsRecordReference);

                                                              await TeamEventsRecord
                                                                      .createDoc(
                                                                          columnTeamsRecord!
                                                                              .reference)
                                                                  .set(
                                                                      createTeamEventsRecordData(
                                                                startedTime: _model
                                                                    .calendarSelectedDay
                                                                    ?.start,
                                                                events: _model
                                                                    .eventMMARef
                                                                    ?.reference,
                                                              ));

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'l67oihim' /* Valider Domicile */,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              width: 130.0,
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                              elevation: 3.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40.0),
                                                              hoverColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                              hoverTextColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
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
                                    if (_model.dropLigueRugbyValue != null &&
                                        _model.dropLigueRugbyValue != '')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 8.0),
                                              child: StreamBuilder<
                                                  List<TeamsRecord>>(
                                                stream: queryTeamsRecord(
                                                  queryBuilder: (teamsRecord) =>
                                                      teamsRecord.where(
                                                    'league_value',
                                                    isEqualTo: _model
                                                        .dropLigueRugbyValue,
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
                                                      dropTeamDomRugbyTeamsRecordList =
                                                      snapshot.data!;

                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropTeamDomRugbyValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropTeamDomRugbyValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from(
                                                        dropTeamDomRugbyTeamsRecordList
                                                            .map((e) => e.value)
                                                            .toList()),
                                                    optionLabels:
                                                        dropTeamDomRugbyTeamsRecordList
                                                            .map((e) => e.name)
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        safeSetState(() => _model
                                                                .dropTeamDomRugbyValue =
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
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'y9kyi4ag' /* Teams */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
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
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: false,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  );
                                                },
                                              ),
                                            ),
                                            StreamBuilder<List<TeamsRecord>>(
                                              stream: queryTeamsRecord(
                                                queryBuilder: (teamsRecord) =>
                                                    teamsRecord.where(
                                                  'value',
                                                  isEqualTo: _model
                                                      .dropTeamDomRugbyValue,
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
                                                    columnTeamsRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final columnTeamsRecord =
                                                    columnTeamsRecordList
                                                            .isNotEmpty
                                                        ? columnTeamsRecordList
                                                            .first
                                                        : null;

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      valueOrDefault<String>(
                                                        columnTeamsRecord?.name,
                                                        'teamdom',
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
                                                                fontSize: 10.0,
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
                                                    if (_model.eventRugbyRef
                                                            ?.reference ==
                                                        null)
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
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              var eventsRecordReference =
                                                                  EventsRecord
                                                                      .collection
                                                                      .doc();
                                                              await eventsRecordReference
                                                                  .set(
                                                                      createEventsRecordData(
                                                                date: _model
                                                                    .calendarSelectedDay
                                                                    ?.start,
                                                                hour: _model
                                                                    .countHourValue,
                                                                minute: _model
                                                                    .countMinuteValue,
                                                                teamdom:
                                                                    columnTeamsRecord
                                                                        ?.value,
                                                                draw:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  'Match nul',
                                                                  'draw',
                                                                ),
                                                                l2myes:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  'Les 2 équipes marquent - Oui',
                                                                  'l2myes',
                                                                ),
                                                                l2mno:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  'Les 2 équipes marquent - Non',
                                                                  'l2mno',
                                                                ),
                                                                adminUser:
                                                                    currentUserReference,
                                                                statut: false,
                                                                sportValue:
                                                                    'rugby',
                                                                teamdomRef:
                                                                    columnTeamsRecord
                                                                        ?.reference,
                                                                leagueValue: _model
                                                                    .dropLigueRugbyValue,
                                                                week: _model
                                                                    .numWeekFieldTextController
                                                                    .text,
                                                                esport: false,
                                                              ));
                                                              _model.eventRugbyRef =
                                                                  EventsRecord
                                                                      .getDocumentFromData(
                                                                          createEventsRecordData(
                                                                            date:
                                                                                _model.calendarSelectedDay?.start,
                                                                            hour:
                                                                                _model.countHourValue,
                                                                            minute:
                                                                                _model.countMinuteValue,
                                                                            teamdom:
                                                                                columnTeamsRecord?.value,
                                                                            draw:
                                                                                valueOrDefault<String>(
                                                                              'Match nul',
                                                                              'draw',
                                                                            ),
                                                                            l2myes:
                                                                                valueOrDefault<String>(
                                                                              'Les 2 équipes marquent - Oui',
                                                                              'l2myes',
                                                                            ),
                                                                            l2mno:
                                                                                valueOrDefault<String>(
                                                                              'Les 2 équipes marquent - Non',
                                                                              'l2mno',
                                                                            ),
                                                                            adminUser:
                                                                                currentUserReference,
                                                                            statut:
                                                                                false,
                                                                            sportValue:
                                                                                'rugby',
                                                                            teamdomRef:
                                                                                columnTeamsRecord?.reference,
                                                                            leagueValue:
                                                                                _model.dropLigueRugbyValue,
                                                                            week:
                                                                                _model.numWeekFieldTextController.text,
                                                                            esport:
                                                                                false,
                                                                          ),
                                                                          eventsRecordReference);

                                                              await TeamEventsRecord
                                                                      .createDoc(
                                                                          columnTeamsRecord!
                                                                              .reference)
                                                                  .set(
                                                                      createTeamEventsRecordData(
                                                                startedTime: _model
                                                                    .calendarSelectedDay
                                                                    ?.start,
                                                                events: _model
                                                                    .eventRugbyRef
                                                                    ?.reference,
                                                              ));

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'ho17s9lk' /* Valider Domicile */,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              width: 130.0,
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                              elevation: 3.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40.0),
                                                              hoverColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                              hoverTextColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
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
                                    if (_model.dropLigueMecaValue != null &&
                                        _model.dropLigueMecaValue != '')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  valueOrDefault<String>(
                                                    _model.dropLigueMecaValue,
                                                    'ligue',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
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
                                                        fontSize: 10.0,
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
                                                if (_model.eventMecaRef
                                                        ?.reference ==
                                                    null)
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
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          var eventsRecordReference =
                                                              EventsRecord
                                                                  .collection
                                                                  .doc();
                                                          await eventsRecordReference
                                                              .set(
                                                                  createEventsRecordData(
                                                            date: _model
                                                                .calendarSelectedDay
                                                                ?.start,
                                                            hour: _model
                                                                .countHourValue,
                                                            minute: _model
                                                                .countMinuteValue,
                                                            adminUser:
                                                                currentUserReference,
                                                            statut: false,
                                                            sportValue:
                                                                'sports.meca',
                                                            leagueValue: _model
                                                                .dropLigueMecaValue,
                                                            week: _model
                                                                .numWeekFieldTextController
                                                                .text,
                                                            esport: false,
                                                          ));
                                                          _model.eventMecaRef =
                                                              EventsRecord.getDocumentFromData(
                                                                  createEventsRecordData(
                                                                    date: _model
                                                                        .calendarSelectedDay
                                                                        ?.start,
                                                                    hour: _model
                                                                        .countHourValue,
                                                                    minute: _model
                                                                        .countMinuteValue,
                                                                    adminUser:
                                                                        currentUserReference,
                                                                    statut:
                                                                        false,
                                                                    sportValue:
                                                                        'sports.meca',
                                                                    leagueValue:
                                                                        _model
                                                                            .dropLigueMecaValue,
                                                                    week: _model
                                                                        .numWeekFieldTextController
                                                                        .text,
                                                                    esport:
                                                                        false,
                                                                  ),
                                                                  eventsRecordReference);

                                                          context.pushNamed(
                                                            AddBetMecaPageWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'eventMecaRef':
                                                                  serializeParam(
                                                                _model
                                                                    .eventMecaRef
                                                                    ?.reference,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                            }.withoutNulls,
                                                          );

                                                          safeSetState(() {});
                                                        },
                                                        text:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'nntackqx' /* Ajouter les pilotes */,
                                                        ),
                                                        options:
                                                            FFButtonOptions(
                                                          width: 130.0,
                                                          height: 40.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
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
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        16.0,
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
                                                          elevation: 3.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      40.0),
                                                          hoverColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .success,
                                                          hoverTextColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryBackground,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                  ],
                                ),
                                Divider(
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (_model.dropLigueBasketValue != null &&
                                        _model.dropLigueBasketValue != '')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            StreamBuilder<List<TeamsRecord>>(
                                              stream: queryTeamsRecord(
                                                queryBuilder: (teamsRecord) =>
                                                    teamsRecord.where(
                                                  'league_value',
                                                  isEqualTo: _model
                                                      .dropLigueBasketValue,
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
                                                    dropTeamExtBasketTeamsRecordList =
                                                    snapshot.data!;

                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .dropTeamExtBasketValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropTeamExtBasketValue ??=
                                                        '',
                                                  ),
                                                  options: List<String>.from(
                                                      dropTeamExtBasketTeamsRecordList
                                                          .map((e) => e.value)
                                                          .toList()),
                                                  optionLabels:
                                                      dropTeamExtBasketTeamsRecordList
                                                          .map((e) => e.name)
                                                          .toList(),
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropTeamExtBasketValue =
                                                          val),
                                                  width: 200.0,
                                                  height: 40.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
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
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'd7neyn8a' /* Teams */,
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
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
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                            if (_model.dropTeamExtBasketValue !=
                                                    null &&
                                                _model.dropTeamExtBasketValue !=
                                                    '')
                                              StreamBuilder<List<TeamsRecord>>(
                                                stream: queryTeamsRecord(
                                                  queryBuilder: (teamsRecord) =>
                                                      teamsRecord.where(
                                                    'value',
                                                    isEqualTo: _model
                                                        .dropTeamExtBasketValue,
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
                                                      columnTeamExtRefTeamsRecordList =
                                                      snapshot.data!;
                                                  // Return an empty Container when the item does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final columnTeamExtRefTeamsRecord =
                                                      columnTeamExtRefTeamsRecordList
                                                              .isNotEmpty
                                                          ? columnTeamExtRefTeamsRecordList
                                                              .first
                                                          : null;

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              columnTeamExtRefTeamsRecord
                                                                  ?.name,
                                                              'teamext',
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
                                                                  fontSize:
                                                                      10.0,
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
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  await _model
                                                                      .eventBasketRef!
                                                                      .reference
                                                                      .update(
                                                                          createEventsRecordData(
                                                                    teamextRef:
                                                                        columnTeamExtRefTeamsRecord
                                                                            ?.reference,
                                                                    teamext:
                                                                        columnTeamExtRefTeamsRecord
                                                                            ?.value,
                                                                  ));

                                                                  await TeamEventsRecord.createDoc(
                                                                          columnTeamExtRefTeamsRecord!
                                                                              .reference)
                                                                      .set(
                                                                          createTeamEventsRecordData(
                                                                    startedTime: _model
                                                                        .calendarSelectedDay
                                                                        ?.start,
                                                                    events: _model
                                                                        .eventBasketRef
                                                                        ?.reference,
                                                                  ));

                                                                  context
                                                                      .pushNamed(
                                                                    AddBetPageWidget
                                                                        .routeName,
                                                                    queryParameters:
                                                                        {
                                                                      'eventRef':
                                                                          serializeParam(
                                                                        _model
                                                                            .eventBasketRef
                                                                            ?.reference,
                                                                        ParamType
                                                                            .DocumentReference,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                                text: FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'nlgvn1u6' /* Créer l'évennement */,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 130.0,
                                                                  height: 40.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              40.0),
                                                                  hoverColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .success,
                                                                  hoverTextColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                ),
                                                              ),
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
                                    if (_model.dropLigueTennisValue != null &&
                                        _model.dropLigueTennisValue != '')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            StreamBuilder<List<TeamsRecord>>(
                                              stream: queryTeamsRecord(
                                                queryBuilder: (teamsRecord) =>
                                                    teamsRecord.where(
                                                  'league_value',
                                                  isEqualTo: _model
                                                      .dropLigueTennisValue,
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
                                                    dropTeamExtTennisTeamsRecordList =
                                                    snapshot.data!;

                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .dropTeamExtTennisValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropTeamExtTennisValue ??=
                                                        '',
                                                  ),
                                                  options: List<String>.from(
                                                      dropTeamExtTennisTeamsRecordList
                                                          .map((e) => e.value)
                                                          .toList()),
                                                  optionLabels:
                                                      dropTeamExtTennisTeamsRecordList
                                                          .map((e) => e.name)
                                                          .toList(),
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropTeamExtTennisValue =
                                                          val),
                                                  width: 200.0,
                                                  height: 40.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
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
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '1mnbjyuf' /* Teams */,
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
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
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                            if (_model.dropTeamExtTennisValue !=
                                                    null &&
                                                _model.dropTeamExtTennisValue !=
                                                    '')
                                              StreamBuilder<List<TeamsRecord>>(
                                                stream: queryTeamsRecord(
                                                  queryBuilder: (teamsRecord) =>
                                                      teamsRecord.where(
                                                    'value',
                                                    isEqualTo: _model
                                                        .dropTeamExtTennisValue,
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
                                                      columnTeamExtRefTeamsRecordList =
                                                      snapshot.data!;
                                                  // Return an empty Container when the item does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final columnTeamExtRefTeamsRecord =
                                                      columnTeamExtRefTeamsRecordList
                                                              .isNotEmpty
                                                          ? columnTeamExtRefTeamsRecordList
                                                              .first
                                                          : null;

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              columnTeamExtRefTeamsRecord
                                                                  ?.name,
                                                              'teamext',
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
                                                                  fontSize:
                                                                      10.0,
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
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  await _model
                                                                      .eventTennisRef!
                                                                      .reference
                                                                      .update(
                                                                          createEventsRecordData(
                                                                    teamextRef:
                                                                        columnTeamExtRefTeamsRecord
                                                                            ?.reference,
                                                                    teamext:
                                                                        columnTeamExtRefTeamsRecord
                                                                            ?.value,
                                                                  ));

                                                                  await TeamEventsRecord.createDoc(
                                                                          columnTeamExtRefTeamsRecord!
                                                                              .reference)
                                                                      .set(
                                                                          createTeamEventsRecordData(
                                                                    startedTime: _model
                                                                        .calendarSelectedDay
                                                                        ?.start,
                                                                    events: _model
                                                                        .eventTennisRef
                                                                        ?.reference,
                                                                  ));

                                                                  context
                                                                      .pushNamed(
                                                                    AddBetPageWidget
                                                                        .routeName,
                                                                    queryParameters:
                                                                        {
                                                                      'eventRef':
                                                                          serializeParam(
                                                                        _model
                                                                            .eventTennisRef
                                                                            ?.reference,
                                                                        ParamType
                                                                            .DocumentReference,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                                text: FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'bv0ycre8' /* Créer l'évennement */,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 130.0,
                                                                  height: 40.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              40.0),
                                                                  hoverColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .success,
                                                                  hoverTextColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                ),
                                                              ),
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
                                    if (_model.dropLigueHockeyValue != null &&
                                        _model.dropLigueHockeyValue != '')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            StreamBuilder<List<TeamsRecord>>(
                                              stream: queryTeamsRecord(
                                                queryBuilder: (teamsRecord) =>
                                                    teamsRecord.where(
                                                  'league_value',
                                                  isEqualTo: _model
                                                      .dropLigueHockeyValue,
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
                                                    dropTeamExtHockeyTeamsRecordList =
                                                    snapshot.data!;

                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .dropTeamExtHockeyValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropTeamExtHockeyValue ??=
                                                        '',
                                                  ),
                                                  options: List<String>.from(
                                                      dropTeamExtHockeyTeamsRecordList
                                                          .map((e) => e.value)
                                                          .toList()),
                                                  optionLabels:
                                                      dropTeamExtHockeyTeamsRecordList
                                                          .map((e) => e.name)
                                                          .toList(),
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropTeamExtHockeyValue =
                                                          val),
                                                  width: 200.0,
                                                  height: 40.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
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
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'g5da7bzh' /* Teams */,
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
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
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                            if (_model.dropTeamExtHockeyValue !=
                                                    null &&
                                                _model.dropTeamExtHockeyValue !=
                                                    '')
                                              StreamBuilder<List<TeamsRecord>>(
                                                stream: queryTeamsRecord(
                                                  queryBuilder: (teamsRecord) =>
                                                      teamsRecord.where(
                                                    'value',
                                                    isEqualTo: _model
                                                        .dropTeamExtHockeyValue,
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
                                                      columnTeamExtRefTeamsRecordList =
                                                      snapshot.data!;
                                                  // Return an empty Container when the item does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final columnTeamExtRefTeamsRecord =
                                                      columnTeamExtRefTeamsRecordList
                                                              .isNotEmpty
                                                          ? columnTeamExtRefTeamsRecordList
                                                              .first
                                                          : null;

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              columnTeamExtRefTeamsRecord
                                                                  ?.name,
                                                              'teamext',
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
                                                                  fontSize:
                                                                      10.0,
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
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  await _model
                                                                      .eventHockeyRef!
                                                                      .reference
                                                                      .update(
                                                                          createEventsRecordData(
                                                                    teamextRef:
                                                                        columnTeamExtRefTeamsRecord
                                                                            ?.reference,
                                                                    teamext:
                                                                        columnTeamExtRefTeamsRecord
                                                                            ?.value,
                                                                  ));

                                                                  await TeamEventsRecord.createDoc(
                                                                          columnTeamExtRefTeamsRecord!
                                                                              .reference)
                                                                      .set(
                                                                          createTeamEventsRecordData(
                                                                    startedTime: _model
                                                                        .calendarSelectedDay
                                                                        ?.start,
                                                                    events: _model
                                                                        .eventHockeyRef
                                                                        ?.reference,
                                                                  ));

                                                                  context
                                                                      .pushNamed(
                                                                    AddBetPageWidget
                                                                        .routeName,
                                                                    queryParameters:
                                                                        {
                                                                      'eventRef':
                                                                          serializeParam(
                                                                        _model
                                                                            .eventHockeyRef
                                                                            ?.reference,
                                                                        ParamType
                                                                            .DocumentReference,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                                text: FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'ckn869pn' /* Créer l'évennement */,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 130.0,
                                                                  height: 40.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              40.0),
                                                                  hoverColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .success,
                                                                  hoverTextColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                ),
                                                              ),
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
                                    if (_model.dropLigueMMAValue != null &&
                                        _model.dropLigueMMAValue != '')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            StreamBuilder<List<TeamsRecord>>(
                                              stream: queryTeamsRecord(
                                                queryBuilder: (teamsRecord) =>
                                                    teamsRecord
                                                        .where(
                                                          'league_value',
                                                          isEqualTo: _model
                                                              .dropLigueMMAValue,
                                                        )
                                                        .where(
                                                          'division_value',
                                                          isEqualTo: _model
                                                              .dropLigueFightValue2,
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
                                                    dropTeamExtMMATeamsRecordList =
                                                    snapshot.data!;

                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .dropTeamExtMMAValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropTeamExtMMAValue ??=
                                                        '',
                                                  ),
                                                  options: List<String>.from(
                                                      dropTeamExtMMATeamsRecordList
                                                          .map((e) => e.value)
                                                          .toList()),
                                                  optionLabels:
                                                      dropTeamExtMMATeamsRecordList
                                                          .map((e) => e.name)
                                                          .toList(),
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropTeamExtMMAValue =
                                                          val),
                                                  width: 200.0,
                                                  height: 40.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
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
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    's818rf8o' /* Teams */,
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
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
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                            if (_model.dropTeamExtMMAValue !=
                                                    null &&
                                                _model.dropTeamExtMMAValue !=
                                                    '')
                                              StreamBuilder<List<TeamsRecord>>(
                                                stream: queryTeamsRecord(
                                                  queryBuilder: (teamsRecord) =>
                                                      teamsRecord.where(
                                                    'value',
                                                    isEqualTo: _model
                                                        .dropTeamExtMMAValue,
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
                                                      columnTeamExtRefTeamsRecordList =
                                                      snapshot.data!;
                                                  // Return an empty Container when the item does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final columnTeamExtRefTeamsRecord =
                                                      columnTeamExtRefTeamsRecordList
                                                              .isNotEmpty
                                                          ? columnTeamExtRefTeamsRecordList
                                                              .first
                                                          : null;

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              columnTeamExtRefTeamsRecord
                                                                  ?.name,
                                                              'teamext',
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
                                                                  fontSize:
                                                                      10.0,
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
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  await _model
                                                                      .eventMMARef!
                                                                      .reference
                                                                      .update(
                                                                          createEventsRecordData(
                                                                    teamextRef:
                                                                        columnTeamExtRefTeamsRecord
                                                                            ?.reference,
                                                                    teamext:
                                                                        columnTeamExtRefTeamsRecord
                                                                            ?.value,
                                                                  ));

                                                                  await TeamEventsRecord.createDoc(
                                                                          columnTeamExtRefTeamsRecord!
                                                                              .reference)
                                                                      .set(
                                                                          createTeamEventsRecordData(
                                                                    startedTime: _model
                                                                        .calendarSelectedDay
                                                                        ?.start,
                                                                    events: _model
                                                                        .eventMMARef
                                                                        ?.reference,
                                                                  ));

                                                                  context
                                                                      .pushNamed(
                                                                    AddBetPageWidget
                                                                        .routeName,
                                                                    queryParameters:
                                                                        {
                                                                      'eventRef':
                                                                          serializeParam(
                                                                        _model
                                                                            .eventMMARef
                                                                            ?.reference,
                                                                        ParamType
                                                                            .DocumentReference,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                                text: FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'xplz38w5' /* Créer l'évennement */,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 130.0,
                                                                  height: 40.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              40.0),
                                                                  hoverColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .success,
                                                                  hoverTextColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                ),
                                                              ),
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
                                    if (_model.dropLigueRugbyValue != null &&
                                        _model.dropLigueRugbyValue != '')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            StreamBuilder<List<TeamsRecord>>(
                                              stream: queryTeamsRecord(
                                                queryBuilder: (teamsRecord) =>
                                                    teamsRecord.where(
                                                  'league_value',
                                                  isEqualTo: _model
                                                      .dropLigueRugbyValue,
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
                                                    dropTeamExtRugbyTeamsRecordList =
                                                    snapshot.data!;

                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .dropTeamExtRugbyValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropTeamExtRugbyValue ??=
                                                        '',
                                                  ),
                                                  options: List<String>.from(
                                                      dropTeamExtRugbyTeamsRecordList
                                                          .map((e) => e.value)
                                                          .toList()),
                                                  optionLabels:
                                                      dropTeamExtRugbyTeamsRecordList
                                                          .map((e) => e.name)
                                                          .toList(),
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropTeamExtRugbyValue =
                                                          val),
                                                  width: 200.0,
                                                  height: 40.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
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
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'nqi4m9eh' /* Teams */,
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
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
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                            if (_model.dropTeamExtRugbyValue !=
                                                    null &&
                                                _model.dropTeamExtRugbyValue !=
                                                    '')
                                              StreamBuilder<List<TeamsRecord>>(
                                                stream: queryTeamsRecord(
                                                  queryBuilder: (teamsRecord) =>
                                                      teamsRecord.where(
                                                    'value',
                                                    isEqualTo: _model
                                                        .dropTeamExtRugbyValue,
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
                                                      columnTeamExtRefTeamsRecordList =
                                                      snapshot.data!;
                                                  // Return an empty Container when the item does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final columnTeamExtRefTeamsRecord =
                                                      columnTeamExtRefTeamsRecordList
                                                              .isNotEmpty
                                                          ? columnTeamExtRefTeamsRecordList
                                                              .first
                                                          : null;

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              columnTeamExtRefTeamsRecord
                                                                  ?.name,
                                                              'teamext',
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
                                                                  fontSize:
                                                                      10.0,
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
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  await _model
                                                                      .eventRugbyRef!
                                                                      .reference
                                                                      .update(
                                                                          createEventsRecordData(
                                                                    teamextRef:
                                                                        columnTeamExtRefTeamsRecord
                                                                            ?.reference,
                                                                    teamext:
                                                                        columnTeamExtRefTeamsRecord
                                                                            ?.value,
                                                                  ));

                                                                  await TeamEventsRecord.createDoc(
                                                                          columnTeamExtRefTeamsRecord!
                                                                              .reference)
                                                                      .set(
                                                                          createTeamEventsRecordData(
                                                                    startedTime: _model
                                                                        .calendarSelectedDay
                                                                        ?.start,
                                                                    events: _model
                                                                        .eventRugbyRef
                                                                        ?.reference,
                                                                  ));

                                                                  context
                                                                      .pushNamed(
                                                                    AddBetPageWidget
                                                                        .routeName,
                                                                    queryParameters:
                                                                        {
                                                                      'eventRef':
                                                                          serializeParam(
                                                                        _model
                                                                            .eventRugbyRef
                                                                            ?.reference,
                                                                        ParamType
                                                                            .DocumentReference,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                                text: FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '9c7zciyr' /* Créer l'évennement */,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 130.0,
                                                                  height: 40.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              40.0),
                                                                  hoverColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .success,
                                                                  hoverTextColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                ),
                                                              ),
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
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
