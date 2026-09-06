import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'list_comms_post_com_page_model.dart';
export 'list_comms_post_com_page_model.dart';

class ListCommsPostComPageWidget extends StatefulWidget {
  const ListCommsPostComPageWidget({
    super.key,
    required this.startedCommRef,
  });

  final DocumentReference? startedCommRef;

  static String routeName = 'ListCommsPostComPage';
  static String routePath = '/listCommsPostComPage';

  @override
  State<ListCommsPostComPageWidget> createState() =>
      _ListCommsPostComPageWidgetState();
}

class _ListCommsPostComPageWidgetState
    extends State<ListCommsPostComPageWidget> {
  late ListCommsPostComPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListCommsPostComPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PostMessagesRecord>(
      stream: PostMessagesRecord.getDocument(widget.startedCommRef!),
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

        final listCommsPostComPagePostMessagesRecord = snapshot.data!;

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
                child: Visibility(
                  visible: responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                                '__transition_info__':
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
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: StreamBuilder<UsersRecord>(
                                          stream: UsersRecord.getDocument(
                                              listCommsPostComPagePostMessagesRecord
                                                  .commUser!),
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

                                            final rowUsersRecord =
                                                snapshot.data!;

                                            return Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 6.0, 0.0),
                                                  child: Container(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                      child: Image.network(
                                                        rowUsersRecord.photoUrl,
                                                        width: 300.0,
                                                        height: 200.0,
                                                        fit: BoxFit.fitHeight,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
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
                                                        PublicProfilPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'userRef':
                                                              serializeParam(
                                                            rowUsersRecord
                                                                .reference,
                                                            ParamType
                                                                .DocumentReference,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          '__transition_info__':
                                                              TransitionInfo(
                                                            hasTransition: true,
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
                                                    child: Text(
                                                      rowUsersRecord
                                                          .displayName,
                                                      maxLines: 1,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            color:
                                                                rowUsersRecord
                                                                    .color1,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallIsCustom,
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
                                  0.0, 0.0, 0.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AuthUserStreamWidget(
                                    builder: (context) =>
                                        FlutterFlowDropDown<String>(
                                      controller:
                                          _model.dropLigueValueController ??=
                                              FormFieldController<String>(
                                        _model.dropLigueValue ??=
                                            valueOrDefault(
                                                currentUserDocument?.rankValue,
                                                ''),
                                      ),
                                      options: List<String>.from([
                                        'amateur',
                                        'pro',
                                        'champion',
                                        'legende',
                                        ''
                                      ]),
                                      optionLabels: [
                                        'Amateur',
                                        'Pro',
                                        'Champion',
                                        'Légende',
                                        'Ligues'
                                      ],
                                      onChanged: (val) => safeSetState(
                                          () => _model.dropLigueValue = val),
                                      width: 250.0,
                                      height: 56.0,
                                      textStyle: FlutterFlowTheme.of(context)
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
                                      hintText: 'Ligue',
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 2.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 4.0, 16.0, 4.0),
                                      hidesUnderline: true,
                                      isOverButton: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
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
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
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
                                                              milliseconds:
                                                                  400),
                                                        ),
                                                      },
                                                    );
                                                  },
                                                  child: Icon(
                                                    Icons
                                                        .notifications_active_outlined,
                                                    color:
                                                        valueOrDefault<Color>(
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
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 120.0, 10.0, 70.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                if (!(currentUserDocument?.blocks.toList() ??
                                        [])
                                    .contains(
                                        listCommsPostComPagePostMessagesRecord
                                            .commUser))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 5.0, 5.0, 50.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => StreamBuilder<
                                          List<PostMessagesRecord>>(
                                        stream: queryPostMessagesRecord(
                                          queryBuilder: (postMessagesRecord) =>
                                              postMessagesRecord
                                                  .where(
                                                    'started_comm',
                                                    isEqualTo:
                                                        widget.startedCommRef,
                                                  )
                                                  .orderBy('created_time',
                                                      descending: true),
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
                                                    FlutterFlowTheme.of(context)
                                                        .accent4,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<PostMessagesRecord>
                                              columnCommsSportPostMessagesRecordList =
                                              snapshot.data!;

                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: List.generate(
                                                columnCommsSportPostMessagesRecordList
                                                    .length,
                                                (columnCommsSportIndex) {
                                              final columnCommsSportPostMessagesRecord =
                                                  columnCommsSportPostMessagesRecordList[
                                                      columnCommsSportIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 5.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    StreamBuilder<UsersRecord>(
                                                      stream: UsersRecord
                                                          .getDocument(
                                                              columnCommsSportPostMessagesRecord
                                                                  .commUser!),
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

                                                        final columnUsersRecord =
                                                            snapshot.data!;

                                                        return Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (columnUsersRecord
                                                                    .rankValue ==
                                                                _model
                                                                    .dropLigueValue)
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  if (!columnUsersRecord
                                                                      .blocks
                                                                      .contains(
                                                                          currentUserReference))
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 6.0, 0.0),
                                                                                child: Container(
                                                                                  width: 35.0,
                                                                                  height: 35.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    shape: BoxShape.circle,
                                                                                  ),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(25.0),
                                                                                    child: Image.network(
                                                                                      columnUsersRecord.photoUrl,
                                                                                      width: 300.0,
                                                                                      height: 200.0,
                                                                                      fit: BoxFit.fitHeight,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    context.pushNamed(
                                                                                      PublicProfilPageWidget.routeName,
                                                                                      queryParameters: {
                                                                                        'userRef': serializeParam(
                                                                                          columnUsersRecord.reference,
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
                                                                                  child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      columnUsersRecord.displayName,
                                                                                      'NewUser',
                                                                                    ),
                                                                                    maxLines: 1,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                          color: valueOrDefault<Color>(
                                                                                            columnUsersRecord.color1,
                                                                                            FlutterFlowTheme.of(context).primaryText,
                                                                                          ),
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              5.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Container(
                                                                                width: 290.0,
                                                                                height: 50.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsets.all(5.0),
                                                                                  child: Text(
                                                                                    columnCommsSportPostMessagesRecord.text,
                                                                                    maxLines: 2,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
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
                                                                                        PostMessagePageWidget.routeName,
                                                                                        queryParameters: {
                                                                                          'startedCommRef': serializeParam(
                                                                                            columnCommsSportPostMessagesRecord.reference,
                                                                                            ParamType.DocumentReference,
                                                                                          ),
                                                                                        }.withoutNulls,
                                                                                        extra: <String, dynamic>{
                                                                                          '__transition_info__': TransitionInfo(
                                                                                            hasTransition: true,
                                                                                            transitionType: PageTransitionType.scale,
                                                                                            alignment: Alignment.bottomCenter,
                                                                                            duration: Duration(milliseconds: 600),
                                                                                          ),
                                                                                        },
                                                                                      );
                                                                                    },
                                                                                    child: Icon(
                                                                                      Icons.remove_red_eye_outlined,
                                                                                      color: valueOrDefault<Color>(
                                                                                        columnUsersRecord.color1,
                                                                                        FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                      size: 30.0,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                5.0),
                                                                            child:
                                                                                Text(
                                                                              dateTimeFormat(
                                                                                "d/M H:mm",
                                                                                columnCommsSportPostMessagesRecord.createdTime!,
                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                              ),
                                                                              maxLines: 1,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              5.0,
                                                                              10.0,
                                                                              5.0),
                                                                          child:
                                                                              SingleChildScrollView(
                                                                            scrollDirection:
                                                                                Axis.horizontal,
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      if (columnCommsSportPostMessagesRecord.image != '')
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.image,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      if (columnCommsSportPostMessagesRecord.audio != '')
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                          child: Icon(
                                                                                            Icons.hearing_rounded,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                        child: Icon(
                                                                                          Icons.insert_comment_rounded,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 20.0,
                                                                                        ),
                                                                                      ),
                                                                                      Text(
                                                                                        valueOrDefault<String>(
                                                                                          columnCommsSportPostMessagesRecord.numComments.toString(),
                                                                                          '0',
                                                                                        ),
                                                                                        maxLines: 1,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                        child: Icon(
                                                                                          Icons.favorite_rounded,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 20.0,
                                                                                        ),
                                                                                      ),
                                                                                      Text(
                                                                                        valueOrDefault<String>(
                                                                                          columnCommsSportPostMessagesRecord.numLikes.toString(),
                                                                                          '0',
                                                                                        ),
                                                                                        maxLines: 1,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                        child: Icon(
                                                                                          Icons.heart_broken_rounded,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 20.0,
                                                                                        ),
                                                                                      ),
                                                                                      Text(
                                                                                        valueOrDefault<String>(
                                                                                          columnCommsSportPostMessagesRecord.numDislikes.toString(),
                                                                                          '0',
                                                                                        ),
                                                                                        maxLines: 1,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                      child: Container(
                                                                                        width: 15.0,
                                                                                        height: 20.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          borderRadius: BorderRadius.circular(2.0),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Text(
                                                                                      valueOrDefault<String>(
                                                                                        columnCommsSportPostMessagesRecord.numRedcards.toString(),
                                                                                        '0',
                                                                                      ),
                                                                                      maxLines: 1,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Divider(
                                                                          thickness:
                                                                              1.0,
                                                                          color:
                                                                              valueOrDefault<Color>(
                                                                            columnUsersRecord.color2,
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                ],
                                                              ),
                                                          ],
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              );
                                            }),
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
                      Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
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
                                    'ca-app-pub-5890797816389993/4762770228',
                                androidAdUnitID:
                                    'ca-app-pub-5890797816389993/6743449195',
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
      },
    );
  }
}
