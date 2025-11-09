import '/admin_events/modif_date/modif_date_widget.dart';
import '/admin_events/modif_hour/modif_hour_widget.dart';
import '/admin_events/modif_sport/modif_sport_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'modif_event_page_model.dart';
export 'modif_event_page_model.dart';

class ModifEventPageWidget extends StatefulWidget {
  const ModifEventPageWidget({
    super.key,
    required this.eventRef,
  });

  final DocumentReference? eventRef;

  static String routeName = 'ModifEventPage';
  static String routePath = '/modifEventPage';

  @override
  State<ModifEventPageWidget> createState() => _ModifEventPageWidgetState();
}

class _ModifEventPageWidgetState extends State<ModifEventPageWidget> {
  late ModifEventPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModifEventPageModel());

    _model.modifOddFieldTextController ??= TextEditingController();
    _model.modifOddFieldFocusNode ??= FocusNode();

    _model.scoreDomFieldTextController ??= TextEditingController();
    _model.scoreDomFieldFocusNode ??= FocusNode();

    _model.scoreExtFieldTextController ??= TextEditingController();
    _model.scoreExtFieldFocusNode ??= FocusNode();
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

        final modifEventPageEventsRecord = snapshot.data!;

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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 70.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                              kTransitionInfoKey:
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
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        AddPostEventPageWidget.routeName,
                                        queryParameters: {
                                          'eventRef': serializeParam(
                                            widget.eventRef,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: FaIcon(
                                      FontAwesomeIcons.edit,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 30.0,
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 6.0),
                                  child: Text(
                                    'Créer une actu',
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelLargeFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelLargeIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 0.0),
                                child: StreamBuilder<List<PostsRecord>>(
                                  stream: queryPostsRecord(
                                    queryBuilder: (postsRecord) => postsRecord
                                        .where(
                                          'event_ref',
                                          isEqualTo: widget.eventRef,
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
                                    List<PostsRecord>
                                        rowPostsMembersPostsRecordList =
                                        snapshot.data!;

                                    return SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(
                                            rowPostsMembersPostsRecordList
                                                .length,
                                            (rowPostsMembersIndex) {
                                          final rowPostsMembersPostsRecord =
                                              rowPostsMembersPostsRecordList[
                                                  rowPostsMembersIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: Container(
                                              width: 360.0,
                                              height: 110.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 5.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      height: 93.0,
                                                      child: Stack(
                                                        children: [
                                                          if (rowPostsMembersPostsRecord
                                                                      .image !=
                                                                  '')
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      -1.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            1.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: 88.0,
                                                                  height: 70.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    image:
                                                                        DecorationImage(
                                                                      fit: BoxFit
                                                                          .fitHeight,
                                                                      image:
                                                                          CachedNetworkImageProvider(
                                                                        rowPostsMembersPostsRecord
                                                                            .image,
                                                                      ),
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, -1.0),
                                                            child: Container(
                                                              width: 90.0,
                                                              height: 70.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  image: Image
                                                                      .asset(
                                                                    'assets/images/photo-1434394354979-a235cd36269d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG1vdW50YWluc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                                                                  ).image,
                                                                ),
                                                                gradient:
                                                                    LinearGradient(
                                                                  colors: [
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground
                                                                  ],
                                                                  stops: [
                                                                    0.0,
                                                                    0.1,
                                                                    0.2,
                                                                    0.35,
                                                                    0.65,
                                                                    0.8,
                                                                    0.9,
                                                                    1.0
                                                                  ],
                                                                  begin:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          -1.0),
                                                                  end:
                                                                      AlignmentDirectional(
                                                                          0,
                                                                          1.0),
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, -1.0),
                                                            child: Container(
                                                              width: 91.0,
                                                              height: 70.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  image: Image
                                                                      .asset(
                                                                    'assets/images/photo-1434394354979-a235cd36269d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG1vdW50YWluc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                                                                  ).image,
                                                                ),
                                                                gradient:
                                                                    LinearGradient(
                                                                  colors: [
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground
                                                                  ],
                                                                  stops: [
                                                                    0.0,
                                                                    0.05,
                                                                    0.1,
                                                                    0.25,
                                                                    0.75,
                                                                    0.9,
                                                                    0.95,
                                                                    1.0
                                                                  ],
                                                                  begin:
                                                                      AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                  end:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          0),
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                              ),
                                                            ),
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          90.0,
                                                                          3.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              3.0,
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
                                                                              context.pushNamed(
                                                                                PostPageWidget.routeName,
                                                                                queryParameters: {
                                                                                  'postRef': serializeParam(
                                                                                    rowPostsMembersPostsRecord.reference,
                                                                                    ParamType.DocumentReference,
                                                                                  ),
                                                                                }.withoutNulls,
                                                                                extra: <String, dynamic>{
                                                                                  kTransitionInfoKey: TransitionInfo(
                                                                                    hasTransition: true,
                                                                                    transitionType: PageTransitionType.scale,
                                                                                    alignment: Alignment.bottomCenter,
                                                                                    duration: Duration(milliseconds: 600),
                                                                                  ),
                                                                                },
                                                                              );
                                                                            },
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      rowPostsMembersPostsRecord.title,
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
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          90.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          if (rowPostsMembersPostsRecord.description != '')
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.text_fields_outlined,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 20.0,
                                                                              ),
                                                                            ),
                                                                          if (rowPostsMembersPostsRecord.audio != '')
                                                                            Icon(
                                                                              Icons.hearing_rounded,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 20.0,
                                                                            ),
                                                                          if (rowPostsMembersPostsRecord.youtubeLink != '')
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                              child: FaIcon(
                                                                                FontAwesomeIcons.youtube,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 20.0,
                                                                              ),
                                                                            ),
                                                                        ],
                                                                      ),
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
                                                                          children: [
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
                                                                                rowPostsMembersPostsRecord.numComments.toString(),
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
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
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
                                                                                rowPostsMembersPostsRecord.numLikes.toString(),
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
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
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
                                                                                rowPostsMembersPostsRecord.numDislikes.toString(),
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
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                5.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
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
                                                                              rowPostsMembersPostsRecord.numRedcards.toString(),
                                                                              '0',
                                                                            ),
                                                                            maxLines:
                                                                                1,
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
                                                                thickness: 1.0,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        }),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (valueOrDefault(
                                          currentUserDocument?.stsocialapp,
                                          '') ==
                                      'administrateur')
                                    AuthUserStreamWidget(
                                      builder: (context) => Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Changer le sport',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLargeFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .labelLargeIsCustom,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    30.0, 0.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
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
                                                          FocusManager.instance
                                                              .primaryFocus
                                                              ?.unfocus();
                                                        },
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              ModifSportWidget(
                                                            eventRef: widget
                                                                .eventRef!,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                              child: Icon(
                                                Icons.sports_soccer_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 1.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
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
                                                      child: ModifHourWidget(
                                                        eventRef:
                                                            widget.eventRef!,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          },
                                          child: Icon(
                                            Icons.access_time,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            30.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Changer l\'heure',
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
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Changer la date',
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLargeFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelLargeIsCustom,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            30.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
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
                                                      child: ModifDateWidget(
                                                        eventRef:
                                                            widget.eventRef!,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          },
                                          child: Icon(
                                            Icons.calendar_month,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Modifier la journée',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 150.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          child: TextFormField(
                                            controller: _model
                                                .modifOddFieldTextController,
                                            focusNode:
                                                _model.modifOddFieldFocusNode,
                                            autofocus: false,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintStyle:
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
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                            textAlign: TextAlign.center,
                                            validator: _model
                                                .modifOddFieldTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        1.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await modifEventPageEventsRecord
                                            .reference
                                            .update(createEventsRecordData(
                                          week: _model
                                              .modifOddFieldTextController.text,
                                        ));
                                      },
                                      child: Icon(
                                        Icons.send_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 30.0,
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 1.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      modifEventPageEventsRecord.sportValue,
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                    ),
                                    Text(
                                      modifEventPageEventsRecord.leagueValue,
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'J : ',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelMediumIsCustom,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      modifEventPageEventsRecord.week,
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                modifEventPageEventsRecord.reference.id,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color:
                                          FlutterFlowTheme.of(context).warning,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                              Divider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 5.0, 10.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (modifEventPageEventsRecord
                                                      .statut ==
                                                  true)
                                                Container(
                                                  width: 20.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                              if (modifEventPageEventsRecord
                                                      .statut ==
                                                  false)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 20.0,
                                                    height: 20.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          dateTimeFormat(
                                            "d/M/y",
                                            modifEventPageEventsRecord.date!,
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
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 0.0, 2.0, 0.0),
                                          child: Text(
                                            '-',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            modifEventPageEventsRecord.hour
                                                .toString(),
                                            '00',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 0.0, 2.0, 0.0),
                                          child: Text(
                                            ':',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            functions.zeroTo00(
                                                modifEventPageEventsRecord
                                                    .minute),
                                            '00',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              if (modifEventPageEventsRecord.sportValue !=
                                  'sports.meca')
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 5.0, 0.0),
                                            child: Text(
                                              modifEventPageEventsRecord
                                                  .teamdom,
                                              textAlign: TextAlign.end,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmallFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmallIsCustom,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '-',
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
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              modifEventPageEventsRecord
                                                  .teamext,
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmallFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmallIsCustom,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 10.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  final selectedMedia =
                                                      await selectMediaWithSourceBottomSheet(
                                                    context: context,
                                                    maxWidth: 1000.00,
                                                    maxHeight: 1000.00,
                                                    allowPhoto: true,
                                                  );
                                                  if (selectedMedia != null &&
                                                      selectedMedia.every((m) =>
                                                          validateFileFormat(
                                                              m.storagePath,
                                                              context))) {
                                                    safeSetState(() => _model
                                                            .isDataUploading_uploadDataGa3 =
                                                        true);
                                                    var selectedUploadedFiles =
                                                        <FFUploadedFile>[];

                                                    var downloadUrls =
                                                        <String>[];
                                                    try {
                                                      selectedUploadedFiles =
                                                          selectedMedia
                                                              .map((m) =>
                                                                  FFUploadedFile(
                                                                    name: m
                                                                        .storagePath
                                                                        .split(
                                                                            '/')
                                                                        .last,
                                                                    bytes:
                                                                        m.bytes,
                                                                    height: m
                                                                        .dimensions
                                                                        ?.height,
                                                                    width: m
                                                                        .dimensions
                                                                        ?.width,
                                                                    blurHash: m
                                                                        .blurHash,
                                                                    originalFilename:
                                                                        m.originalFilename,
                                                                  ))
                                                              .toList();

                                                      downloadUrls =
                                                          (await Future.wait(
                                                        selectedMedia.map(
                                                          (m) async =>
                                                              await uploadData(
                                                                  m.storagePath,
                                                                  m.bytes),
                                                        ),
                                                      ))
                                                              .where((u) =>
                                                                  u != null)
                                                              .map((u) => u!)
                                                              .toList();
                                                    } finally {
                                                      _model.isDataUploading_uploadDataGa3 =
                                                          false;
                                                    }
                                                    if (selectedUploadedFiles
                                                                .length ==
                                                            selectedMedia
                                                                .length &&
                                                        downloadUrls.length ==
                                                            selectedMedia
                                                                .length) {
                                                      safeSetState(() {
                                                        _model.uploadedLocalFile_uploadDataGa3 =
                                                            selectedUploadedFiles
                                                                .first;
                                                        _model.uploadedFileUrl_uploadDataGa3 =
                                                            downloadUrls.first;
                                                      });
                                                    } else {
                                                      safeSetState(() {});
                                                      return;
                                                    }
                                                  }
                                                },
                                                child: Icon(
                                                  Icons.image_search_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 30.0,
                                                ),
                                              ),
                                            ),
                                            if (_model.uploadedFileUrl_uploadDataGa3 !=
                                                    '')
                                              Container(
                                                width: 50.0,
                                                height: 40.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(2.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                    child: Image.network(
                                                      _model
                                                          .uploadedFileUrl_uploadDataGa3,
                                                      width: 300.0,
                                                      height: 200.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                      if (modifEventPageEventsRecord.imageDom !=
                                              '')
                                        Icon(
                                          Icons.location_history_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 30.0,
                                        ),
                                      Text(
                                        '-',
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
                                      if (modifEventPageEventsRecord.imageExt !=
                                              '')
                                        Icon(
                                          Icons.location_history_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 30.0,
                                        ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 10.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 50.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(
                                                        context)
                                                    .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        6.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(2.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                  child: Image.network(
                                                    _model
                                                        .uploadedFileUrl_uploadDataS73,
                                                    width: 300.0,
                                                    height: 200.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  final selectedMedia =
                                                      await selectMediaWithSourceBottomSheet(
                                                    context: context,
                                                    maxWidth: 1000.00,
                                                    maxHeight: 1000.00,
                                                    allowPhoto: true,
                                                  );
                                                  if (selectedMedia != null &&
                                                      selectedMedia.every((m) =>
                                                          validateFileFormat(
                                                              m.storagePath,
                                                              context))) {
                                                    safeSetState(() => _model
                                                            .isDataUploading_uploadDataS73 =
                                                        true);
                                                    var selectedUploadedFiles =
                                                        <FFUploadedFile>[];

                                                    var downloadUrls =
                                                        <String>[];
                                                    try {
                                                      selectedUploadedFiles =
                                                          selectedMedia
                                                              .map((m) =>
                                                                  FFUploadedFile(
                                                                    name: m
                                                                        .storagePath
                                                                        .split(
                                                                            '/')
                                                                        .last,
                                                                    bytes:
                                                                        m.bytes,
                                                                    height: m
                                                                        .dimensions
                                                                        ?.height,
                                                                    width: m
                                                                        .dimensions
                                                                        ?.width,
                                                                    blurHash: m
                                                                        .blurHash,
                                                                    originalFilename:
                                                                        m.originalFilename,
                                                                  ))
                                                              .toList();

                                                      downloadUrls =
                                                          (await Future.wait(
                                                        selectedMedia.map(
                                                          (m) async =>
                                                              await uploadData(
                                                                  m.storagePath,
                                                                  m.bytes),
                                                        ),
                                                      ))
                                                              .where((u) =>
                                                                  u != null)
                                                              .map((u) => u!)
                                                              .toList();
                                                    } finally {
                                                      _model.isDataUploading_uploadDataS73 =
                                                          false;
                                                    }
                                                    if (selectedUploadedFiles
                                                                .length ==
                                                            selectedMedia
                                                                .length &&
                                                        downloadUrls.length ==
                                                            selectedMedia
                                                                .length) {
                                                      safeSetState(() {
                                                        _model.uploadedLocalFile_uploadDataS73 =
                                                            selectedUploadedFiles
                                                                .first;
                                                        _model.uploadedFileUrl_uploadDataS73 =
                                                            downloadUrls.first;
                                                      });
                                                    } else {
                                                      safeSetState(() {});
                                                      return;
                                                    }
                                                  }
                                                },
                                                child: Icon(
                                                  Icons.image_search_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 30.0,
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 10.0, 5.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (_model.uploadedFileUrl_uploadDataGa3 !=
                                            '')
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await widget.eventRef!
                                              .update(createEventsRecordData(
                                            imageDom: _model
                                                .uploadedFileUrl_uploadDataGa3,
                                          ));
                                        },
                                        child: Icon(
                                          Icons.send_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 30.0,
                                        ),
                                      ),
                                    if (_model.uploadedFileUrl_uploadDataS73 !=
                                            '')
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await widget.eventRef!
                                              .update(createEventsRecordData(
                                            imageExt: _model
                                                .uploadedFileUrl_uploadDataS73,
                                          ));
                                        },
                                        child: Icon(
                                          Icons.send_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 30.0,
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
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Modifier les statuts Bets',
                                    maxLines: 1,
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
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: StreamBuilder<List<BetsRecord>>(
                                  stream: queryBetsRecord(
                                    parent: widget.eventRef,
                                    queryBuilder: (betsRecord) =>
                                        betsRecord.orderBy('created_time'),
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
                                    List<BetsRecord> columnBetsBetsRecordList =
                                        snapshot.data!;

                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                          columnBetsBetsRecordList.length,
                                          (columnBetsIndex) {
                                        final columnBetsBetsRecord =
                                            columnBetsBetsRecordList[
                                                columnBetsIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 5.0, 0.0, 5.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                columnBetsBetsRecord.choice,
                                                maxLines: 2,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                              if ((columnBetsBetsRecord
                                                          .choice ==
                                                      'plus') ||
                                                  (columnBetsBetsRecord
                                                          .choice ==
                                                      'moins'))
                                                Text(
                                                  valueOrDefault<String>(
                                                    modifEventPageEventsRecord
                                                        .points,
                                                    '00.0',
                                                  ),
                                                  maxLines: 2,
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                              if (columnBetsBetsRecord.first !=
                                                      '')
                                                Text(
                                                  valueOrDefault<String>(
                                                    modifEventPageEventsRecord
                                                        .first,
                                                    'first',
                                                  ),
                                                  maxLines: 2,
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                              if (columnBetsBetsRecord.podium !=
                                                      '')
                                                Text(
                                                  valueOrDefault<String>(
                                                    modifEventPageEventsRecord
                                                        .podium,
                                                    'podium',
                                                  ),
                                                  maxLines: 2,
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
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
                                                                  10.0,
                                                                  0.0),
                                                      child: Text(
                                                        formatNumber(
                                                          columnBetsBetsRecord
                                                              .odd,
                                                          formatType: FormatType
                                                              .decimal,
                                                          decimalType:
                                                              DecimalType
                                                                  .periodDecimal,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
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
                                                            ModifBetPageWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'betRef':
                                                                  serializeParam(
                                                                columnBetsBetsRecord
                                                                    .reference,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Icon(
                                                          Icons.settings_sharp,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Liste Bets',
                                    maxLines: 1,
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
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: StreamBuilder<List<BetsRecord>>(
                                  stream: queryBetsRecord(
                                    parent: widget.eventRef,
                                    queryBuilder: (betsRecord) =>
                                        betsRecord.orderBy('created_time'),
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
                                    List<BetsRecord> columnBetsBetsRecordList =
                                        snapshot.data!;

                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                          columnBetsBetsRecordList.length,
                                          (columnBetsIndex) {
                                        final columnBetsBetsRecord =
                                            columnBetsBetsRecordList[
                                                columnBetsIndex];
                                        return Visibility(
                                          visible:
                                              columnBetsBetsRecord.statut !=
                                                  null,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 5.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  columnBetsBetsRecord.choice,
                                                  maxLines: 2,
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                                if ((columnBetsBetsRecord
                                                            .choice ==
                                                        'plus') ||
                                                    (columnBetsBetsRecord
                                                            .choice ==
                                                        'moins'))
                                                  Text(
                                                    valueOrDefault<String>(
                                                      modifEventPageEventsRecord
                                                          .points,
                                                      '00.0',
                                                    ),
                                                    maxLines: 2,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                if (columnBetsBetsRecord
                                                            .first !=
                                                        '')
                                                  Text(
                                                    valueOrDefault<String>(
                                                      modifEventPageEventsRecord
                                                          .first,
                                                      'first',
                                                    ),
                                                    maxLines: 2,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                if (columnBetsBetsRecord
                                                            .podium !=
                                                        '')
                                                  Text(
                                                    valueOrDefault<String>(
                                                      modifEventPageEventsRecord
                                                          .podium,
                                                      'podium',
                                                    ),
                                                    maxLines: 2,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
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
                                                                  10.0,
                                                                  0.0),
                                                      child: Text(
                                                        formatNumber(
                                                          columnBetsBetsRecord
                                                              .odd,
                                                          formatType: FormatType
                                                              .decimal,
                                                          decimalType:
                                                              DecimalType
                                                                  .periodDecimal,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                    if (modifEventPageEventsRecord
                                                            .statut ==
                                                        false)
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (columnBetsBetsRecord
                                                                    .statut ==
                                                                true)
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: 25.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .success,
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                ),
                                                              ),
                                                            if (columnBetsBetsRecord
                                                                    .statut ==
                                                                false)
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: 25.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    if (modifEventPageEventsRecord
                                                            .statut ==
                                                        true)
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 25.0,
                                                          height: 25.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                        ),
                                                      ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
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
                                                            ModifBetPageWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'betRef':
                                                                  serializeParam(
                                                                columnBetsBetsRecord
                                                                    .reference,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Icon(
                                                          Icons
                                                              .delete_forever_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 16.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          await widget.eventRef!
                                              .update(createEventsRecordData(
                                            statut: true,
                                          ));

                                          context.pushNamed(
                                              ListEventsAdminWidget.routeName);
                                        },
                                        text: 'Match à venir',
                                        options: FFButtonOptions(
                                          width: 150.0,
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmallIsCustom,
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
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 16.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          await widget.eventRef!
                                              .update(createEventsRecordData(
                                            statut: false,
                                          ));
                                          triggerPushNotification(
                                            notificationTitle:
                                                'Evénement commencé',
                                            notificationText:
                                                '${modifEventPageEventsRecord.teamdom}  :  ${modifEventPageEventsRecord.teamext}',
                                            userRefs: modifEventPageEventsRecord
                                                .notifsUsers
                                                .toList(),
                                            initialPageName: 'EventPage',
                                            parameterData: {
                                              'eventRef': widget.eventRef,
                                            },
                                          );

                                          context.pushNamed(
                                              ListEventsAdminWidget.routeName);
                                        },
                                        text: 'Début du match',
                                        options: FFButtonOptions(
                                          width: 150.0,
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmallIsCustom,
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
                              ),
                              if (modifEventPageEventsRecord.sportValue ==
                                  'sports.meca')
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 16.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await widget.eventRef!
                                            .update(createEventsRecordData(
                                          statut: false,
                                        ));

                                        context.pushNamed(
                                          ModifRankPilotesWidget.routeName,
                                          queryParameters: {
                                            'eventMecaRef': serializeParam(
                                              widget.eventRef,
                                              ParamType.DocumentReference,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      text: 'Maj Classement',
                                      options: FFButtonOptions(
                                        width: 150.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .titleSmallIsCustom,
                                            ),
                                        elevation: 3.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                        hoverColor:
                                            FlutterFlowTheme.of(context).error,
                                        hoverTextColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                      ),
                                    ),
                                  ),
                                ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 10.0, 5.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        'Stats Finales',
                                        maxLines: 1,
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .titleSmallIsCustom,
                                            ),
                                      ),
                                    ),
                                    if (modifEventPageEventsRecord.endImage !=
                                            '')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.ssid_chart,
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          size: 30.0,
                                        ),
                                      ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 10.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          final selectedMedia =
                                              await selectMediaWithSourceBottomSheet(
                                            context: context,
                                            maxWidth: 1000.00,
                                            maxHeight: 1000.00,
                                            allowPhoto: true,
                                          );
                                          if (selectedMedia != null &&
                                              selectedMedia.every((m) =>
                                                  validateFileFormat(
                                                      m.storagePath,
                                                      context))) {
                                            safeSetState(() => _model
                                                    .isDataUploading_uploadDataSre =
                                                true);
                                            var selectedUploadedFiles =
                                                <FFUploadedFile>[];

                                            var downloadUrls = <String>[];
                                            try {
                                              selectedUploadedFiles =
                                                  selectedMedia
                                                      .map(
                                                          (m) => FFUploadedFile(
                                                                name: m
                                                                    .storagePath
                                                                    .split('/')
                                                                    .last,
                                                                bytes: m.bytes,
                                                                height: m
                                                                    .dimensions
                                                                    ?.height,
                                                                width: m
                                                                    .dimensions
                                                                    ?.width,
                                                                blurHash:
                                                                    m.blurHash,
                                                                originalFilename:
                                                                    m.originalFilename,
                                                              ))
                                                      .toList();

                                              downloadUrls = (await Future.wait(
                                                selectedMedia.map(
                                                  (m) async => await uploadData(
                                                      m.storagePath, m.bytes),
                                                ),
                                              ))
                                                  .where((u) => u != null)
                                                  .map((u) => u!)
                                                  .toList();
                                            } finally {
                                              _model.isDataUploading_uploadDataSre =
                                                  false;
                                            }
                                            if (selectedUploadedFiles.length ==
                                                    selectedMedia.length &&
                                                downloadUrls.length ==
                                                    selectedMedia.length) {
                                              safeSetState(() {
                                                _model.uploadedLocalFile_uploadDataSre =
                                                    selectedUploadedFiles.first;
                                                _model.uploadedFileUrl_uploadDataSre =
                                                    downloadUrls.first;
                                              });
                                            } else {
                                              safeSetState(() {});
                                              return;
                                            }
                                          }
                                        },
                                        child: Icon(
                                          Icons.image_search_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 30.0,
                                        ),
                                      ),
                                    ),
                                    if (_model.uploadedFileUrl_uploadDataSre !=
                                            '')
                                      Container(
                                        width: 50.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(6.0),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                            child: Image.network(
                                              _model
                                                  .uploadedFileUrl_uploadDataSre,
                                              width: 300.0,
                                              height: 200.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (_model.uploadedFileUrl_uploadDataSre !=
                                            '')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await widget.eventRef!
                                                .update(createEventsRecordData(
                                              endImage: _model
                                                  .uploadedFileUrl_uploadDataSre,
                                            ));
                                            triggerPushNotification(
                                              notificationTitle:
                                                  'Evénement terminé',
                                              notificationText:
                                                  'Statistiques disponibles',
                                              notificationImageUrl: _model
                                                  .uploadedFileUrl_uploadDataSre,
                                              userRefs:
                                                  modifEventPageEventsRecord
                                                      .notifsUsers
                                                      .toList(),
                                              initialPageName: 'EventPage',
                                              parameterData: {
                                                'eventRef': widget.eventRef,
                                              },
                                            );
                                          },
                                          child: Icon(
                                            Icons.send_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 30.0,
                                          ),
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
                              if (modifEventPageEventsRecord.sportValue !=
                                  'sports.meca')
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          'Fin de match',
                                          maxLines: 1,
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmallIsCustom,
                                              ),
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
                                          'Score',
                                          maxLines: 1,
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmallIsCustom,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 10.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    modifEventPageEventsRecord
                                                        .teamdom,
                                                    textAlign: TextAlign.start,
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
                                                ),
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
                                                                  20.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 70.0,
                                                        height: 30.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      8.0,
                                                                      0.0),
                                                          child: TextFormField(
                                                            controller: _model
                                                                .scoreDomFieldTextController,
                                                            focusNode: _model
                                                                .scoreDomFieldFocusNode,
                                                            autofocus: false,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).labelMediumFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                      ),
                                                              enabledBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  width: 2.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  width: 2.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              errorBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 2.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 2.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
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
                                                            textAlign: TextAlign
                                                                .center,
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            validator: _model
                                                                .scoreDomFieldTextControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          1.0, 0.0, 0.0, 0.0),
                                                  child: Icon(
                                                    Icons.send_sharp,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 30.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    modifEventPageEventsRecord
                                                        .teamext,
                                                    textAlign: TextAlign.start,
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
                                                ),
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
                                                                  20.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 70.0,
                                                        height: 30.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      8.0,
                                                                      0.0),
                                                          child: TextFormField(
                                                            controller: _model
                                                                .scoreExtFieldTextController,
                                                            focusNode: _model
                                                                .scoreExtFieldFocusNode,
                                                            autofocus: false,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).labelMediumFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                      ),
                                                              enabledBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  width: 2.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  width: 2.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              errorBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 2.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 2.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
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
                                                            textAlign: TextAlign
                                                                .center,
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            validator: _model
                                                                .scoreExtFieldTextControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          1.0, 0.0, 0.0, 0.0),
                                                  child: Icon(
                                                    Icons.send_sharp,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 30.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          if ((_model.scoreDomFieldTextController
                                                      .text !=
                                                  '0') &&
                                              (_model.scoreDomFieldTextController
                                                          .text !=
                                                      '') &&
                                              (_model.scoreExtFieldTextController
                                                      .text !=
                                                  '0') &&
                                              (_model.scoreExtFieldTextController
                                                          .text !=
                                                      '') &&
                                              (modifEventPageEventsRecord
                                                      .l2mStatut !=
                                                  true))
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Divider(
                                                  thickness: 1.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                if ((modifEventPageEventsRecord
                                                            .leagueValue !=
                                                        'autres') &&
                                                    (modifEventPageEventsRecord
                                                            .leagueValue !=
                                                        'autres.france') &&
                                                    (modifEventPageEventsRecord
                                                            .sportValue !=
                                                        'basketball') &&
                                                    (modifEventPageEventsRecord
                                                            .sportValue !=
                                                        'rugby'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if ((modifEventPageEventsRecord.leagueValue != 'champions.league') &&
                                                            (modifEventPageEventsRecord
                                                                    .leagueValue !=
                                                                'europa.league') &&
                                                            (modifEventPageEventsRecord
                                                                    .leagueValue !=
                                                                'conference.league') &&
                                                            (modifEventPageEventsRecord
                                                                    .leagueValue !=
                                                                'autres') &&
                                                            (modifEventPageEventsRecord
                                                                    .leagueValue !=
                                                                'autres.france'))
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                await modifEventPageEventsRecord
                                                                    .teamdomRef!
                                                                    .update({
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'l2m': FieldValue
                                                                          .increment(
                                                                              1),
                                                                    },
                                                                  ),
                                                                });

                                                                await modifEventPageEventsRecord
                                                                    .teamextRef!
                                                                    .update({
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'l2m': FieldValue
                                                                          .increment(
                                                                              1),
                                                                    },
                                                                  ),
                                                                });

                                                                await widget
                                                                    .eventRef!
                                                                    .update(
                                                                        createEventsRecordData(
                                                                  l2mStatut:
                                                                      true,
                                                                ));
                                                              },
                                                              text:
                                                                  '+ 1Stats L2M',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 200.0,
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
                                                                    .secondaryText,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmallFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .titleSmallIsCustom,
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
                                                        if ((modifEventPageEventsRecord.leagueValue == 'champions.league') ||
                                                            (modifEventPageEventsRecord
                                                                    .leagueValue ==
                                                                'europa.league') ||
                                                            (modifEventPageEventsRecord
                                                                    .leagueValue ==
                                                                'conference.league'))
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                await modifEventPageEventsRecord
                                                                    .teamdomRef!
                                                                    .update({
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'l2m_cup':
                                                                          FieldValue.increment(
                                                                              1),
                                                                    },
                                                                  ),
                                                                });

                                                                await modifEventPageEventsRecord
                                                                    .teamextRef!
                                                                    .update({
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'l2m_cup':
                                                                          FieldValue.increment(
                                                                              1),
                                                                    },
                                                                  ),
                                                                });

                                                                await widget
                                                                    .eventRef!
                                                                    .update(
                                                                        createEventsRecordData(
                                                                  l2mStatut:
                                                                      true,
                                                                ));
                                                              },
                                                              text:
                                                                  '+ 1 Stats L2M',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 200.0,
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
                                                                    .secondaryText,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmallFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .titleSmallIsCustom,
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
                                                      ],
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                'Finaliser résultat',
                                                maxLines: 1,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmallIsCustom,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Text(
                                                    modifEventPageEventsRecord
                                                        .sportValue,
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
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
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Text(
                                                    modifEventPageEventsRecord
                                                        .leagueValue,
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
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
                                              ),
                                            ],
                                          ),
                                          if ((modifEventPageEventsRecord
                                                      .sportValue ==
                                                  'football') ||
                                              (modifEventPageEventsRecord
                                                      .sportValue ==
                                                  'hockey'))
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if ((modifEventPageEventsRecord.leagueValue !=
                                                        'champions.league') &&
                                                    (modifEventPageEventsRecord.leagueValue !=
                                                        'europa.league') &&
                                                    (modifEventPageEventsRecord
                                                            .leagueValue !=
                                                        'conference.league') &&
                                                    (modifEventPageEventsRecord
                                                            .leagueValue !=
                                                        'autres') &&
                                                    (modifEventPageEventsRecord
                                                            .leagueValue !=
                                                        'autres.france'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              await modifEventPageEventsRecord
                                                                  .reference
                                                                  .update(
                                                                      createEventsRecordData(
                                                                seenScore: true,
                                                                scoreDom: int
                                                                    .tryParse(_model
                                                                        .scoreDomFieldTextController
                                                                        .text),
                                                                scoreExt: int
                                                                    .tryParse(_model
                                                                        .scoreExtFieldTextController
                                                                        .text),
                                                              ));

                                                              await modifEventPageEventsRecord
                                                                  .teamdomRef!
                                                                  .update({
                                                                ...mapToFirestore(
                                                                  {
                                                                    'wins': FieldValue
                                                                        .increment(
                                                                            1),
                                                                    'total_games':
                                                                        FieldValue
                                                                            .increment(1),
                                                                    'goals_points_in':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreDomFieldTextController
                                                                            .text)),
                                                                    'goals_points_out':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreExtFieldTextController
                                                                            .text)),
                                                                    'points': FieldValue
                                                                        .increment(
                                                                            3),
                                                                  },
                                                                ),
                                                              });

                                                              await modifEventPageEventsRecord
                                                                  .teamextRef!
                                                                  .update({
                                                                ...mapToFirestore(
                                                                  {
                                                                    'total_games':
                                                                        FieldValue
                                                                            .increment(1),
                                                                    'goals_points_in':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreExtFieldTextController
                                                                            .text)),
                                                                    'goals_points_out':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreDomFieldTextController
                                                                            .text)),
                                                                    'points': FieldValue
                                                                        .increment(
                                                                            0),
                                                                    'looses': FieldValue
                                                                        .increment(
                                                                            1),
                                                                  },
                                                                ),
                                                              });

                                                              await widget
                                                                  .eventRef!
                                                                  .update(
                                                                      createEventsRecordData(
                                                                statut: false,
                                                              ));
                                                              triggerPushNotification(
                                                                notificationTitle:
                                                                    'Match terminé',
                                                                notificationText:
                                                                    '${modifEventPageEventsRecord.teamdom}  ${_model.scoreDomFieldTextController.text}  :  ${_model.scoreExtFieldTextController.text}  ${modifEventPageEventsRecord.teamext}',
                                                                userRefs: modifEventPageEventsRecord
                                                                    .notifsUsers
                                                                    .toList(),
                                                                initialPageName:
                                                                    'EventPage',
                                                                parameterData: {
                                                                  'eventRef':
                                                                      widget
                                                                          .eventRef,
                                                                },
                                                              );

                                                              context.pushNamed(
                                                                  ListEventsAdminWidget
                                                                      .routeName);
                                                            },
                                                            text:
                                                                'Victoire Dom',
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
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).titleSmallIsCustom,
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
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              await modifEventPageEventsRecord
                                                                  .reference
                                                                  .update(
                                                                      createEventsRecordData(
                                                                seenScore: true,
                                                                scoreDom: int
                                                                    .tryParse(_model
                                                                        .scoreDomFieldTextController
                                                                        .text),
                                                                scoreExt: int
                                                                    .tryParse(_model
                                                                        .scoreExtFieldTextController
                                                                        .text),
                                                              ));

                                                              await modifEventPageEventsRecord
                                                                  .teamdomRef!
                                                                  .update({
                                                                ...mapToFirestore(
                                                                  {
                                                                    'total_games':
                                                                        FieldValue
                                                                            .increment(1),
                                                                    'goals_points_in':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreDomFieldTextController
                                                                            .text)),
                                                                    'goals_points_out':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreExtFieldTextController
                                                                            .text)),
                                                                    'points': FieldValue
                                                                        .increment(
                                                                            1),
                                                                    'draws': FieldValue
                                                                        .increment(
                                                                            1),
                                                                  },
                                                                ),
                                                              });

                                                              await modifEventPageEventsRecord
                                                                  .teamextRef!
                                                                  .update({
                                                                ...mapToFirestore(
                                                                  {
                                                                    'total_games':
                                                                        FieldValue
                                                                            .increment(1),
                                                                    'goals_points_in':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreExtFieldTextController
                                                                            .text)),
                                                                    'goals_points_out':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreDomFieldTextController
                                                                            .text)),
                                                                    'points': FieldValue
                                                                        .increment(
                                                                            1),
                                                                    'draws': FieldValue
                                                                        .increment(
                                                                            1),
                                                                  },
                                                                ),
                                                              });

                                                              await widget
                                                                  .eventRef!
                                                                  .update(
                                                                      createEventsRecordData(
                                                                statut: false,
                                                              ));
                                                              triggerPushNotification(
                                                                notificationTitle:
                                                                    'Match terminé',
                                                                notificationText:
                                                                    '${modifEventPageEventsRecord.teamdom}  ${_model.scoreDomFieldTextController.text}  :  ${_model.scoreExtFieldTextController.text}  ${modifEventPageEventsRecord.teamext}',
                                                                userRefs: modifEventPageEventsRecord
                                                                    .notifsUsers
                                                                    .toList(),
                                                                initialPageName:
                                                                    'EventPage',
                                                                parameterData: {
                                                                  'eventRef':
                                                                      widget
                                                                          .eventRef,
                                                                },
                                                              );

                                                              context.pushNamed(
                                                                  ListEventsAdminWidget
                                                                      .routeName);
                                                            },
                                                            text: 'Nul',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 60.0,
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
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).titleSmallIsCustom,
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
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              await modifEventPageEventsRecord
                                                                  .reference
                                                                  .update(
                                                                      createEventsRecordData(
                                                                seenScore: true,
                                                                scoreDom: int
                                                                    .tryParse(_model
                                                                        .scoreDomFieldTextController
                                                                        .text),
                                                                scoreExt: int
                                                                    .tryParse(_model
                                                                        .scoreExtFieldTextController
                                                                        .text),
                                                              ));

                                                              await modifEventPageEventsRecord
                                                                  .teamdomRef!
                                                                  .update({
                                                                ...mapToFirestore(
                                                                  {
                                                                    'total_games':
                                                                        FieldValue
                                                                            .increment(1),
                                                                    'goals_points_in':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreDomFieldTextController
                                                                            .text)),
                                                                    'goals_points_out':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreExtFieldTextController
                                                                            .text)),
                                                                    'points': FieldValue
                                                                        .increment(
                                                                            0),
                                                                    'looses': FieldValue
                                                                        .increment(
                                                                            1),
                                                                  },
                                                                ),
                                                              });

                                                              await modifEventPageEventsRecord
                                                                  .teamextRef!
                                                                  .update({
                                                                ...mapToFirestore(
                                                                  {
                                                                    'total_games':
                                                                        FieldValue
                                                                            .increment(1),
                                                                    'goals_points_in':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreExtFieldTextController
                                                                            .text)),
                                                                    'goals_points_out':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreDomFieldTextController
                                                                            .text)),
                                                                    'points': FieldValue
                                                                        .increment(
                                                                            3),
                                                                    'wins': FieldValue
                                                                        .increment(
                                                                            1),
                                                                  },
                                                                ),
                                                              });

                                                              await widget
                                                                  .eventRef!
                                                                  .update(
                                                                      createEventsRecordData(
                                                                statut: false,
                                                              ));
                                                              triggerPushNotification(
                                                                notificationTitle:
                                                                    'Match terminé',
                                                                notificationText:
                                                                    '${modifEventPageEventsRecord.teamdom}  ${_model.scoreDomFieldTextController.text}  :  ${_model.scoreExtFieldTextController.text}  ${modifEventPageEventsRecord.teamext}',
                                                                userRefs: modifEventPageEventsRecord
                                                                    .notifsUsers
                                                                    .toList(),
                                                                initialPageName:
                                                                    'EventPage',
                                                                parameterData: {
                                                                  'eventRef':
                                                                      widget
                                                                          .eventRef,
                                                                },
                                                              );

                                                              context.pushNamed(
                                                                  ListEventsAdminWidget
                                                                      .routeName);
                                                            },
                                                            text:
                                                                'Victoire Ext',
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
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).titleSmallIsCustom,
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
                                                      ],
                                                    ),
                                                  ),
                                                if ((modifEventPageEventsRecord
                                                            .leagueValue ==
                                                        'champions.league') ||
                                                    (modifEventPageEventsRecord
                                                            .leagueValue ==
                                                        'europa.league') ||
                                                    (modifEventPageEventsRecord
                                                            .leagueValue ==
                                                        'conference.league'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              await modifEventPageEventsRecord
                                                                  .reference
                                                                  .update(
                                                                      createEventsRecordData(
                                                                seenScore: true,
                                                                scoreDom: int
                                                                    .tryParse(_model
                                                                        .scoreDomFieldTextController
                                                                        .text),
                                                                scoreExt: int
                                                                    .tryParse(_model
                                                                        .scoreExtFieldTextController
                                                                        .text),
                                                              ));

                                                              await modifEventPageEventsRecord
                                                                  .teamdomRef!
                                                                  .update({
                                                                ...mapToFirestore(
                                                                  {
                                                                    'wins_cup':
                                                                        FieldValue
                                                                            .increment(1),
                                                                    'goals_in_cup':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreDomFieldTextController
                                                                            .text)),
                                                                    'goals_out_cup':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreExtFieldTextController
                                                                            .text)),
                                                                    'points_cup':
                                                                        FieldValue
                                                                            .increment(3),
                                                                    'games_cup':
                                                                        FieldValue
                                                                            .increment(1),
                                                                  },
                                                                ),
                                                              });

                                                              await modifEventPageEventsRecord
                                                                  .teamextRef!
                                                                  .update({
                                                                ...mapToFirestore(
                                                                  {
                                                                    'games_cup':
                                                                        FieldValue
                                                                            .increment(1),
                                                                    'goals_in_cup':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreExtFieldTextController
                                                                            .text)),
                                                                    'looses_cup':
                                                                        FieldValue
                                                                            .increment(1),
                                                                    'points_cup':
                                                                        FieldValue
                                                                            .increment(0),
                                                                    'goals_out_cup':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreDomFieldTextController
                                                                            .text)),
                                                                  },
                                                                ),
                                                              });

                                                              await widget
                                                                  .eventRef!
                                                                  .update(
                                                                      createEventsRecordData(
                                                                statut: false,
                                                              ));
                                                              triggerPushNotification(
                                                                notificationTitle:
                                                                    'Match terminé',
                                                                notificationText:
                                                                    '${modifEventPageEventsRecord.teamdom}  ${_model.scoreDomFieldTextController.text}  :  ${_model.scoreExtFieldTextController.text}  ${modifEventPageEventsRecord.teamext}',
                                                                userRefs: modifEventPageEventsRecord
                                                                    .notifsUsers
                                                                    .toList(),
                                                                initialPageName:
                                                                    'EventPage',
                                                                parameterData: {
                                                                  'eventRef':
                                                                      widget
                                                                          .eventRef,
                                                                },
                                                              );

                                                              context.pushNamed(
                                                                  ListEventsAdminWidget
                                                                      .routeName);
                                                            },
                                                            text:
                                                                'Victoire Dom',
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
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).titleSmallIsCustom,
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
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              await modifEventPageEventsRecord
                                                                  .reference
                                                                  .update(
                                                                      createEventsRecordData(
                                                                seenScore: true,
                                                                scoreDom: int
                                                                    .tryParse(_model
                                                                        .scoreDomFieldTextController
                                                                        .text),
                                                                scoreExt: int
                                                                    .tryParse(_model
                                                                        .scoreExtFieldTextController
                                                                        .text),
                                                              ));

                                                              await modifEventPageEventsRecord
                                                                  .teamdomRef!
                                                                  .update({
                                                                ...mapToFirestore(
                                                                  {
                                                                    'games_cup':
                                                                        FieldValue
                                                                            .increment(1),
                                                                    'goals_in_cup':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreDomFieldTextController
                                                                            .text)),
                                                                    'goals_out_cup':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreExtFieldTextController
                                                                            .text)),
                                                                    'points_cup':
                                                                        FieldValue
                                                                            .increment(1),
                                                                    'draws_cup':
                                                                        FieldValue
                                                                            .increment(1),
                                                                  },
                                                                ),
                                                              });

                                                              await modifEventPageEventsRecord
                                                                  .teamextRef!
                                                                  .update({
                                                                ...mapToFirestore(
                                                                  {
                                                                    'games_cup':
                                                                        FieldValue
                                                                            .increment(1),
                                                                    'goals_in_cup':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreExtFieldTextController
                                                                            .text)),
                                                                    'draws_cup':
                                                                        FieldValue
                                                                            .increment(1),
                                                                    'points_cup':
                                                                        FieldValue
                                                                            .increment(1),
                                                                    'goals_out_cup':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreDomFieldTextController
                                                                            .text)),
                                                                  },
                                                                ),
                                                              });

                                                              await widget
                                                                  .eventRef!
                                                                  .update(
                                                                      createEventsRecordData(
                                                                statut: false,
                                                              ));
                                                              triggerPushNotification(
                                                                notificationTitle:
                                                                    'Match terminé',
                                                                notificationText:
                                                                    '${modifEventPageEventsRecord.teamdom}  ${_model.scoreDomFieldTextController.text}  :  ${_model.scoreExtFieldTextController.text}  ${modifEventPageEventsRecord.teamext}',
                                                                userRefs: modifEventPageEventsRecord
                                                                    .notifsUsers
                                                                    .toList(),
                                                                initialPageName:
                                                                    'EventPage',
                                                                parameterData: {
                                                                  'eventRef':
                                                                      widget
                                                                          .eventRef,
                                                                },
                                                              );

                                                              context.pushNamed(
                                                                  ListEventsAdminWidget
                                                                      .routeName);
                                                            },
                                                            text: 'Nul',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 60.0,
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
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).titleSmallIsCustom,
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
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              await modifEventPageEventsRecord
                                                                  .reference
                                                                  .update(
                                                                      createEventsRecordData(
                                                                seenScore: true,
                                                                scoreDom: int
                                                                    .tryParse(_model
                                                                        .scoreDomFieldTextController
                                                                        .text),
                                                                scoreExt: int
                                                                    .tryParse(_model
                                                                        .scoreExtFieldTextController
                                                                        .text),
                                                              ));

                                                              await modifEventPageEventsRecord
                                                                  .teamdomRef!
                                                                  .update({
                                                                ...mapToFirestore(
                                                                  {
                                                                    'games_cup':
                                                                        FieldValue
                                                                            .increment(1),
                                                                    'points_cup':
                                                                        FieldValue
                                                                            .increment(0),
                                                                    'looses_cup':
                                                                        FieldValue
                                                                            .increment(1),
                                                                    'goals_out_cup':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreExtFieldTextController
                                                                            .text)),
                                                                    'goals_in_cup':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreDomFieldTextController
                                                                            .text)),
                                                                  },
                                                                ),
                                                              });

                                                              await modifEventPageEventsRecord
                                                                  .teamextRef!
                                                                  .update({
                                                                ...mapToFirestore(
                                                                  {
                                                                    'games_cup':
                                                                        FieldValue
                                                                            .increment(1),
                                                                    'points_cup':
                                                                        FieldValue
                                                                            .increment(3),
                                                                    'wins_cup':
                                                                        FieldValue
                                                                            .increment(1),
                                                                    'goals_in_cup':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreExtFieldTextController
                                                                            .text)),
                                                                    'goals_out_cup':
                                                                        FieldValue.increment(int.parse(_model
                                                                            .scoreDomFieldTextController
                                                                            .text)),
                                                                  },
                                                                ),
                                                              });

                                                              await widget
                                                                  .eventRef!
                                                                  .update(
                                                                      createEventsRecordData(
                                                                statut: false,
                                                              ));
                                                              triggerPushNotification(
                                                                notificationTitle:
                                                                    'Match terminé',
                                                                notificationText:
                                                                    '${modifEventPageEventsRecord.teamdom}  ${_model.scoreDomFieldTextController.text}  :  ${_model.scoreExtFieldTextController.text}  ${modifEventPageEventsRecord.teamext}',
                                                                userRefs: modifEventPageEventsRecord
                                                                    .notifsUsers
                                                                    .toList(),
                                                                initialPageName:
                                                                    'EventPage',
                                                                parameterData: {
                                                                  'eventRef':
                                                                      widget
                                                                          .eventRef,
                                                                },
                                                              );

                                                              context.pushNamed(
                                                                  ListEventsAdminWidget
                                                                      .routeName);
                                                            },
                                                            text:
                                                                'Victoire Ext',
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
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).titleSmallIsCustom,
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
                                                      ],
                                                    ),
                                                  ),
                                              ],
                                            ),
                                        ],
                                      ),
                                    ),
                                    if (modifEventPageEventsRecord.sportValue ==
                                        'rugby')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  await modifEventPageEventsRecord
                                                      .reference
                                                      .update(
                                                          createEventsRecordData(
                                                    seenScore: true,
                                                    scoreDom: int.tryParse(_model
                                                        .scoreDomFieldTextController
                                                        .text),
                                                    scoreExt: int.tryParse(_model
                                                        .scoreExtFieldTextController
                                                        .text),
                                                  ));

                                                  await modifEventPageEventsRecord
                                                      .teamdomRef!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'wins': FieldValue
                                                            .increment(1),
                                                        'total_games':
                                                            FieldValue
                                                                .increment(1),
                                                        'goals_points_in':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreDomFieldTextController
                                                                    .text)),
                                                        'goals_points_out':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreExtFieldTextController
                                                                    .text)),
                                                        'points': FieldValue
                                                            .increment(4),
                                                      },
                                                    ),
                                                  });

                                                  await modifEventPageEventsRecord
                                                      .teamextRef!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'total_games':
                                                            FieldValue
                                                                .increment(1),
                                                        'goals_points_in':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreExtFieldTextController
                                                                    .text)),
                                                        'goals_points_out':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreDomFieldTextController
                                                                    .text)),
                                                        'points': FieldValue
                                                            .increment(0),
                                                        'looses': FieldValue
                                                            .increment(1),
                                                      },
                                                    ),
                                                  });

                                                  await widget.eventRef!.update(
                                                      createEventsRecordData(
                                                    statut: false,
                                                  ));
                                                  triggerPushNotification(
                                                    notificationTitle:
                                                        'Match terminé',
                                                    notificationText:
                                                        '${modifEventPageEventsRecord.teamdom}  ${_model.scoreDomFieldTextController.text}  :  ${_model.scoreExtFieldTextController.text}${modifEventPageEventsRecord.teamext}',
                                                    userRefs:
                                                        modifEventPageEventsRecord
                                                            .notifsUsers
                                                            .toList(),
                                                    initialPageName:
                                                        'EventPage',
                                                    parameterData: {
                                                      'eventRef':
                                                          widget.eventRef,
                                                    },
                                                  );

                                                  context.pushNamed(
                                                      ListEventsAdminWidget
                                                          .routeName);
                                                },
                                                text: 'Victoire Dom',
                                                options: FFButtonOptions(
                                                  width: 130.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallIsCustom,
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
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  await modifEventPageEventsRecord
                                                      .reference
                                                      .update(
                                                          createEventsRecordData(
                                                    seenScore: true,
                                                    scoreDom: int.tryParse(_model
                                                        .scoreDomFieldTextController
                                                        .text),
                                                    scoreExt: int.tryParse(_model
                                                        .scoreExtFieldTextController
                                                        .text),
                                                  ));

                                                  await modifEventPageEventsRecord
                                                      .teamdomRef!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'total_games':
                                                            FieldValue
                                                                .increment(1),
                                                        'goals_points_in':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreDomFieldTextController
                                                                    .text)),
                                                        'goals_points_out':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreExtFieldTextController
                                                                    .text)),
                                                        'points': FieldValue
                                                            .increment(2),
                                                        'draws': FieldValue
                                                            .increment(1),
                                                      },
                                                    ),
                                                  });

                                                  await modifEventPageEventsRecord
                                                      .teamextRef!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'total_games':
                                                            FieldValue
                                                                .increment(1),
                                                        'goals_points_in':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreExtFieldTextController
                                                                    .text)),
                                                        'goals_points_out':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreDomFieldTextController
                                                                    .text)),
                                                        'points': FieldValue
                                                            .increment(2),
                                                        'draws': FieldValue
                                                            .increment(1),
                                                      },
                                                    ),
                                                  });

                                                  await widget.eventRef!.update(
                                                      createEventsRecordData(
                                                    statut: false,
                                                  ));
                                                  triggerPushNotification(
                                                    notificationTitle:
                                                        'Match terminé',
                                                    notificationText:
                                                        '${modifEventPageEventsRecord.teamdom}  ${_model.scoreDomFieldTextController.text}  :  ${_model.scoreExtFieldTextController.text}  ${modifEventPageEventsRecord.teamext}',
                                                    userRefs:
                                                        modifEventPageEventsRecord
                                                            .notifsUsers
                                                            .toList(),
                                                    initialPageName:
                                                        'EventPage',
                                                    parameterData: {
                                                      'eventRef':
                                                          widget.eventRef,
                                                    },
                                                  );

                                                  context.pushNamed(
                                                      ListEventsAdminWidget
                                                          .routeName);
                                                },
                                                text: 'Nul',
                                                options: FFButtonOptions(
                                                  width: 60.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallIsCustom,
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
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  await modifEventPageEventsRecord
                                                      .reference
                                                      .update(
                                                          createEventsRecordData(
                                                    seenScore: true,
                                                    scoreDom: int.tryParse(_model
                                                        .scoreDomFieldTextController
                                                        .text),
                                                    scoreExt: int.tryParse(_model
                                                        .scoreExtFieldTextController
                                                        .text),
                                                  ));

                                                  await modifEventPageEventsRecord
                                                      .teamdomRef!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'total_games':
                                                            FieldValue
                                                                .increment(1),
                                                        'goals_points_in':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreDomFieldTextController
                                                                    .text)),
                                                        'goals_points_out':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreExtFieldTextController
                                                                    .text)),
                                                        'points': FieldValue
                                                            .increment(0),
                                                        'looses': FieldValue
                                                            .increment(1),
                                                      },
                                                    ),
                                                  });

                                                  await modifEventPageEventsRecord
                                                      .teamextRef!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'total_games':
                                                            FieldValue
                                                                .increment(1),
                                                        'goals_points_in':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreExtFieldTextController
                                                                    .text)),
                                                        'goals_points_out':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreDomFieldTextController
                                                                    .text)),
                                                        'points': FieldValue
                                                            .increment(4),
                                                        'wins': FieldValue
                                                            .increment(1),
                                                      },
                                                    ),
                                                  });

                                                  await widget.eventRef!.update(
                                                      createEventsRecordData(
                                                    statut: false,
                                                  ));
                                                  triggerPushNotification(
                                                    notificationTitle:
                                                        'Match terminé',
                                                    notificationText:
                                                        '${modifEventPageEventsRecord.teamdom}  ${_model.scoreDomFieldTextController.text}  :  ${_model.scoreExtFieldTextController.text}  ${modifEventPageEventsRecord.teamext}',
                                                    userRefs:
                                                        modifEventPageEventsRecord
                                                            .notifsUsers
                                                            .toList(),
                                                    initialPageName:
                                                        'EventPage',
                                                    parameterData: {
                                                      'eventRef':
                                                          widget.eventRef,
                                                    },
                                                  );

                                                  context.pushNamed(
                                                      ListEventsAdminWidget
                                                          .routeName);
                                                },
                                                text: 'Victoire Ext',
                                                options: FFButtonOptions(
                                                  width: 130.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallIsCustom,
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
                                          ],
                                        ),
                                      ),
                                    if (modifEventPageEventsRecord
                                            .leagueValue ==
                                        'champions.cup')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  await modifEventPageEventsRecord
                                                      .reference
                                                      .update(
                                                          createEventsRecordData(
                                                    seenScore: true,
                                                    scoreDom: int.tryParse(_model
                                                        .scoreDomFieldTextController
                                                        .text),
                                                    scoreExt: int.tryParse(_model
                                                        .scoreExtFieldTextController
                                                        .text),
                                                  ));

                                                  await modifEventPageEventsRecord
                                                      .teamdomRef!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'wins_cup': FieldValue
                                                            .increment(1),
                                                        'goals_in_cup':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreDomFieldTextController
                                                                    .text)),
                                                        'goals_out_cup':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreExtFieldTextController
                                                                    .text)),
                                                        'points_cup': FieldValue
                                                            .increment(4),
                                                        'games_cup': FieldValue
                                                            .increment(1),
                                                      },
                                                    ),
                                                  });

                                                  await modifEventPageEventsRecord
                                                      .teamextRef!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'games_cup': FieldValue
                                                            .increment(1),
                                                        'goals_in_cup':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreExtFieldTextController
                                                                    .text)),
                                                        'looses_cup': FieldValue
                                                            .increment(1),
                                                        'points_cup': FieldValue
                                                            .increment(1),
                                                        'goals_out_cup':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreDomFieldTextController
                                                                    .text)),
                                                      },
                                                    ),
                                                  });

                                                  await widget.eventRef!.update(
                                                      createEventsRecordData(
                                                    statut: false,
                                                  ));
                                                  triggerPushNotification(
                                                    notificationTitle:
                                                        'Match terminé',
                                                    notificationText:
                                                        '${modifEventPageEventsRecord.teamdom}  ${_model.scoreDomFieldTextController.text}  :  ${_model.scoreExtFieldTextController.text}  ${modifEventPageEventsRecord.teamext}',
                                                    userRefs:
                                                        modifEventPageEventsRecord
                                                            .notifsUsers
                                                            .toList(),
                                                    initialPageName:
                                                        'EventPage',
                                                    parameterData: {
                                                      'eventRef':
                                                          widget.eventRef,
                                                    },
                                                  );

                                                  context.pushNamed(
                                                      ListEventsAdminWidget
                                                          .routeName);
                                                },
                                                text: 'Victoire Dom',
                                                options: FFButtonOptions(
                                                  width: 130.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallIsCustom,
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
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  await modifEventPageEventsRecord
                                                      .reference
                                                      .update(
                                                          createEventsRecordData(
                                                    seenScore: true,
                                                    scoreDom: int.tryParse(_model
                                                        .scoreDomFieldTextController
                                                        .text),
                                                    scoreExt: int.tryParse(_model
                                                        .scoreExtFieldTextController
                                                        .text),
                                                  ));

                                                  await modifEventPageEventsRecord
                                                      .teamdomRef!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'games_cup': FieldValue
                                                            .increment(1),
                                                        'goals_in_cup':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreDomFieldTextController
                                                                    .text)),
                                                        'goals_out_cup':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreExtFieldTextController
                                                                    .text)),
                                                        'points_cup': FieldValue
                                                            .increment(2),
                                                        'draws_cup': FieldValue
                                                            .increment(1),
                                                      },
                                                    ),
                                                  });

                                                  await modifEventPageEventsRecord
                                                      .teamextRef!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'games_cup': FieldValue
                                                            .increment(1),
                                                        'goals_in_cup':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreExtFieldTextController
                                                                    .text)),
                                                        'draws_cup': FieldValue
                                                            .increment(1),
                                                        'points_cup': FieldValue
                                                            .increment(2),
                                                        'goals_out_cup':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreDomFieldTextController
                                                                    .text)),
                                                      },
                                                    ),
                                                  });

                                                  await widget.eventRef!.update(
                                                      createEventsRecordData(
                                                    statut: false,
                                                  ));
                                                  triggerPushNotification(
                                                    notificationTitle:
                                                        'Match terminé',
                                                    notificationText:
                                                        '${modifEventPageEventsRecord.teamdom}  ${_model.scoreDomFieldTextController.text}  :  ${_model.scoreExtFieldTextController.text}  ${modifEventPageEventsRecord.teamext}',
                                                    userRefs:
                                                        modifEventPageEventsRecord
                                                            .notifsUsers
                                                            .toList(),
                                                    initialPageName:
                                                        'EventPage',
                                                    parameterData: {
                                                      'eventRef':
                                                          widget.eventRef,
                                                    },
                                                  );

                                                  context.pushNamed(
                                                      ListEventsAdminWidget
                                                          .routeName);
                                                },
                                                text: 'Nul',
                                                options: FFButtonOptions(
                                                  width: 60.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallIsCustom,
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
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  await modifEventPageEventsRecord
                                                      .reference
                                                      .update(
                                                          createEventsRecordData(
                                                    seenScore: true,
                                                    scoreDom: int.tryParse(_model
                                                        .scoreDomFieldTextController
                                                        .text),
                                                    scoreExt: int.tryParse(_model
                                                        .scoreExtFieldTextController
                                                        .text),
                                                  ));

                                                  await modifEventPageEventsRecord
                                                      .teamdomRef!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'games_cup': FieldValue
                                                            .increment(1),
                                                        'points_cup': FieldValue
                                                            .increment(1),
                                                        'looses_cup': FieldValue
                                                            .increment(1),
                                                        'goals_out_cup':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreExtFieldTextController
                                                                    .text)),
                                                        'goals_in_cup':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreDomFieldTextController
                                                                    .text)),
                                                      },
                                                    ),
                                                  });

                                                  await modifEventPageEventsRecord
                                                      .teamextRef!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'games_cup': FieldValue
                                                            .increment(1),
                                                        'points_cup': FieldValue
                                                            .increment(4),
                                                        'wins_cup': FieldValue
                                                            .increment(1),
                                                        'goals_in_cup':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreExtFieldTextController
                                                                    .text)),
                                                        'goals_out_cup':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreDomFieldTextController
                                                                    .text)),
                                                      },
                                                    ),
                                                  });

                                                  await widget.eventRef!.update(
                                                      createEventsRecordData(
                                                    statut: false,
                                                  ));
                                                  triggerPushNotification(
                                                    notificationTitle:
                                                        'Match terminé',
                                                    notificationText:
                                                        '${modifEventPageEventsRecord.teamdom}  ${_model.scoreDomFieldTextController.text}  :  ${_model.scoreExtFieldTextController.text}  ${modifEventPageEventsRecord.teamext}',
                                                    userRefs:
                                                        modifEventPageEventsRecord
                                                            .notifsUsers
                                                            .toList(),
                                                    initialPageName:
                                                        'EventPage',
                                                    parameterData: {
                                                      'eventRef':
                                                          widget.eventRef,
                                                    },
                                                  );

                                                  context.pushNamed(
                                                      ListEventsAdminWidget
                                                          .routeName);
                                                },
                                                text: 'Victoire Ext',
                                                options: FFButtonOptions(
                                                  width: 130.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallIsCustom,
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
                                          ],
                                        ),
                                      ),
                                    if ((modifEventPageEventsRecord
                                                .sportValue ==
                                            'mma') ||
                                        (modifEventPageEventsRecord
                                                .sportValue ==
                                            'basketball') ||
                                        (modifEventPageEventsRecord
                                                .sportValue ==
                                            'tennis'))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  await modifEventPageEventsRecord
                                                      .reference
                                                      .update(
                                                          createEventsRecordData(
                                                    seenScore: true,
                                                    scoreDom: int.tryParse(_model
                                                        .scoreDomFieldTextController
                                                        .text),
                                                    scoreExt: int.tryParse(_model
                                                        .scoreExtFieldTextController
                                                        .text),
                                                  ));

                                                  await modifEventPageEventsRecord
                                                      .teamdomRef!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'wins': FieldValue
                                                            .increment(1),
                                                        'total_games':
                                                            FieldValue
                                                                .increment(1),
                                                        'goals_points_in':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreDomFieldTextController
                                                                    .text)),
                                                        'goals_points_out':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreExtFieldTextController
                                                                    .text)),
                                                        'points': FieldValue
                                                            .increment(3),
                                                      },
                                                    ),
                                                  });

                                                  await modifEventPageEventsRecord
                                                      .teamextRef!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'total_games':
                                                            FieldValue
                                                                .increment(1),
                                                        'goals_points_in':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreExtFieldTextController
                                                                    .text)),
                                                        'goals_points_out':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreDomFieldTextController
                                                                    .text)),
                                                        'points': FieldValue
                                                            .increment(0),
                                                        'looses': FieldValue
                                                            .increment(1),
                                                      },
                                                    ),
                                                  });

                                                  await widget.eventRef!.update(
                                                      createEventsRecordData(
                                                    statut: false,
                                                  ));
                                                  triggerPushNotification(
                                                    notificationTitle:
                                                        'Evénement terminé',
                                                    notificationText:
                                                        '${modifEventPageEventsRecord.teamdom}  ${_model.scoreDomFieldTextController.text}  :  ${_model.scoreExtFieldTextController.text}  ${modifEventPageEventsRecord.teamext}',
                                                    userRefs:
                                                        modifEventPageEventsRecord
                                                            .notifsUsers
                                                            .toList(),
                                                    initialPageName:
                                                        'EventPage',
                                                    parameterData: {
                                                      'eventRef':
                                                          widget.eventRef,
                                                    },
                                                  );

                                                  context.pushNamed(
                                                      ListEventsAdminWidget
                                                          .routeName);
                                                },
                                                text: 'Victoire Dom',
                                                options: FFButtonOptions(
                                                  width: 130.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallIsCustom,
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
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  await modifEventPageEventsRecord
                                                      .reference
                                                      .update(
                                                          createEventsRecordData(
                                                    seenScore: true,
                                                    scoreDom: int.tryParse(_model
                                                        .scoreDomFieldTextController
                                                        .text),
                                                    scoreExt: int.tryParse(_model
                                                        .scoreExtFieldTextController
                                                        .text),
                                                  ));

                                                  await modifEventPageEventsRecord
                                                      .teamdomRef!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'total_games':
                                                            FieldValue
                                                                .increment(1),
                                                        'goals_points_in':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreDomFieldTextController
                                                                    .text)),
                                                        'goals_points_out':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreExtFieldTextController
                                                                    .text)),
                                                        'points': FieldValue
                                                            .increment(1),
                                                        'draws': FieldValue
                                                            .increment(1),
                                                      },
                                                    ),
                                                  });

                                                  await modifEventPageEventsRecord
                                                      .teamextRef!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'total_games':
                                                            FieldValue
                                                                .increment(1),
                                                        'goals_points_in':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreExtFieldTextController
                                                                    .text)),
                                                        'goals_points_out':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreDomFieldTextController
                                                                    .text)),
                                                        'points': FieldValue
                                                            .increment(1),
                                                        'draws': FieldValue
                                                            .increment(1),
                                                      },
                                                    ),
                                                  });

                                                  await widget.eventRef!.update(
                                                      createEventsRecordData(
                                                    statut: false,
                                                  ));
                                                  triggerPushNotification(
                                                    notificationTitle:
                                                        'Evénement terminé',
                                                    notificationText:
                                                        '${modifEventPageEventsRecord.teamdom}  ${_model.scoreDomFieldTextController.text}  :  ${_model.scoreExtFieldTextController.text}  ${modifEventPageEventsRecord.teamext}',
                                                    userRefs:
                                                        modifEventPageEventsRecord
                                                            .notifsUsers
                                                            .toList(),
                                                    initialPageName:
                                                        'EventPage',
                                                    parameterData: {
                                                      'eventRef':
                                                          widget.eventRef,
                                                    },
                                                  );

                                                  context.pushNamed(
                                                      ListEventsAdminWidget
                                                          .routeName);
                                                },
                                                text: 'Nul',
                                                options: FFButtonOptions(
                                                  width: 60.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallIsCustom,
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
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  await modifEventPageEventsRecord
                                                      .reference
                                                      .update(
                                                          createEventsRecordData(
                                                    seenScore: true,
                                                    scoreDom: int.tryParse(_model
                                                        .scoreDomFieldTextController
                                                        .text),
                                                    scoreExt: int.tryParse(_model
                                                        .scoreExtFieldTextController
                                                        .text),
                                                  ));

                                                  await modifEventPageEventsRecord
                                                      .teamdomRef!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'total_games':
                                                            FieldValue
                                                                .increment(1),
                                                        'goals_points_in':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreDomFieldTextController
                                                                    .text)),
                                                        'goals_points_out':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreExtFieldTextController
                                                                    .text)),
                                                        'points': FieldValue
                                                            .increment(0),
                                                        'looses': FieldValue
                                                            .increment(1),
                                                      },
                                                    ),
                                                  });

                                                  await modifEventPageEventsRecord
                                                      .teamextRef!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'total_games':
                                                            FieldValue
                                                                .increment(1),
                                                        'goals_points_in':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreExtFieldTextController
                                                                    .text)),
                                                        'goals_points_out':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .scoreDomFieldTextController
                                                                    .text)),
                                                        'points': FieldValue
                                                            .increment(3),
                                                        'wins': FieldValue
                                                            .increment(1),
                                                      },
                                                    ),
                                                  });

                                                  await widget.eventRef!.update(
                                                      createEventsRecordData(
                                                    statut: false,
                                                  ));
                                                  triggerPushNotification(
                                                    notificationTitle:
                                                        'Evénement terminé',
                                                    notificationText:
                                                        '${modifEventPageEventsRecord.teamdom}  ${_model.scoreDomFieldTextController.text}  :  ${_model.scoreExtFieldTextController.text}  ${modifEventPageEventsRecord.teamext}',
                                                    userRefs:
                                                        modifEventPageEventsRecord
                                                            .notifsUsers
                                                            .toList(),
                                                    initialPageName:
                                                        'EventPage',
                                                    parameterData: {
                                                      'eventRef':
                                                          widget.eventRef,
                                                    },
                                                  );

                                                  context.pushNamed(
                                                      ListEventsAdminWidget
                                                          .routeName);
                                                },
                                                text: 'Victoire Ext',
                                                options: FFButtonOptions(
                                                  width: 130.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallIsCustom,
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
                                          ],
                                        ),
                                      ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Finaliser résultat si\nCoupe Nationale ou LiveScore',
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .headlineSmallIsCustom,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            await modifEventPageEventsRecord
                                                .reference
                                                .update(createEventsRecordData(
                                              seenScore: true,
                                              scoreDom: int.tryParse(_model
                                                  .scoreDomFieldTextController
                                                  .text),
                                              scoreExt: int.tryParse(_model
                                                  .scoreExtFieldTextController
                                                  .text),
                                            ));
                                            triggerPushNotification(
                                              notificationTitle: 'Evénement ',
                                              notificationText:
                                                  '${modifEventPageEventsRecord.teamdom}  ${_model.scoreDomFieldTextController.text}  :  ${_model.scoreExtFieldTextController.text}  ${modifEventPageEventsRecord.teamext}',
                                              userRefs:
                                                  modifEventPageEventsRecord
                                                      .notifsUsers
                                                      .toList(),
                                              initialPageName: 'EventPage',
                                              parameterData: {
                                                'eventRef': widget.eventRef,
                                              },
                                            );

                                            context.pushNamed(
                                                ListEventsAdminWidget
                                                    .routeName);
                                          },
                                          text: 'Terminé',
                                          options: FFButtonOptions(
                                            width: 130.0,
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallFamily,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallIsCustom,
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
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Les stats ne seront pas prisent en compte\npour les équipes, \npermet l\'affichage du score',
                                        textAlign: TextAlign.center,
                                        maxLines: 3,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              letterSpacing: 0.0,
                                              lineHeight: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Text(
                                        'Remboursement\nen cas de report ',
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
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
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        RefundPageWidget.routeName,
                                        queryParameters: {
                                          'eventRef': serializeParam(
                                            widget.eventRef,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Icon(
                                      Icons.groups_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 30.0,
                                    ),
                                  ),
                                ],
                              ),
                              if (modifEventPageEventsRecord.sportValue !=
                                  'sports.meca')
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 200.0, 0.0, 20.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                        child: StreamBuilder<
                                            List<TeamEventsRecord>>(
                                          stream: queryTeamEventsRecord(
                                            parent: modifEventPageEventsRecord
                                                .teamdomRef,
                                            queryBuilder: (teamEventsRecord) =>
                                                teamEventsRecord.where(
                                              'events',
                                              isEqualTo: widget.eventRef,
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
                                            List<TeamEventsRecord>
                                                rowTeamEventsRecordList =
                                                snapshot.data!;
                                            // Return an empty Container when the item does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final rowTeamEventsRecord =
                                                rowTeamEventsRecordList
                                                        .isNotEmpty
                                                    ? rowTeamEventsRecordList
                                                        .first
                                                    : null;

                                            return Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: Text(
                                                    modifEventPageEventsRecord
                                                        .teamdom,
                                                    textAlign: TextAlign.end,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmallIsCustom,
                                                        ),
                                                  ),
                                                ),
                                                if (rowTeamEventsRecord
                                                        ?.reference !=
                                                    null)
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        await rowTeamEventsRecord!
                                                            .reference
                                                            .delete();
                                                      },
                                                      text: 'Supprimer',
                                                      options: FFButtonOptions(
                                                        width: 160.0,
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
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmallIsCustom,
                                                                ),
                                                        elevation: 3.0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                        hoverColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        hoverTextColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                      StreamBuilder<List<TeamEventsRecord>>(
                                        stream: queryTeamEventsRecord(
                                          parent: modifEventPageEventsRecord
                                              .teamextRef,
                                          queryBuilder: (teamEventsRecord) =>
                                              teamEventsRecord.where(
                                            'events',
                                            isEqualTo: widget.eventRef,
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
                                                    FlutterFlowTheme.of(context)
                                                        .accent4,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<TeamEventsRecord>
                                              rowTeamEventsRecordList =
                                              snapshot.data!;
                                          // Return an empty Container when the item does not exist.
                                          if (snapshot.data!.isEmpty) {
                                            return Container();
                                          }
                                          final rowTeamEventsRecord =
                                              rowTeamEventsRecordList.isNotEmpty
                                                  ? rowTeamEventsRecordList
                                                      .first
                                                  : null;

                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  modifEventPageEventsRecord
                                                      .teamext,
                                                  textAlign: TextAlign.start,
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallIsCustom,
                                                          ),
                                                ),
                                              ),
                                              if (rowTeamEventsRecord
                                                      ?.reference !=
                                                  null)
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      await rowTeamEventsRecord!
                                                          .reference
                                                          .delete();
                                                    },
                                                    text: 'Supprimer',
                                                    options: FFButtonOptions(
                                                      width: 160.0,
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmallIsCustom,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40.0),
                                                      hoverColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      hoverTextColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
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
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 200.0, 0.0, 16.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await widget.eventRef!.delete();

                                      context.pushNamed(
                                          ListEventsAdminWidget.routeName);
                                    },
                                    text: 'Supprimer',
                                    options: FFButtonOptions(
                                      width: 160.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context).error,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .titleSmallIsCustom,
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
                                          FlutterFlowTheme.of(context).primary,
                                    ),
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
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
        );
      },
    );
  }
}
