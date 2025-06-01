import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/teams_fold/audio_fan_conference/audio_fan_conference_widget.dart';
import '/teams_fold/audio_member_conference/audio_member_conference_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'boss_notif_e_event_page_i_u_d_admin_model.dart';
export 'boss_notif_e_event_page_i_u_d_admin_model.dart';

class BossNotifEEventPageIUDAdminWidget extends StatefulWidget {
  const BossNotifEEventPageIUDAdminWidget({
    super.key,
    required this.notifRef,
    required this.eTeamRef,
  });

  final DocumentReference? notifRef;
  final DocumentReference? eTeamRef;

  static String routeName = 'BossNotifEEventPageIUDAdmin';
  static String routePath = '/bossNotifEEventPageIUDAdmin';

  @override
  State<BossNotifEEventPageIUDAdminWidget> createState() =>
      _BossNotifEEventPageIUDAdminWidgetState();
}

class _BossNotifEEventPageIUDAdminWidgetState
    extends State<BossNotifEEventPageIUDAdminWidget> {
  late BossNotifEEventPageIUDAdminModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BossNotifEEventPageIUDAdminModel());
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

        final bossNotifEEventPageIUDAdminMyNotificationsRecord = snapshot.data!;

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
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (bossNotifEEventPageIUDAdminMyNotificationsRecord
                              .eEvent ==
                          null)
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => StreamBuilder<TeamsRecord>(
                              stream: TeamsRecord.getDocument(
                                  currentUserDocument!.eteamRef!),
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

                                final columnTeamsRecord = snapshot.data!;

                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                                  currentUserDocument?.color1,
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
                                                    currentUserDocument?.color1,
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
                                                child:
                                                    StreamBuilder<TeamsRecord>(
                                                  stream:
                                                      TeamsRecord.getDocument(
                                                          currentUserDocument!
                                                              .audioTeam!),
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
                                                              context.pushNamed(
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
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                                child: Image
                                                                    .network(
                                                                  rowTeamsRecord
                                                                      .logo,
                                                                  width: 300.0,
                                                                  height: 200.0,
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
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
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
                                                                      alignment:
                                                                          AlignmentDirectional(
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
                                                                            color:
                                                                                valueOrDefault<Color>(
                                                                              rowTeamsRecord.color1,
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                            size:
                                                                                31.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await showModalBottomSheet(
                                                                              isScrollControlled: true,
                                                                              backgroundColor: Colors.transparent,
                                                                              enableDrag: false,
                                                                              context: context,
                                                                              builder: (context) {
                                                                                return WebViewAware(
                                                                                  child: GestureDetector(
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
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                safeSetState(() {}));
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
                                                                            color:
                                                                                valueOrDefault<Color>(
                                                                              rowTeamsRecord.color1,
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                            size:
                                                                                31.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await showModalBottomSheet(
                                                                              isScrollControlled: true,
                                                                              backgroundColor: Colors.transparent,
                                                                              enableDrag: false,
                                                                              context: context,
                                                                              builder: (context) {
                                                                                return WebViewAware(
                                                                                  child: GestureDetector(
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
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                safeSetState(() {}));
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
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Column(
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
                                                              currentUserDocument
                                                                  ?.langage,
                                                              '') ==
                                                          'francais'))
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '5eq2qq2n' /* Détails invitation */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineSmall
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontStyle,
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
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ytxfrdmy' /* Invitation details */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineSmall
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                  if (valueOrDefault(
                                                          currentUserDocument
                                                              ?.langage,
                                                          '') ==
                                                      'deutsch')
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'tt7nwyhq' /* Einzelheiten zur
Einladung */
                                                        ,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineSmall
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                  if (valueOrDefault(
                                                          currentUserDocument
                                                              ?.langage,
                                                          '') ==
                                                      'espanol')
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'x3f27nzv' /* Detalles de la
invitación */
                                                        ,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineSmall
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                  if (valueOrDefault(
                                                          currentUserDocument
                                                              ?.langage,
                                                          '') ==
                                                      'italiano')
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '5i0hhi1m' /* Dettagli dell'invito */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineSmall
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                  if (valueOrDefault(
                                                          currentUserDocument
                                                              ?.langage,
                                                          '') ==
                                                      'portugues')
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'kwz8eh0c' /* Detalhes do convite */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineSmall
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      thickness: 1.0,
                                      color: currentUserDocument?.color2,
                                    ),
                                    StreamBuilder<TeamsRecord>(
                                      stream: TeamsRecord.getDocument(
                                          bossNotifEEventPageIUDAdminMyNotificationsRecord
                                              .eteamDom!),
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
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 5.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                6.0, 0.0),
                                                    child: Container(
                                                      width: 65.0,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        shape:
                                                            BoxShape.rectangle,
                                                      ),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: Image.network(
                                                          columnTeamsRecord
                                                              .logo,
                                                          width: 300.0,
                                                          height: 200.0,
                                                          fit: BoxFit.fitHeight,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
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
                                                        TeamPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'teamRef':
                                                              serializeParam(
                                                            columnTeamsRecord
                                                                .reference,
                                                            ParamType
                                                                .DocumentReference,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    child: Text(
                                                      columnTeamsRecord.name,
                                                      maxLines: 1,
                                                      style:
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
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 0.0, 5.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
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
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'u5fsbw4v' /* Vous invite à jouer contre vot... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .montserrat(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
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
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'hnfa0v2z' /* Invites you to play against yo... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .montserrat(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            if (valueOrDefault(
                                                    currentUserDocument
                                                        ?.langage,
                                                    '') ==
                                                'deutsch')
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '87p1scsz' /* Lädt Sie ein, gegen Ihr Team z... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .montserrat(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            if (valueOrDefault(
                                                    currentUserDocument
                                                        ?.langage,
                                                    '') ==
                                                'espanol')
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '0hq8rao7' /* Te invita a jugar contra tu eq... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .montserrat(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            if (valueOrDefault(
                                                    currentUserDocument
                                                        ?.langage,
                                                    '') ==
                                                'italiano')
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'df45m8ih' /* Ti invita a giocare contro la ... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .montserrat(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            if (valueOrDefault(
                                                    currentUserDocument
                                                        ?.langage,
                                                    '') ==
                                                'portugues')
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '8my6788e' /* Convida-o para jogar contra a ... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .montserrat(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          dateTimeFormat(
                                            "d/M H:mm",
                                            bossNotifEEventPageIUDAdminMyNotificationsRecord
                                                .dateTime!,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                        ),
                                      ),
                                    ),
                                    StreamBuilder<List<UsersRecord>>(
                                      stream: queryUsersRecord(
                                        queryBuilder: (usersRecord) =>
                                            usersRecord.where(
                                          'uid',
                                          isEqualTo:
                                              '4g21LNGnfSN2dnX37zah532h2vq2',
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
                                        List<UsersRecord>
                                            columnUsersRecordList =
                                            snapshot.data!;
                                        // Return an empty Container when the item does not exist.
                                        if (snapshot.data!.isEmpty) {
                                          return Container();
                                        }
                                        final columnUsersRecord =
                                            columnUsersRecordList.isNotEmpty
                                                ? columnUsersRecordList.first
                                                : null;

                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
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
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hcdpqdbc' /* En acceptant l'invitation vous... */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
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
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9kor85ft' /* By accepting the invitation yo... */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    if (valueOrDefault(
                                                            currentUserDocument
                                                                ?.langage,
                                                            '') ==
                                                        'deutsch')
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lrpzaxr4' /* Indem Sie die Einladung annehm... */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    if (valueOrDefault(
                                                            currentUserDocument
                                                                ?.langage,
                                                            '') ==
                                                        'espanol')
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ki752q4z' /* Al aceptar la invitación crear... */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    if (valueOrDefault(
                                                            currentUserDocument
                                                                ?.langage,
                                                            '') ==
                                                        'italiano')
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '19geblwm' /* Accettando l'invito creerai l'... */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    if (valueOrDefault(
                                                            currentUserDocument
                                                                ?.langage,
                                                            '') ==
                                                        'portugues')
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'o0q0jvpo' /* Ao aceitar o convite criará o ... */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 20.0),
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
                                                    var eventsRecordReference =
                                                        EventsRecord.collection
                                                            .doc();
                                                    await eventsRecordReference
                                                        .set(
                                                            createEventsRecordData(
                                                      teamdomRef:
                                                          bossNotifEEventPageIUDAdminMyNotificationsRecord
                                                              .eteamDom,
                                                      teamextRef:
                                                          bossNotifEEventPageIUDAdminMyNotificationsRecord
                                                              .eteamExt,
                                                      adminUser:
                                                          columnUsersRecord
                                                              ?.reference,
                                                      esport: true,
                                                      seenScore: false,
                                                      sportValue:
                                                          columnTeamsRecord
                                                              .sportValue,
                                                      leagueValue:
                                                          columnTeamsRecord
                                                              .leagueValue,
                                                      divisionValue:
                                                          columnTeamsRecord
                                                              .divisionValue,
                                                    ));
                                                    _model.eEventRef = EventsRecord
                                                        .getDocumentFromData(
                                                            createEventsRecordData(
                                                              teamdomRef:
                                                                  bossNotifEEventPageIUDAdminMyNotificationsRecord
                                                                      .eteamDom,
                                                              teamextRef:
                                                                  bossNotifEEventPageIUDAdminMyNotificationsRecord
                                                                      .eteamExt,
                                                              adminUser:
                                                                  columnUsersRecord
                                                                      ?.reference,
                                                              esport: true,
                                                              seenScore: false,
                                                              sportValue:
                                                                  columnTeamsRecord
                                                                      .sportValue,
                                                              leagueValue:
                                                                  columnTeamsRecord
                                                                      .leagueValue,
                                                              divisionValue:
                                                                  columnTeamsRecord
                                                                      .divisionValue,
                                                            ),
                                                            eventsRecordReference);

                                                    await MyNotificationsRecord
                                                            .createDoc(
                                                                bossNotifEEventPageIUDAdminMyNotificationsRecord
                                                                    .userRef!)
                                                        .set({
                                                      ...createMyNotificationsRecordData(
                                                        text:
                                                            'Ok pour la confrontation. ',
                                                        eteamExt:
                                                            bossNotifEEventPageIUDAdminMyNotificationsRecord
                                                                .eteamExt,
                                                        seen: false,
                                                        userRef:
                                                            currentUserReference,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'date_time': FieldValue
                                                              .serverTimestamp(),
                                                        },
                                                      ),
                                                    });
                                                    triggerPushNotification(
                                                      notificationTitle:
                                                          currentUserDisplayName,
                                                      notificationText:
                                                          'Ok pour la confrontation. ',
                                                      notificationImageUrl:
                                                          currentUserPhoto,
                                                      notificationSound:
                                                          'default',
                                                      userRefs: [
                                                        bossNotifEEventPageIUDAdminMyNotificationsRecord
                                                            .userRef!
                                                      ],
                                                      initialPageName:
                                                          'MyNotifsList',
                                                      parameterData: {},
                                                    );

                                                    await TeamEventsRecord
                                                            .createDoc(
                                                                bossNotifEEventPageIUDAdminMyNotificationsRecord
                                                                    .eteamDom!)
                                                        .set(
                                                            createTeamEventsRecordData(
                                                      events: _model
                                                          .eEventRef?.reference,
                                                      startedTime: _model
                                                          .eEventRef?.date,
                                                    ));

                                                    await TeamEventsRecord
                                                            .createDoc(
                                                                bossNotifEEventPageIUDAdminMyNotificationsRecord
                                                                    .eteamExt!)
                                                        .set(
                                                            createTeamEventsRecordData(
                                                      events: _model
                                                          .eEventRef?.reference,
                                                      startedTime: _model
                                                          .eEventRef?.date,
                                                    ));

                                                    await widget.notifRef!.update(
                                                        createMyNotificationsRecordData(
                                                      seen: true,
                                                    ));

                                                    await currentUserDocument!
                                                        .eteamRef!
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'guest': FieldValue
                                                              .delete(),
                                                        },
                                                      ),
                                                    });
                                                    await widget.notifRef!
                                                        .delete();
                                                    context.safePop();

                                                    safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons
                                                        .check_circle_outline_rounded,
                                                    color:
                                                        valueOrDefault<Color>(
                                                      currentUserDocument
                                                          ?.color1,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .success,
                                                    ),
                                                    size: 50.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
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
                                                    currentUserDocument
                                                        ?.langage,
                                                    '') ==
                                                'francais'))
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'vlw4hv7w' /* Ou refuser */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontStyle,
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
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'd6ga306b' /* Or refuse */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontStyle,
                                                ),
                                          ),
                                        if (valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            'deutsch')
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'p5mpsrox' /* Oder ablehnen */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontStyle,
                                                ),
                                          ),
                                        if (valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            'espanol')
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '4pfzqllh' /* O rechazar */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontStyle,
                                                ),
                                          ),
                                        if (valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            'italiano')
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'ylay333h' /* Oppure rifiutare */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontStyle,
                                                ),
                                          ),
                                        if (valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            'portugues')
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'nahk99ax' /* Ou recusar */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontStyle,
                                                ),
                                          ),
                                      ],
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
                                                    currentUserDocument
                                                        ?.langage,
                                                    '') ==
                                                'francais'))
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '4goadfuh' /* Pour la raison suivante */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontStyle,
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
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'dxhxqdgi' /* For the following reason */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontStyle,
                                                ),
                                          ),
                                        if (valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            'deutsch')
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '8h4r27i8' /* Aus folgendem Grund */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontStyle,
                                                ),
                                          ),
                                        if (valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            'espanol')
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'hr1f21m2' /* Por la siguiente razón */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontStyle,
                                                ),
                                          ),
                                        if (valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            'italiano')
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'oxcu931v' /* Per il seguente motivo */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontStyle,
                                                ),
                                          ),
                                        if (valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            'portugues')
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'e6d4gu4m' /* Pela seguinte razão */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontStyle,
                                                ),
                                          ),
                                      ],
                                    ),
                                    FlutterFlowDropDown<String>(
                                      controller:
                                          _model.dropReasonsValueController ??=
                                              FormFieldController<String>(
                                        _model.dropReasonsValue ??= '',
                                      ),
                                      options: List<String>.from([
                                        'pas.de.membres',
                                        'pas.disponible',
                                        'trop.decarts.points'
                                      ]),
                                      optionLabels: [
                                        FFLocalizations.of(context).getText(
                                          'mbgy8cn6' /* Vous n'avez pas assez de membr... */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'n1z6nuvd' /* Vous n'êtes pas disponible */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'zaswgjxv' /* Trop d'ecarts de points */,
                                        )
                                      ],
                                      onChanged: (val) => safeSetState(
                                          () => _model.dropReasonsValue = val),
                                      width: 300.0,
                                      height: 55.0,
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
                                        'y9wz9dgj' /* Raisons */,
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
                                    if (_model.dropReasonsValue != null &&
                                        _model.dropReasonsValue != '')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 40.0, 0.0, 20.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await MyNotificationsRecord.createDoc(
                                                      bossNotifEEventPageIUDAdminMyNotificationsRecord
                                                          .userRef!)
                                                  .set({
                                                ...createMyNotificationsRecordData(
                                                  text:
                                                      'A refusé votre invitation à jouer contre votre équipe, pour la raison suivante,',
                                                  seen: false,
                                                  textReasons:
                                                      _model.dropReasonsValue,
                                                  eteamExt:
                                                      bossNotifEEventPageIUDAdminMyNotificationsRecord
                                                          .eteamExt,
                                                  userRef: currentUserReference,
                                                ),
                                                ...mapToFirestore(
                                                  {
                                                    'date_time': FieldValue
                                                        .serverTimestamp(),
                                                  },
                                                ),
                                              });
                                              triggerPushNotification(
                                                notificationTitle:
                                                    currentUserDisplayName,
                                                notificationText:
                                                    'A refusé votre invitation à jouer contre votre équipe.',
                                                notificationImageUrl:
                                                    currentUserPhoto,
                                                userRefs: [
                                                  bossNotifEEventPageIUDAdminMyNotificationsRecord
                                                      .userRef!
                                                ],
                                                initialPageName: 'MyNotifsList',
                                                parameterData: {},
                                              );

                                              await currentUserDocument!
                                                  .eteamRef!
                                                  .update({
                                                ...mapToFirestore(
                                                  {
                                                    'guest':
                                                        FieldValue.delete(),
                                                  },
                                                ),
                                              });

                                              await widget.notifRef!.update(
                                                  createMyNotificationsRecordData(
                                                seen: true,
                                              ));
                                              await widget.notifRef!.delete();
                                              context.safePop();
                                            },
                                            child: Icon(
                                              Icons.highlight_off_rounded,
                                              color: valueOrDefault<Color>(
                                                currentUserDocument?.color1,
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                              ),
                                              size: 50.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                );
                              },
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
      },
    );
  }
}
