import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'team_events_list_model.dart';
export 'team_events_list_model.dart';

class TeamEventsListWidget extends StatefulWidget {
  const TeamEventsListWidget({
    super.key,
    required this.teamRef,
  });

  final DocumentReference? teamRef;

  static String routeName = 'TeamEventsList';
  static String routePath = '/teamEventsList';

  @override
  State<TeamEventsListWidget> createState() => _TeamEventsListWidgetState();
}

class _TeamEventsListWidgetState extends State<TeamEventsListWidget> {
  late TeamEventsListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TeamEventsListModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<TeamsRecord>(
      stream: TeamsRecord.getDocument(widget.teamRef!),
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

        final teamEventsListTeamsRecord = snapshot.data!;

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
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                    child: Container(
                      height: 230.0,
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
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: CachedNetworkImageProvider(
                                    teamEventsListTeamsRecord.logo,
                                  ),
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
                          if (teamEventsListTeamsRecord.profilPicture == '')
                            Align(
                              alignment: AlignmentDirectional(-1.0, 1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width: 130.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderRadius: BorderRadius.circular(3.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.network(
                                      teamEventsListTeamsRecord.logo,
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  125.0, 0.0, 5.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    teamEventsListTeamsRecord.name,
                                    maxLines: 2,
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          color:
                                              teamEventsListTeamsRecord.color1,
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
                                  ),
                                ],
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
                                          5.0, 0.0, 0.0, 10.0),
                                      child: FlutterFlowIconButton(
                                        borderColor: valueOrDefault<Color>(
                                          teamEventsListTeamsRecord.color2,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                        borderRadius: 50.0,
                                        borderWidth: 1.0,
                                        buttonSize: 50.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        icon: Icon(
                                          Icons.arrow_back_ios_new_rounded,
                                          color: valueOrDefault<Color>(
                                            teamEventsListTeamsRecord.color1,
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
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 1.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      if (true /* Warning: Trying to access variable not yet defined. */)
                                        FutureBuilder<
                                            List<MyNotificationsRecord>>(
                                          future:
                                              queryMyNotificationsRecordOnce(
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 0.0),
                                                  child: AuthUserStreamWidget(
                                                    builder: (context) =>
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
                                                          MyNotifsListWidget
                                                              .routeName,
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .rightToLeft,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      400),
                                                            ),
                                                          },
                                                        );
                                                      },
                                                      child: Icon(
                                                        Icons
                                                            .notifications_active_outlined,
                                                        color: valueOrDefault<
                                                            Color>(
                                                          currentUserDocument
                                                              ?.color1,
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                              ],
                            ),
                          ),
                          if (teamEventsListTeamsRecord.profilPicture != '')
                            Align(
                              alignment: AlignmentDirectional(-1.0, 1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    shape: BoxShape.circle,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.network(
                                      teamEventsListTeamsRecord.profilPicture,
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
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
                          EdgeInsetsDirectional.fromSTEB(0.0, 240.0, 0.0, 50.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Divider(
                              thickness: 1.0,
                              color: valueOrDefault<Color>(
                                teamEventsListTeamsRecord.color2,
                                FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 5.0, 20.0, 5.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
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
                                          ListPostsTeamWidget.routeName,
                                          queryParameters: {
                                            'teamRef': serializeParam(
                                              widget.teamRef,
                                              ParamType.DocumentReference,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                              duration:
                                                  Duration(milliseconds: 600),
                                            ),
                                          },
                                        );
                                      },
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
                                            AuthUserStreamWidget(
                                              builder: (context) => Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '71ffddp4' /* Actualités */,
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
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '7s2eelno' /* News */,
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
                                            ),
                                          if (valueOrDefault(
                                                  currentUserDocument?.langage,
                                                  '') ==
                                              'deutsch')
                                            AuthUserStreamWidget(
                                              builder: (context) => Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'z4mx224e' /* Neuigkeiten */,
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
                                            ),
                                          if (valueOrDefault(
                                                  currentUserDocument?.langage,
                                                  '') ==
                                              'espanol')
                                            AuthUserStreamWidget(
                                              builder: (context) => Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'q52d80du' /* Noticias */,
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
                                            ),
                                          if (valueOrDefault(
                                                  currentUserDocument?.langage,
                                                  '') ==
                                              'italiano')
                                            AuthUserStreamWidget(
                                              builder: (context) => Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'olftgxnc' /* Notizie */,
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
                                            ),
                                          if (valueOrDefault(
                                                  currentUserDocument?.langage,
                                                  '') ==
                                              'portugues')
                                            AuthUserStreamWidget(
                                              builder: (context) => Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'jf5xnttd' /* Novidades */,
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
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            ListPostsTeamWidget.routeName,
                                            queryParameters: {
                                              'teamRef': serializeParam(
                                                widget.teamRef,
                                                ParamType.DocumentReference,
                                              ),
                                            }.withoutNulls,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .rightToLeft,
                                                duration:
                                                    Duration(milliseconds: 600),
                                              ),
                                            },
                                          );
                                        },
                                        child: Icon(
                                          Icons.newspaper_rounded,
                                          color: valueOrDefault<Color>(
                                            teamEventsListTeamsRecord.color1,
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
                            Divider(
                              thickness: 1.0,
                              color: valueOrDefault<Color>(
                                teamEventsListTeamsRecord.color2,
                                FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                                      FFLocalizations.of(context).getText(
                                        'dm335n1k' /* Evénements */,
                                      ),
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
                                if ((valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        'english') ||
                                    (valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        'american'))
                                  AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      FFLocalizations.of(context).getText(
                                        'uphue3dk' /* Events */,
                                      ),
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
                                if (valueOrDefault(
                                        currentUserDocument?.langage, '') ==
                                    'deutsch')
                                  AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      FFLocalizations.of(context).getText(
                                        '91773pfx' /* Veranstaltungen */,
                                      ),
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
                                if (valueOrDefault(
                                        currentUserDocument?.langage, '') ==
                                    'espanol')
                                  AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      FFLocalizations.of(context).getText(
                                        'udasahst' /* Eventos */,
                                      ),
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
                                if (valueOrDefault(
                                        currentUserDocument?.langage, '') ==
                                    'italiano')
                                  AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      FFLocalizations.of(context).getText(
                                        'fj0fy8g8' /* Eventi */,
                                      ),
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
                                if (valueOrDefault(
                                        currentUserDocument?.langage, '') ==
                                    'portugues')
                                  AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      FFLocalizations.of(context).getText(
                                        '3aozbokg' /* Eventos */,
                                      ),
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
                              color: valueOrDefault<Color>(
                                teamEventsListTeamsRecord.color2,
                                FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 50.0),
                              child: StreamBuilder<List<TeamEventsRecord>>(
                                stream: queryTeamEventsRecord(
                                  parent: widget.teamRef,
                                  queryBuilder: (teamEventsRecord) =>
                                      teamEventsRecord.orderBy('started_time',
                                          descending: true),
                                  limit: 30,
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
                                      columnTeamEventsRecordList =
                                      snapshot.data!;

                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        columnTeamEventsRecordList.length,
                                        (columnIndex) {
                                      final columnTeamEventsRecord =
                                          columnTeamEventsRecordList[
                                              columnIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: StreamBuilder<EventsRecord>(
                                          stream: EventsRecord.getDocument(
                                              columnTeamEventsRecord.events!),
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
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 5.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                if (columnEventEventsRecord
                                                                        .statut ==
                                                                    true)
                                                                  Container(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .success,
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                  ),
                                                                if (columnEventEventsRecord
                                                                        .statut ==
                                                                    false)
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
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
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        shape: BoxShape
                                                                            .circle,
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
                                                                columnEventEventsRecord
                                                                    .date,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              ),
                                                              '00/00/0000',
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
                                                                '29pc606c' /* - */,
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
                                                          ),
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              columnEventEventsRecord
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
                                                                '6wzter9t' /* : */,
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
                                                          ),
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              functions.zeroTo00(
                                                                  columnEventEventsRecord
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
                                                    ],
                                                  ),
                                                ),
                                                if (columnEventEventsRecord
                                                        .sportValue ==
                                                    'sports.meca')
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      columnEventEventsRecord
                                                          .week,
                                                      textAlign:
                                                          TextAlign.start,
                                                      maxLines: 2,
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
                                                  ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      if (columnEventEventsRecord
                                                              .sportValue !=
                                                          'sports.meca')
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
                                                                    if ((columnEventEventsRecord.sportValue !=
                                                                            'mma') &&
                                                                        (columnEventEventsRecord.sportValue !=
                                                                            'tennis'))
                                                                      InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          context
                                                                              .pushNamed(
                                                                            TeamPageWidget.routeName,
                                                                            queryParameters:
                                                                                {
                                                                              'teamRef': serializeParam(
                                                                                contDomTeamsRecord.reference,
                                                                                ParamType.DocumentReference,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              55.0,
                                                                          height:
                                                                              35.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(3.0),
                                                                          ),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(0.0),
                                                                            child:
                                                                                Image.network(
                                                                              contDomTeamsRecord.logo,
                                                                              width: 300.0,
                                                                              height: 200.0,
                                                                              fit: BoxFit.fitHeight,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if ((columnEventEventsRecord.sportValue ==
                                                                            'mma') ||
                                                                        (columnEventEventsRecord.sportValue ==
                                                                            'tennis'))
                                                                      InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          context
                                                                              .pushNamed(
                                                                            TeamPageWidget.routeName,
                                                                            queryParameters:
                                                                                {
                                                                              'teamRef': serializeParam(
                                                                                contDomTeamsRecord.reference,
                                                                                ParamType.DocumentReference,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              45.0,
                                                                          height:
                                                                              35.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(3.0),
                                                                          ),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                            child:
                                                                                Image.network(
                                                                              contDomTeamsRecord.logo,
                                                                              width: 300.0,
                                                                              height: 200.0,
                                                                              fit: BoxFit.fitWidth,
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
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          context
                                                                              .pushNamed(
                                                                            TeamPageWidget.routeName,
                                                                            queryParameters:
                                                                                {
                                                                              'teamRef': serializeParam(
                                                                                contDomTeamsRecord.reference,
                                                                                ParamType.DocumentReference,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        },
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
                                                                                font: GoogleFonts.poppins(
                                                                                  fontWeight: FlutterFlowTheme.of(context).labelSmall.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).labelSmall.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
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
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                context
                                                                    .pushNamed(
                                                                  EventPageWidget
                                                                      .routeName,
                                                                  queryParameters:
                                                                      {
                                                                    'eventRef':
                                                                        serializeParam(
                                                                      columnEventEventsRecord
                                                                          .reference,
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
                                                              child: Icon(
                                                                Icons
                                                                    .stadium_rounded,
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  teamEventsListTeamsRecord
                                                                      .color1,
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
                                                      if (columnEventEventsRecord
                                                              .sportValue !=
                                                          'sports.meca')
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
                                                                    if ((columnEventEventsRecord.sportValue !=
                                                                            'mma') &&
                                                                        (columnEventEventsRecord.sportValue !=
                                                                            'tennis'))
                                                                      InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          context
                                                                              .pushNamed(
                                                                            TeamPageWidget.routeName,
                                                                            queryParameters:
                                                                                {
                                                                              'teamRef': serializeParam(
                                                                                contExtTeamsRecord.reference,
                                                                                ParamType.DocumentReference,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              55.0,
                                                                          height:
                                                                              35.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(3.0),
                                                                          ),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(0.0),
                                                                            child:
                                                                                Image.network(
                                                                              contExtTeamsRecord.logo,
                                                                              width: 300.0,
                                                                              height: 200.0,
                                                                              fit: BoxFit.fitHeight,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if ((columnEventEventsRecord.sportValue ==
                                                                            'mma') ||
                                                                        (columnEventEventsRecord.sportValue ==
                                                                            'tennis'))
                                                                      InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          context
                                                                              .pushNamed(
                                                                            TeamPageWidget.routeName,
                                                                            queryParameters:
                                                                                {
                                                                              'teamRef': serializeParam(
                                                                                contExtTeamsRecord.reference,
                                                                                ParamType.DocumentReference,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              45.0,
                                                                          height:
                                                                              35.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(3.0),
                                                                          ),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                            child:
                                                                                Image.network(
                                                                              contExtTeamsRecord.logo,
                                                                              width: 300.0,
                                                                              height: 200.0,
                                                                              fit: BoxFit.fitWidth,
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
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          context
                                                                              .pushNamed(
                                                                            TeamPageWidget.routeName,
                                                                            queryParameters:
                                                                                {
                                                                              'teamRef': serializeParam(
                                                                                contExtTeamsRecord.reference,
                                                                                ParamType.DocumentReference,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        },
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
                                                                                font: GoogleFonts.poppins(
                                                                                  fontWeight: FlutterFlowTheme.of(context).labelSmall.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).labelSmall.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
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
                                                if ((columnEventEventsRecord
                                                            .seenScore ==
                                                        true) &&
                                                    (columnEventEventsRecord
                                                            .sportValue !=
                                                        'sports.meca'))
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
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
                                                              columnEventEventsRecord
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
                                                              columnEventEventsRecord
                                                                  .scoreExt
                                                                  .toString(),
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
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
                                                      ),
                                                    ],
                                                  ),
                                                Divider(
                                                  thickness: 1.0,
                                                  color: valueOrDefault<Color>(
                                                    teamEventsListTeamsRecord
                                                        .color2,
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
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
                  if (!isWeb)
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: FlutterFlowAdBanner(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 70.0,
                        showsTestAd: false,
                        iOSAdUnitID: 'ca-app-pub-5890797816389993/8705679157',
                        androidAdUnitID:
                            'ca-app-pub-5890797816389993/4818405035',
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
