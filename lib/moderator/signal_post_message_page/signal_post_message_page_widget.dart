import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/users/copy_text/copy_text_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'signal_post_message_page_model.dart';
export 'signal_post_message_page_model.dart';

class SignalPostMessagePageWidget extends StatefulWidget {
  const SignalPostMessagePageWidget({
    super.key,
    required this.notifRef,
  });

  final DocumentReference? notifRef;

  static String routeName = 'SignalPostMessagePage';
  static String routePath = '/signalPostMessagePage';

  @override
  State<SignalPostMessagePageWidget> createState() =>
      _SignalPostMessagePageWidgetState();
}

class _SignalPostMessagePageWidgetState
    extends State<SignalPostMessagePageWidget> {
  late SignalPostMessagePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignalPostMessagePageModel());
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

        final signalPostMessagePageMyNotificationsRecord = snapshot.data!;

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
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: StreamBuilder<PostMessagesRecord>(
                      stream: PostMessagesRecord.getDocument(
                          signalPostMessagePageMyNotificationsRecord
                              .postMessage!),
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

                        final columnPostMessagesRecord = snapshot.data!;

                        return SingleChildScrollView(
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
                                  Text(
                                    'Détails signalement',
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .displaySmallFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .displaySmallIsCustom,
                                        ),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: StreamBuilder<UsersRecord>(
                                  stream: UsersRecord.getDocument(
                                      signalPostMessagePageMyNotificationsRecord
                                          .userRef!),
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

                                    final columnUsersRecord = snapshot.data!;

                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 6.0, 0.0),
                                              child: Container(
                                                width: 35.0,
                                                height: 35.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  child: Image.network(
                                                    columnUsersRecord.photoUrl,
                                                    width: 300.0,
                                                    height: 200.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                  PublicProfilPageWidget
                                                      .routeName,
                                                  queryParameters: {
                                                    'userRef': serializeParam(
                                                      columnUsersRecord
                                                          .reference,
                                                      ParamType
                                                          .DocumentReference,
                                                    ),
                                                  }.withoutNulls,
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
                                              child: Text(
                                                valueOrDefault<String>(
                                                  columnUsersRecord.displayName,
                                                  'NewUser',
                                                ),
                                                maxLines: 1,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await Clipboard.setData(
                                                ClipboardData(
                                                    text:
                                                        columnUsersRecord.uid));
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(context)
                                                          .unfocus();
                                                      FocusManager
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child: CopyTextWidget(),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          },
                                          child: Text(
                                            columnUsersRecord.uid,
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .warning,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 30.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    columnUsersRecord.stock
                                                        .toString(),
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMediumIsCustom,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: 30.0,
                                                      height: 30.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(2.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      24.0),
                                                          child: Image.asset(
                                                            'assets/images/logo_monnaiel.jpg',
                                                            width: 50.0,
                                                            height: 50.0,
                                                            fit: BoxFit.cover,
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
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 30.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        columnUsersRecord
                                                            .bests.length
                                                            .toString(),
                                                        '0',
                                                      ),
                                                      maxLines: 1,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Icon(
                                                Icons.star_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                size: 24.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 30.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        columnUsersRecord
                                                            .fans.length
                                                            .toString(),
                                                        '0',
                                                      ),
                                                      maxLines: 1,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Icon(
                                                Icons.groups_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                size: 24.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 30.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        columnUsersRecord
                                                            .blocks.length
                                                            .toString(),
                                                        '0',
                                                      ),
                                                      maxLines: 1,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Icon(
                                                Icons.person_off,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                size: 24.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 0.0, 10.0),
                                  child: Text(
                                    'veut mettre un carton rouge à',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: StreamBuilder<UsersRecord>(
                                  stream: UsersRecord.getDocument(
                                      columnPostMessagesRecord.commUser!),
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

                                    final columnUsersRecord = snapshot.data!;

                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 6.0, 0.0),
                                              child: Container(
                                                width: 35.0,
                                                height: 35.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  child: Image.network(
                                                    columnUsersRecord.photoUrl,
                                                    width: 300.0,
                                                    height: 200.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                  PublicProfilPageWidget
                                                      .routeName,
                                                  queryParameters: {
                                                    'userRef': serializeParam(
                                                      columnUsersRecord
                                                          .reference,
                                                      ParamType
                                                          .DocumentReference,
                                                    ),
                                                  }.withoutNulls,
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
                                              child: Text(
                                                valueOrDefault<String>(
                                                  columnUsersRecord.displayName,
                                                  'NewUser',
                                                ),
                                                maxLines: 1,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await Clipboard.setData(
                                                ClipboardData(
                                                    text:
                                                        columnUsersRecord.uid));
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(context)
                                                          .unfocus();
                                                      FocusManager
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child: CopyTextWidget(),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          },
                                          child: Text(
                                            columnUsersRecord.uid,
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .warning,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 30.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    columnUsersRecord.stock
                                                        .toString(),
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMediumIsCustom,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: 30.0,
                                                      height: 30.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(2.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      24.0),
                                                          child: Image.asset(
                                                            'assets/images/logo_monnaiel.jpg',
                                                            width: 50.0,
                                                            height: 50.0,
                                                            fit: BoxFit.cover,
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
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 30.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        columnUsersRecord
                                                            .bests.length
                                                            .toString(),
                                                        '0',
                                                      ),
                                                      maxLines: 1,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Icon(
                                                Icons.star_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                size: 24.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 30.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        columnUsersRecord
                                                            .fans.length
                                                            .toString(),
                                                        '0',
                                                      ),
                                                      maxLines: 1,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Icon(
                                                Icons.groups_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                size: 24.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 30.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        columnUsersRecord
                                                            .blocks.length
                                                            .toString(),
                                                        '0',
                                                      ),
                                                      maxLines: 1,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Icon(
                                                Icons.person_off,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                size: 24.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 20.0, 0.0, 10.0),
                                  child: Text(
                                    'Pour la raison suivante',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    signalPostMessagePageMyNotificationsRecord
                                        .text,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyLargeIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    signalPostMessagePageMyNotificationsRecord
                                        .textFouls,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyLargeIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Text(
                                    dateTimeFormat(
                                      "d/M H:mm",
                                      signalPostMessagePageMyNotificationsRecord
                                          .dateTime!,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyLargeIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 0.0, 10.0),
                                  child: Text(
                                    'Dans le commentaire suivant',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      columnPostMessagesRecord.text,
                                      style: FlutterFlowTheme.of(context)
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
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 15.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await Clipboard.setData(ClipboardData(
                                              text: columnPostMessagesRecord
                                                  .text));
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    FocusScope.of(context)
                                                        .unfocus();
                                                    FocusManager
                                                        .instance.primaryFocus
                                                        ?.unfocus();
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child: CopyTextWidget(),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: Icon(
                                          Icons.content_copy_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 25.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (columnPostMessagesRecord.audio != '')
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 6.0, 0.0, 0.0),
                                        child: Container(
                                          width: 350.0,
                                          height: 78.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(3.0),
                                            child: FlutterFlowAudioPlayer(
                                              audio: Audio.network(
                                                columnPostMessagesRecord.audio,
                                                metas: Metas(
                                                  title: ' ',
                                                ),
                                              ),
                                              titleTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmallFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmallIsCustom,
                                                      ),
                                              playbackDurationTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMediumIsCustom,
                                                      ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              playbackButtonColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              activeTrackColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              inactiveTrackColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 0.0,
                                              playInBackground: PlayInBackground
                                                  .disabledPause,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      dateTimeFormat(
                                        "d/M H:mm",
                                        columnPostMessagesRecord.createdTime!,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                      style: FlutterFlowTheme.of(context)
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
                                    ),
                                  ),
                                  Text(
                                    columnPostMessagesRecord.reference.id,
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 15.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await Clipboard.setData(ClipboardData(
                                              text: columnPostMessagesRecord
                                                  .reference.id));
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    FocusScope.of(context)
                                                        .unfocus();
                                                    FocusManager
                                                        .instance.primaryFocus
                                                        ?.unfocus();
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child: CopyTextWidget(),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: Icon(
                                          Icons.content_copy_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                          size: 25.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 40.0, 0.0, 20.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await columnPostMessagesRecord.reference
                                          .update({
                                        ...mapToFirestore(
                                          {
                                            'num_redcards':
                                                FieldValue.increment(1),
                                            'redcards': FieldValue.arrayUnion([
                                              signalPostMessagePageMyNotificationsRecord
                                                  .userRef
                                            ]),
                                          },
                                        ),
                                      });

                                      await columnPostMessagesRecord.commUser!
                                          .update({
                                        ...mapToFirestore(
                                          {
                                            'stock':
                                                FieldValue.increment(-(5.0)),
                                            'num_penalities':
                                                FieldValue.increment(1),
                                          },
                                        ),
                                      });

                                      await MyNotificationsRecord.createDoc(
                                              signalPostMessagePageMyNotificationsRecord
                                                  .userRef!)
                                          .set({
                                        ...createMyNotificationsRecordData(
                                          text: 'Carton confirmé :',
                                          moderator: currentUserReference,
                                          seen: false,
                                          textFouls:
                                              signalPostMessagePageMyNotificationsRecord
                                                  .text,
                                          postMessage:
                                              signalPostMessagePageMyNotificationsRecord
                                                  .postMessage,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'date_time':
                                                FieldValue.serverTimestamp(),
                                          },
                                        ),
                                      });

                                      await MyNotificationsRecord.createDoc(
                                              columnPostMessagesRecord
                                                  .commUser!)
                                          .set({
                                        ...createMyNotificationsRecordData(
                                          text:
                                              'Vous avez reçu un carton rouge pour votre commentaire :',
                                          moderator: currentUserReference,
                                          seen: false,
                                          textFouls:
                                              signalPostMessagePageMyNotificationsRecord
                                                  .text,
                                          postMessage:
                                              signalPostMessagePageMyNotificationsRecord
                                                  .postMessage,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'date_time':
                                                FieldValue.serverTimestamp(),
                                          },
                                        ),
                                      });

                                      await signalPostMessagePageMyNotificationsRecord
                                          .reference
                                          .update(
                                              createMyNotificationsRecordData(
                                        modSeen: true,
                                      ));
                                      await signalPostMessagePageMyNotificationsRecord
                                          .reference
                                          .delete();

                                      context.pushNamed(
                                        ModeratorPageWidget.routeName,
                                        extra: <String, dynamic>{
                                          '__transition_info__': TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.scale,
                                            alignment: Alignment.bottomCenter,
                                            duration:
                                                Duration(milliseconds: 600),
                                          ),
                                        },
                                      );
                                    },
                                    text: 'Confirmer le carton rouge',
                                    options: FFButtonOptions(
                                      width: 350.0,
                                      height: 50.0,
                                      padding: EdgeInsets.all(0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context).error,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(40.0),
                                      hoverColor:
                                          FlutterFlowTheme.of(context).error,
                                      hoverTextColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Text(
                                    'Refuser la demande',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: Text(
                                    'pour la raison suivante',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleMediumIsCustom,
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
                                  'manque.delements',
                                  'chambrage',
                                  'pas.dans.cgu'
                                ]),
                                optionLabels: [
                                  'Manque d\'elements',
                                  'Chambrage ',
                                  'Pas mentionnés dans CGU'
                                ],
                                onChanged: (val) => safeSetState(
                                    () => _model.dropReasonsValue = val),
                                width: 300.0,
                                height: 56.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                                hintText: 'Raisons',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isOverButton: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 40.0, 0.0, 40.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await MyNotificationsRecord.createDoc(
                                              signalPostMessagePageMyNotificationsRecord
                                                  .userRef!)
                                          .set({
                                        ...createMyNotificationsRecordData(
                                          text:
                                              'Pas de cartons pour cette fois ci :',
                                          moderator: currentUserReference,
                                          seen: false,
                                          textFouls: _model.dropReasonsValue,
                                          postMessage:
                                              signalPostMessagePageMyNotificationsRecord
                                                  .postMessage,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'date_time':
                                                FieldValue.serverTimestamp(),
                                          },
                                        ),
                                      });

                                      await signalPostMessagePageMyNotificationsRecord
                                          .reference
                                          .update(
                                              createMyNotificationsRecordData(
                                        modSeen: true,
                                      ));
                                      await widget.notifRef!.delete();

                                      context.pushNamed(
                                        ModeratorPageWidget.routeName,
                                        extra: <String, dynamic>{
                                          '__transition_info__': TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.scale,
                                            alignment: Alignment.bottomCenter,
                                            duration:
                                                Duration(milliseconds: 600),
                                          ),
                                        },
                                      );
                                    },
                                    text: 'Pas de carton',
                                    options: FFButtonOptions(
                                      width: 350.0,
                                      height: 50.0,
                                      padding: EdgeInsets.all(0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 20.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await columnPostMessagesRecord.commUser!
                                          .update({
                                        ...mapToFirestore(
                                          {
                                            'stock':
                                                FieldValue.increment(-(10.0)),
                                            'num_penalities':
                                                FieldValue.increment(2),
                                          },
                                        ),
                                      });

                                      await MyNotificationsRecord.createDoc(
                                              columnPostMessagesRecord
                                                  .commUser!)
                                          .set({
                                        ...createMyNotificationsRecordData(
                                          text:
                                              'Carton confirmé et suppression de votre commentaire :',
                                          moderator: currentUserReference,
                                          seen: false,
                                          textFouls:
                                              signalPostMessagePageMyNotificationsRecord
                                                  .text,
                                          postMessage:
                                              signalPostMessagePageMyNotificationsRecord
                                                  .postMessage,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'date_time':
                                                FieldValue.serverTimestamp(),
                                          },
                                        ),
                                      });

                                      await MyNotificationsRecord.createDoc(
                                              signalPostMessagePageMyNotificationsRecord
                                                  .userRef!)
                                          .set({
                                        ...createMyNotificationsRecordData(
                                          text:
                                              'Carton confirmé et suppression du commentaire :',
                                          moderator: currentUserReference,
                                          seen: false,
                                          textFouls:
                                              signalPostMessagePageMyNotificationsRecord
                                                  .text,
                                          postMessage:
                                              signalPostMessagePageMyNotificationsRecord
                                                  .postMessage,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'date_time':
                                                FieldValue.serverTimestamp(),
                                          },
                                        ),
                                      });

                                      await signalPostMessagePageMyNotificationsRecord
                                          .reference
                                          .update(
                                              createMyNotificationsRecordData(
                                        modSeen: true,
                                      ));
                                      await columnPostMessagesRecord.reference
                                          .delete();
                                      await signalPostMessagePageMyNotificationsRecord
                                          .reference
                                          .delete();

                                      context.pushNamed(
                                        ModeratorPageWidget.routeName,
                                        extra: <String, dynamic>{
                                          '__transition_info__': TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.scale,
                                            alignment: Alignment.bottomCenter,
                                            duration:
                                                Duration(milliseconds: 600),
                                          ),
                                        },
                                      );
                                    },
                                    text: 'Suppprimer le commentaire',
                                    options: FFButtonOptions(
                                      width: 350.0,
                                      height: 50.0,
                                      padding: EdgeInsets.all(0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context).error,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(40.0),
                                      hoverColor:
                                          FlutterFlowTheme.of(context).error,
                                      hoverTextColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
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
