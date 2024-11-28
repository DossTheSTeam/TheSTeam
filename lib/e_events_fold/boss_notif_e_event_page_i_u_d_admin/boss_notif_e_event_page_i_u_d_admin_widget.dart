import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
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
      stream: MyNotificationsRecord.getDocument(widget!.notifRef!),
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
          onTap: () => FocusScope.of(context).unfocus(),
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
                                      valueColor: AlwaysStoppedAnimation<Color>(
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 30.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 30.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Détails invitation',
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
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
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
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .accent4,
                                              ),
                                            ),
                                          ),
                                        );
                                      }

                                      final columnTeamsRecord = snapshot.data!;

                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 6.0, 0.0),
                                                  child: Container(
                                                    width: 65.0,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      shape: BoxShape.rectangle,
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                      child: Image.network(
                                                        columnTeamsRecord.logo,
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
                                                      'TeamPage',
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
                                                    style: FlutterFlowTheme.of(
                                                            context)
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
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 20.0, 0.0, 10.0),
                                      child: Text(
                                        'Vous invite à jouer contre votre équipe.',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      dateTimeFormat(
                                          "d/M H:mm",
                                          bossNotifEEventPageIUDAdminMyNotificationsRecord
                                              .dateTime!),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
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
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .accent4,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<UsersRecord> columnUsersRecordList =
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
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 20.0, 0.0, 10.0),
                                              child: Text(
                                                'En acceptant l\'invitation vous allez créer la rencontre, discuter avec le manager adverse, afin de préparer la confrontation dans les meilleures conditions possibles.',
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 20.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
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
                                                    adminUser: columnUsersRecord
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

                                                  await TeamEventsRecord.createDoc(
                                                          bossNotifEEventPageIUDAdminMyNotificationsRecord
                                                              .eteamDom!)
                                                      .set(
                                                          createTeamEventsRecordData(
                                                    events: _model
                                                        .eEventRef?.reference,
                                                    startedTime:
                                                        _model.eEventRef?.date,
                                                  ));

                                                  await TeamEventsRecord.createDoc(
                                                          bossNotifEEventPageIUDAdminMyNotificationsRecord
                                                              .eteamExt!)
                                                      .set(
                                                          createTeamEventsRecordData(
                                                    events: _model
                                                        .eEventRef?.reference,
                                                    startedTime:
                                                        _model.eEventRef?.date,
                                                  ));

                                                  await widget!.notifRef!.update(
                                                      createMyNotificationsRecordData(
                                                    seen: true,
                                                  ));

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
                                                  await widget!.notifRef!
                                                      .delete();
                                                  context.safePop();

                                                  safeSetState(() {});
                                                },
                                                text: 'Accepter',
                                                options: FFButtonOptions(
                                                  width: 350.0,
                                                  height: 50.0,
                                                  padding: EdgeInsets.all(0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  elevation: 3.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
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
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 10.0),
                                      child: Text(
                                        'Refuser',
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
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 10.0),
                                      child: Text(
                                        'Pour la raison suivante',
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
                                      'pas.de.membres',
                                      'pas.disponible',
                                      'trop.decarts.points'
                                    ]),
                                    optionLabels: [
                                      'Vous n\'avez pas assez de membres',
                                      'Vous n\'êtes pas disponible',
                                      'Trop d\'ecarts de points'
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 40.0, 0.0, 20.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
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

                                            await currentUserDocument!.eteamRef!
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'guest': FieldValue.delete(),
                                                },
                                              ),
                                            });

                                            await widget!.notifRef!.update(
                                                createMyNotificationsRecordData(
                                              seen: true,
                                            ));
                                            await widget!.notifRef!.delete();
                                            context.safePop();
                                          },
                                          text: 'Refuser',
                                          options: FFButtonOptions(
                                            width: 350.0,
                                            height: 50.0,
                                            padding: EdgeInsets.all(0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      letterSpacing: 0.0,
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
                                                    .error,
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
