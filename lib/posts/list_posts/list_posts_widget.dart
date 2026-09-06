import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'list_posts_model.dart';
export 'list_posts_model.dart';

class ListPostsWidget extends StatefulWidget {
  const ListPostsWidget({super.key});

  static String routeName = 'ListPosts';
  static String routePath = '/listPosts';

  @override
  State<ListPostsWidget> createState() => _ListPostsWidgetState();
}

class _ListPostsWidgetState extends State<ListPostsWidget> {
  late ListPostsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListPostsModel());
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
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
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
                                                'Actualités',
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
                                                'News',
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
                                          if (valueOrDefault(
                                                  currentUserDocument?.langage,
                                                  '') ==
                                              'deutsch')
                                            AuthUserStreamWidget(
                                              builder: (context) => Text(
                                                'Neuigkeiten',
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
                                          if (valueOrDefault(
                                                  currentUserDocument?.langage,
                                                  '') ==
                                              'espanol')
                                            AuthUserStreamWidget(
                                              builder: (context) => Text(
                                                'Noticias',
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
                                          if (valueOrDefault(
                                                  currentUserDocument?.langage,
                                                  '') ==
                                              'italiano')
                                            AuthUserStreamWidget(
                                              builder: (context) => Text(
                                                'Notizie',
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
                                          if (valueOrDefault(
                                                  currentUserDocument?.langage,
                                                  '') ==
                                              'portugues')
                                            AuthUserStreamWidget(
                                              builder: (context) => Text(
                                                'Novidades',
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
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 15.0, 0.0),
                                            child: AuthUserStreamWidget(
                                              builder: (context) => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                      ListPostsMyTeamsWidget
                                                          .routeName);
                                                },
                                                child: Icon(
                                                  Icons.favorite_rounded,
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
                                                    MyPostsListWidget.routeName,
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
                                                child: FaIcon(
                                                  FontAwesomeIcons.userCircle,
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
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          10.0, 50.0, 10.0, 50.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 5.0, 10.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.showSportFilter =
                                                  'football';
                                              _model.showLigueFilter = '';
                                              safeSetState(() {});
                                            },
                                            child: Icon(
                                              Icons.sports_soccer_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 30.0,
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.showSportFilter = 'rugby';
                                              _model.showLigueFilter = '';
                                              safeSetState(() {});
                                            },
                                            child: Icon(
                                              Icons.sports_rugby_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 30.0,
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.showSportFilter =
                                                  'basketball';
                                              _model.showLigueFilter = '';
                                              safeSetState(() {});
                                            },
                                            child: Icon(
                                              Icons.sports_basketball,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .warning,
                                              size: 30.0,
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.showSportFilter = 'hockey';
                                              _model.showLigueFilter = '';
                                              safeSetState(() {});
                                            },
                                            child: Icon(
                                              Icons.sports_hockey,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 30.0,
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.showSportFilter = 'tennis';
                                              _model.showLigueFilter = '';
                                              safeSetState(() {});
                                            },
                                            child: Icon(
                                              Icons.sports_baseball,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              size: 30.0,
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.showSportFilter = 'mma';
                                              _model.showLigueFilter = '';
                                              safeSetState(() {});
                                            },
                                            child: Icon(
                                              Icons.sports_mma_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 30.0,
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.showSportFilter =
                                                  'sports.meca';
                                              _model.showLigueFilter = '';
                                              safeSetState(() {});
                                            },
                                            child: Icon(
                                              Icons.sports_motorsports_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 30.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (_model.showSportFilter ==
                                              'football')
                                            SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Container(
                                                      width: 170.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      child: Container(
                                                        width: 170.0,
                                                        height: 100.0,
                                                        child: Stack(
                                                          children: [
                                                            Opacity(
                                                              opacity: 0.5,
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              3.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        167.0,
                                                                    height:
                                                                        97.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      image:
                                                                          DecorationImage(
                                                                        fit: BoxFit
                                                                            .cover,
                                                                        image: Image
                                                                            .asset(
                                                                          'assets/images/England.TST.jpg',
                                                                        ).image,
                                                                      ),
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
                                                                width: 170.0,
                                                                height: 100.0,
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
                                                                          .primaryBackground
                                                                    ],
                                                                    stops: [
                                                                      0.0,
                                                                      0.5,
                                                                      1.0
                                                                    ],
                                                                    begin:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                    end: AlignmentDirectional(
                                                                        0, 1.0),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
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
                                                                _model.showLigueFilter =
                                                                    'premier.league';
                                                                _model.showSportFilter =
                                                                    'football';
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
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
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'Premier League',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Container(
                                                      width: 170.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      child: Container(
                                                        width: 170.0,
                                                        height: 100.0,
                                                        child: Stack(
                                                          children: [
                                                            Opacity(
                                                              opacity: 0.5,
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              3.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        167.0,
                                                                    height:
                                                                        97.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      image:
                                                                          DecorationImage(
                                                                        fit: BoxFit
                                                                            .cover,
                                                                        image: Image
                                                                            .asset(
                                                                          'assets/images/Espana.TST.jpeg',
                                                                        ).image,
                                                                      ),
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
                                                                width: 170.0,
                                                                height: 100.0,
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
                                                                          .primaryBackground
                                                                    ],
                                                                    stops: [
                                                                      0.0,
                                                                      0.5,
                                                                      1.0
                                                                    ],
                                                                    begin:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                    end: AlignmentDirectional(
                                                                        0, 1.0),
                                                                  ),
                                                                ),
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
                                                                            1.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: 170.0,
                                                                  height: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    gradient:
                                                                        LinearGradient(
                                                                      colors: [
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        FlutterFlowTheme.of(context)
                                                                            .tertiary,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground
                                                                      ],
                                                                      stops: [
                                                                        0.0,
                                                                        0.5,
                                                                        1.0
                                                                      ],
                                                                      begin: AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                      end: AlignmentDirectional(
                                                                          -1.0,
                                                                          0),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
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
                                                                _model.showLigueFilter =
                                                                    'laliga';
                                                                _model.showSportFilter =
                                                                    'football';
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
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
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'LaLiga',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Container(
                                                      width: 170.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      child: Container(
                                                        width: 170.0,
                                                        height: 100.0,
                                                        child: Stack(
                                                          children: [
                                                            Opacity(
                                                              opacity: 0.5,
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              3.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        167.0,
                                                                    height:
                                                                        97.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      image:
                                                                          DecorationImage(
                                                                        fit: BoxFit
                                                                            .fitWidth,
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            -2.5),
                                                                        image: Image
                                                                            .asset(
                                                                          'assets/images/Deutsch.TST.jpeg',
                                                                        ).image,
                                                                      ),
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
                                                                width: 170.0,
                                                                height: 100.0,
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
                                                                          .primaryBackground
                                                                    ],
                                                                    stops: [
                                                                      0.0,
                                                                      0.5,
                                                                      1.0
                                                                    ],
                                                                    begin:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                    end: AlignmentDirectional(
                                                                        0, 1.0),
                                                                  ),
                                                                ),
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
                                                                            1.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: 170.0,
                                                                  height: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    gradient:
                                                                        LinearGradient(
                                                                      colors: [
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        FlutterFlowTheme.of(context)
                                                                            .tertiary,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground
                                                                      ],
                                                                      stops: [
                                                                        0.0,
                                                                        0.5,
                                                                        1.0
                                                                      ],
                                                                      begin: AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                      end: AlignmentDirectional(
                                                                          -1.0,
                                                                          0),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
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
                                                                _model.showLigueFilter =
                                                                    'bundesliga';
                                                                _model.showSportFilter =
                                                                    'football';
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
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
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'Bundesliga',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Container(
                                                      width: 170.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      child: Container(
                                                        width: 170.0,
                                                        height: 100.0,
                                                        child: Stack(
                                                          children: [
                                                            Opacity(
                                                              opacity: 0.5,
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              3.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        167.0,
                                                                    height:
                                                                        97.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      image:
                                                                          DecorationImage(
                                                                        fit: BoxFit
                                                                            .fitWidth,
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            -0.5),
                                                                        image: Image
                                                                            .asset(
                                                                          'assets/images/Italie.TST.jpg',
                                                                        ).image,
                                                                      ),
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
                                                                width: double
                                                                    .infinity,
                                                                height: 160.0,
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
                                                                          .primaryBackground
                                                                    ],
                                                                    stops: [
                                                                      0.0,
                                                                      0.5,
                                                                      1.0
                                                                    ],
                                                                    begin:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                    end: AlignmentDirectional(
                                                                        0, 1.0),
                                                                  ),
                                                                ),
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
                                                                            1.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 160.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    gradient:
                                                                        LinearGradient(
                                                                      colors: [
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        FlutterFlowTheme.of(context)
                                                                            .tertiary,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground
                                                                      ],
                                                                      stops: [
                                                                        0.0,
                                                                        0.5,
                                                                        1.0
                                                                      ],
                                                                      begin: AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                      end: AlignmentDirectional(
                                                                          -1.0,
                                                                          0),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
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
                                                                _model.showLigueFilter =
                                                                    'serie.a';
                                                                _model.showSportFilter =
                                                                    'football';
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
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
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'Serie A',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Container(
                                                      width: 170.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      child: Container(
                                                        width: 170.0,
                                                        height: 100.0,
                                                        child: Stack(
                                                          children: [
                                                            Opacity(
                                                              opacity: 0.5,
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              3.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        167.0,
                                                                    height:
                                                                        97.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      image:
                                                                          DecorationImage(
                                                                        fit: BoxFit
                                                                            .fitWidth,
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                        image: Image
                                                                            .asset(
                                                                          'assets/images/France.TST.jpg',
                                                                        ).image,
                                                                      ),
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
                                                                width: 170.0,
                                                                height: 100.0,
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
                                                                          .primaryBackground
                                                                    ],
                                                                    stops: [
                                                                      0.0,
                                                                      0.5,
                                                                      1.0
                                                                    ],
                                                                    begin:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                    end: AlignmentDirectional(
                                                                        0, 1.0),
                                                                  ),
                                                                ),
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
                                                                            1.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: 170.0,
                                                                  height: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    gradient:
                                                                        LinearGradient(
                                                                      colors: [
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        FlutterFlowTheme.of(context)
                                                                            .tertiary,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground
                                                                      ],
                                                                      stops: [
                                                                        0.0,
                                                                        0.5,
                                                                        1.0
                                                                      ],
                                                                      begin: AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                      end: AlignmentDirectional(
                                                                          -1.0,
                                                                          0),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
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
                                                                _model.showLigueFilter =
                                                                    'ligue.1';
                                                                _model.showSportFilter =
                                                                    'football';
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
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
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'Ligue 1',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Container(
                                                      width: 170.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      child: Container(
                                                        width: 170.0,
                                                        height: 100.0,
                                                        child: Stack(
                                                          children: [
                                                            Opacity(
                                                              opacity: 0.5,
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              3.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        167.0,
                                                                    height:
                                                                        97.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      image:
                                                                          DecorationImage(
                                                                        fit: BoxFit
                                                                            .fitWidth,
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                        image: Image
                                                                            .asset(
                                                                          'assets/images/Europ.TST.jpg',
                                                                        ).image,
                                                                      ),
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
                                                                width: double
                                                                    .infinity,
                                                                height: 160.0,
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
                                                                          .primaryBackground
                                                                    ],
                                                                    stops: [
                                                                      0.0,
                                                                      0.5,
                                                                      1.0
                                                                    ],
                                                                    begin:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                    end: AlignmentDirectional(
                                                                        0, 1.0),
                                                                  ),
                                                                ),
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
                                                                            1.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 160.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    gradient:
                                                                        LinearGradient(
                                                                      colors: [
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        FlutterFlowTheme.of(context)
                                                                            .tertiary,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground
                                                                      ],
                                                                      stops: [
                                                                        0.0,
                                                                        0.5,
                                                                        1.0
                                                                      ],
                                                                      begin: AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                      end: AlignmentDirectional(
                                                                          -1.0,
                                                                          0),
                                                                    ),
                                                                  ),
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
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    AuthUserStreamWidget(
                                                                      builder:
                                                                          (context) =>
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
                                                                          _model.showLigueFilter =
                                                                              'champions.league';
                                                                          _model.showSportFilter =
                                                                              'football';
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Text(
                                                                          'Champions League',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                color: valueOrDefault<Color>(
                                                                                  currentUserDocument?.color1,
                                                                                  FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      AuthUserStreamWidget(
                                                                        builder:
                                                                            (context) =>
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
                                                                            _model.showLigueFilter =
                                                                                'europa.league';
                                                                            _model.showSportFilter =
                                                                                'football';
                                                                            safeSetState(() {});
                                                                          },
                                                                          child:
                                                                              Text(
                                                                            'Europa League',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: valueOrDefault<Color>(
                                                                                    currentUserDocument?.color1,
                                                                                    FlutterFlowTheme.of(context).primaryText,
                                                                                  ),
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    AuthUserStreamWidget(
                                                                      builder:
                                                                          (context) =>
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
                                                                          _model.showLigueFilter =
                                                                              'conference.league';
                                                                          _model.showSportFilter =
                                                                              'football';
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Text(
                                                                          'Conference League',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                color: valueOrDefault<Color>(
                                                                                  currentUserDocument?.color1,
                                                                                  FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 170.0,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              Divider(
                                                            thickness: 1.0,
                                                            color:
                                                                valueOrDefault<
                                                                    Color>(
                                                              currentUserDocument
                                                                  ?.color2,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child:
                                                              AuthUserStreamWidget(
                                                            builder:
                                                                (context) =>
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
                                                                _model.showLigueFilter =
                                                                    'autres';
                                                                _model.showSportFilter =
                                                                    'football';
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Text(
                                                                'Other',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        currentUserDocument
                                                                            ?.color1,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ),
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
                                                                        5.0),
                                                            child:
                                                                AuthUserStreamWidget(
                                                              builder:
                                                                  (context) =>
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
                                                                onTap:
                                                                    () async {
                                                                  _model.showLigueFilter =
                                                                      'autres.france';
                                                                  _model.showSportFilter =
                                                                      'football';
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child: Text(
                                                                  'Autres - France',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: valueOrDefault<
                                                                            Color>(
                                                                          currentUserDocument
                                                                              ?.color1,
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                        ),
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child:
                                                              AuthUserStreamWidget(
                                                            builder:
                                                                (context) =>
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
                                                                _model.showLigueFilter =
                                                                    'pays.football';
                                                                _model.showSportFilter =
                                                                    'football';
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Text(
                                                                'Nations',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        currentUserDocument
                                                                            ?.color1,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
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
                                                                valueOrDefault<
                                                                    Color>(
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
                                                  ),
                                                ],
                                              ),
                                            ),
                                          if (_model.showSportFilter == 'rugby')
                                            SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Container(
                                                      width: 170.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      child: Container(
                                                        width: 170.0,
                                                        height: 100.0,
                                                        child: Stack(
                                                          children: [
                                                            Opacity(
                                                              opacity: 0.5,
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              3.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        167.0,
                                                                    height:
                                                                        97.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      image:
                                                                          DecorationImage(
                                                                        fit: BoxFit
                                                                            .fitWidth,
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                        image: Image
                                                                            .asset(
                                                                          'assets/images/France.TST.jpg',
                                                                        ).image,
                                                                      ),
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
                                                                width: 170.0,
                                                                height: 100.0,
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
                                                                          .primaryBackground
                                                                    ],
                                                                    stops: [
                                                                      0.0,
                                                                      0.5,
                                                                      1.0
                                                                    ],
                                                                    begin:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                    end: AlignmentDirectional(
                                                                        0, 1.0),
                                                                  ),
                                                                ),
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
                                                                            1.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: 170.0,
                                                                  height: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    gradient:
                                                                        LinearGradient(
                                                                      colors: [
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        FlutterFlowTheme.of(context)
                                                                            .tertiary,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground
                                                                      ],
                                                                      stops: [
                                                                        0.0,
                                                                        0.5,
                                                                        1.0
                                                                      ],
                                                                      begin: AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                      end: AlignmentDirectional(
                                                                          -1.0,
                                                                          0),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
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
                                                                onTap:
                                                                    () async {
                                                                  _model.showLigueFilter =
                                                                      'top.14';
                                                                  _model.showSportFilter =
                                                                      'rugby';
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
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
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          'Top 14',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Container(
                                                      width: 170.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      child: Container(
                                                        width: 170.0,
                                                        height: 100.0,
                                                        child: Stack(
                                                          children: [
                                                            Opacity(
                                                              opacity: 0.5,
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              3.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        167.0,
                                                                    height:
                                                                        97.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      image:
                                                                          DecorationImage(
                                                                        fit: BoxFit
                                                                            .fitWidth,
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                        image: Image
                                                                            .asset(
                                                                          'assets/images/Europ.TST.jpg',
                                                                        ).image,
                                                                      ),
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
                                                                width: double
                                                                    .infinity,
                                                                height: 160.0,
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
                                                                          .primaryBackground
                                                                    ],
                                                                    stops: [
                                                                      0.0,
                                                                      0.5,
                                                                      1.0
                                                                    ],
                                                                    begin:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                    end: AlignmentDirectional(
                                                                        0, 1.0),
                                                                  ),
                                                                ),
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
                                                                            1.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 160.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    gradient:
                                                                        LinearGradient(
                                                                      colors: [
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        FlutterFlowTheme.of(context)
                                                                            .tertiary,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground
                                                                      ],
                                                                      stops: [
                                                                        0.0,
                                                                        0.5,
                                                                        1.0
                                                                      ],
                                                                      begin: AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                      end: AlignmentDirectional(
                                                                          -1.0,
                                                                          0),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
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
                                                                _model.showLigueFilter =
                                                                    'champions.cup';
                                                                _model.showSportFilter =
                                                                    'rugby';
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
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
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'Champions Cup',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 170.0,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              Divider(
                                                            thickness: 1.0,
                                                            color:
                                                                valueOrDefault<
                                                                    Color>(
                                                              currentUserDocument
                                                                  ?.color2,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child:
                                                              AuthUserStreamWidget(
                                                            builder:
                                                                (context) =>
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
                                                                _model.showLigueFilter =
                                                                    'other.rugby';
                                                                _model.showSportFilter =
                                                                    'rugby';
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Text(
                                                                'Other',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        currentUserDocument
                                                                            ?.color1,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child:
                                                              AuthUserStreamWidget(
                                                            builder:
                                                                (context) =>
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
                                                                _model.showLigueFilter =
                                                                    'nations.rugby';
                                                                _model.showSportFilter =
                                                                    'rugby';
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Text(
                                                                'Nations',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        currentUserDocument
                                                                            ?.color1,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
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
                                                                valueOrDefault<
                                                                    Color>(
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
                                                  ),
                                                ],
                                              ),
                                            ),
                                          if (_model.showSportFilter ==
                                              'basketball')
                                            SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Container(
                                                      width: 170.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      child: Container(
                                                        width: 170.0,
                                                        height: 100.0,
                                                        child: Stack(
                                                          children: [
                                                            Opacity(
                                                              opacity: 0.5,
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              3.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        167.0,
                                                                    height:
                                                                        97.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      image:
                                                                          DecorationImage(
                                                                        fit: BoxFit
                                                                            .fitWidth,
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                        image: Image
                                                                            .asset(
                                                                          'assets/images/USA.TST.jpg',
                                                                        ).image,
                                                                      ),
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
                                                                width: double
                                                                    .infinity,
                                                                height: 160.0,
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
                                                                          .primaryBackground
                                                                    ],
                                                                    stops: [
                                                                      0.0,
                                                                      0.5,
                                                                      1.0
                                                                    ],
                                                                    begin:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                    end: AlignmentDirectional(
                                                                        0, 1.0),
                                                                  ),
                                                                ),
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
                                                                            1.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 160.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    gradient:
                                                                        LinearGradient(
                                                                      colors: [
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        FlutterFlowTheme.of(context)
                                                                            .tertiary,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground
                                                                      ],
                                                                      stops: [
                                                                        0.0,
                                                                        0.5,
                                                                        1.0
                                                                      ],
                                                                      begin: AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                      end: AlignmentDirectional(
                                                                          -1.0,
                                                                          0),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
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
                                                                _model.showLigueFilter =
                                                                    'nba';
                                                                _model.showSportFilter =
                                                                    'basketball';
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
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
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'NBA',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Container(
                                                      width: 170.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      child: Container(
                                                        width: 170.0,
                                                        height: 100.0,
                                                        child: Stack(
                                                          children: [
                                                            Opacity(
                                                              opacity: 0.5,
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              3.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        167.0,
                                                                    height:
                                                                        97.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      image:
                                                                          DecorationImage(
                                                                        fit: BoxFit
                                                                            .fitWidth,
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                        image: Image
                                                                            .asset(
                                                                          'assets/images/Europ.TST.jpg',
                                                                        ).image,
                                                                      ),
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
                                                                width: double
                                                                    .infinity,
                                                                height: 160.0,
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
                                                                          .primaryBackground
                                                                    ],
                                                                    stops: [
                                                                      0.0,
                                                                      0.5,
                                                                      1.0
                                                                    ],
                                                                    begin:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                    end: AlignmentDirectional(
                                                                        0, 1.0),
                                                                  ),
                                                                ),
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
                                                                            1.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 160.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    gradient:
                                                                        LinearGradient(
                                                                      colors: [
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        FlutterFlowTheme.of(context)
                                                                            .tertiary,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground
                                                                      ],
                                                                      stops: [
                                                                        0.0,
                                                                        0.5,
                                                                        1.0
                                                                      ],
                                                                      begin: AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                      end: AlignmentDirectional(
                                                                          -1.0,
                                                                          0),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
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
                                                                _model.showLigueFilter =
                                                                    'euro.league';
                                                                _model.showSportFilter =
                                                                    'basketball';
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
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
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'Euro League',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 170.0,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              Divider(
                                                            thickness: 1.0,
                                                            color:
                                                                valueOrDefault<
                                                                    Color>(
                                                              currentUserDocument
                                                                  ?.color2,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child:
                                                              AuthUserStreamWidget(
                                                            builder:
                                                                (context) =>
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
                                                                _model.showLigueFilter =
                                                                    'other.basket';
                                                                _model.showSportFilter =
                                                                    'basketball';
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Text(
                                                                'Other',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        currentUserDocument
                                                                            ?.color1,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child:
                                                              AuthUserStreamWidget(
                                                            builder:
                                                                (context) =>
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
                                                                _model.showLigueFilter =
                                                                    'nations.basket';
                                                                _model.showSportFilter =
                                                                    'basketball';
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Text(
                                                                'Nations',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        currentUserDocument
                                                                            ?.color1,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
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
                                                                valueOrDefault<
                                                                    Color>(
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
                                                  ),
                                                ],
                                              ),
                                            ),
                                          if (_model.showSportFilter ==
                                              'hockey')
                                            SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 170.0,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                    child: Container(
                                                      width: 170.0,
                                                      height: 100.0,
                                                      child: Stack(
                                                        children: [
                                                          Opacity(
                                                            opacity: 0.5,
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            3.0),
                                                                child:
                                                                    Container(
                                                                  width: 167.0,
                                                                  height: 97.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    image:
                                                                        DecorationImage(
                                                                      fit: BoxFit
                                                                          .fitWidth,
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              -1.0),
                                                                      image: Image
                                                                          .asset(
                                                                        'assets/images/USA.TST.jpg',
                                                                      ).image,
                                                                    ),
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
                                                              width: double
                                                                  .infinity,
                                                              height: 160.0,
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
                                                                        .primaryBackground
                                                                  ],
                                                                  stops: [
                                                                    0.0,
                                                                    0.5,
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
                                                              ),
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
                                                                          1.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 160.0,
                                                                decoration:
                                                                    BoxDecoration(
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
                                                                          .primaryBackground
                                                                    ],
                                                                    stops: [
                                                                      0.0,
                                                                      0.5,
                                                                      1.0
                                                                    ],
                                                                    begin:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                    end: AlignmentDirectional(
                                                                        -1.0,
                                                                        0),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
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
                                                              _model.showLigueFilter =
                                                                  'nhl';
                                                              _model.showSportFilter =
                                                                  'hockey';
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
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
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      'NHL',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
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
                                                ],
                                              ),
                                            ),
                                          if (_model.showSportFilter ==
                                              'tennis')
                                            SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 170.0,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                    child: Container(
                                                      width: 170.0,
                                                      height: 100.0,
                                                      child: Stack(
                                                        children: [
                                                          Opacity(
                                                            opacity: 0.5,
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            3.0),
                                                                child:
                                                                    Container(
                                                                  width: 167.0,
                                                                  height: 97.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    image:
                                                                        DecorationImage(
                                                                      fit: BoxFit
                                                                          .fitWidth,
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              -1.0),
                                                                      image: Image
                                                                          .asset(
                                                                        'assets/images/World.TST.png',
                                                                      ).image,
                                                                    ),
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
                                                              width: double
                                                                  .infinity,
                                                              height: 160.0,
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
                                                                        .primaryBackground
                                                                  ],
                                                                  stops: [
                                                                    0.0,
                                                                    0.5,
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
                                                              ),
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
                                                                          1.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 160.0,
                                                                decoration:
                                                                    BoxDecoration(
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
                                                                          .primaryBackground
                                                                    ],
                                                                    stops: [
                                                                      0.0,
                                                                      0.5,
                                                                      1.0
                                                                    ],
                                                                    begin:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                    end: AlignmentDirectional(
                                                                        -1.0,
                                                                        0),
                                                                  ),
                                                                ),
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
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        Divider(
                                                                  thickness:
                                                                      1.0,
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    currentUserDocument
                                                                        ?.color2,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
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
                                                                        _model.showLigueFilter =
                                                                            'atp';
                                                                        _model.showSportFilter =
                                                                            'tennis';
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        'ATP',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              color: valueOrDefault<Color>(
                                                                                currentUserDocument?.color1,
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
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
                                                                        _model.showLigueFilter =
                                                                            'wta';
                                                                        _model.showSportFilter =
                                                                            'tennis';
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        'WTA',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              color: valueOrDefault<Color>(
                                                                                currentUserDocument?.color1,
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
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
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          if (_model.showSportFilter == 'mma')
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 170.0,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                  ),
                                                  child: Container(
                                                    width: 170.0,
                                                    height: 100.0,
                                                    child: Stack(
                                                      children: [
                                                        Opacity(
                                                          opacity: 0.5,
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(3.0),
                                                              child: Container(
                                                                width: 167.0,
                                                                height: 97.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  image:
                                                                      DecorationImage(
                                                                    fit: BoxFit
                                                                        .fitWidth,
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                    image: Image
                                                                        .asset(
                                                                      'assets/images/USA.TST.jpg',
                                                                    ).image,
                                                                  ),
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
                                                            width:
                                                                double.infinity,
                                                            height: 160.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
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
                                                                      .primaryBackground
                                                                ],
                                                                stops: [
                                                                  0.0,
                                                                  0.5,
                                                                  1.0
                                                                ],
                                                                begin:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        -1.0),
                                                                end:
                                                                    AlignmentDirectional(
                                                                        0, 1.0),
                                                              ),
                                                            ),
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
                                                                        1.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 160.0,
                                                              decoration:
                                                                  BoxDecoration(
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
                                                                        .primaryBackground
                                                                  ],
                                                                  stops: [
                                                                    0.0,
                                                                    0.5,
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
                                                              ),
                                                            ),
                                                          ),
                                                        ),
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
                                                            _model.showLigueFilter =
                                                                'ufc';
                                                            _model.showSportFilter =
                                                                'mma';
                                                            safeSetState(() {});
                                                          },
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        Divider(
                                                                  thickness:
                                                                      1.0,
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    currentUserDocument
                                                                        ?.color2,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    'UFC',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
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
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          if (_model.showSportFilter ==
                                              'sports.meca')
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 170.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      child: Container(
                                                        width: 170.0,
                                                        height: 100.0,
                                                        child: Stack(
                                                          children: [
                                                            Opacity(
                                                              opacity: 0.5,
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              3.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        167.0,
                                                                    height:
                                                                        97.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      image:
                                                                          DecorationImage(
                                                                        fit: BoxFit
                                                                            .fitWidth,
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                        image: Image
                                                                            .asset(
                                                                          'assets/images/World.TST.png',
                                                                        ).image,
                                                                      ),
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
                                                                width: double
                                                                    .infinity,
                                                                height: 160.0,
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
                                                                          .primaryBackground
                                                                    ],
                                                                    stops: [
                                                                      0.0,
                                                                      0.5,
                                                                      1.0
                                                                    ],
                                                                    begin:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                    end: AlignmentDirectional(
                                                                        0, 1.0),
                                                                  ),
                                                                ),
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
                                                                            1.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 160.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    gradient:
                                                                        LinearGradient(
                                                                      colors: [
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        FlutterFlowTheme.of(context)
                                                                            .tertiary,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground
                                                                      ],
                                                                      stops: [
                                                                        0.0,
                                                                        0.5,
                                                                        1.0
                                                                      ],
                                                                      begin: AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                      end: AlignmentDirectional(
                                                                          -1.0,
                                                                          0),
                                                                    ),
                                                                  ),
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
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    AuthUserStreamWidget(
                                                                      builder:
                                                                          (context) =>
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
                                                                          _model.showLigueFilter =
                                                                              'formule.1';
                                                                          _model.showSportFilter =
                                                                              'sports.meca';
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Text(
                                                                          'Formula 1',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                color: valueOrDefault<Color>(
                                                                                  currentUserDocument?.color1,
                                                                                  FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    AuthUserStreamWidget(
                                                                      builder:
                                                                          (context) =>
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
                                                                          _model.showLigueFilter =
                                                                              'moto.gp';
                                                                          _model.showSportFilter =
                                                                              'sports.meca';
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Text(
                                                                          'Moto GP',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                color: valueOrDefault<Color>(
                                                                                  currentUserDocument?.color1,
                                                                                  FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    AuthUserStreamWidget(
                                                                      builder:
                                                                          (context) =>
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
                                                                          _model.showLigueFilter =
                                                                              'world.superbike';
                                                                          _model.showSportFilter =
                                                                              'sports.meca';
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Text(
                                                                          'World SuperBike',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                color: valueOrDefault<Color>(
                                                                                  currentUserDocument?.color1,
                                                                                  FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    AuthUserStreamWidget(
                                                                      builder:
                                                                          (context) =>
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
                                                                          _model.showLigueFilter =
                                                                              'mx.gp';
                                                                          _model.showSportFilter =
                                                                              'sports.meca';
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Text(
                                                                          'MX GP',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                color: valueOrDefault<Color>(
                                                                                  currentUserDocument?.color1,
                                                                                  FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                      ),
                                                    ),
                                                  ],
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
                            if (_model.showSportFilter != null &&
                                _model.showSportFilter != '')
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 50.0),
                                  child: StreamBuilder<List<PostsRecord>>(
                                    stream: queryPostsRecord(
                                      queryBuilder: (postsRecord) => postsRecord
                                          .where(
                                            'league_value',
                                            isEqualTo:
                                                _model.showLigueFilter != ''
                                                    ? _model.showLigueFilter
                                                    : null,
                                          )
                                          .where(
                                            'sport_value',
                                            isEqualTo:
                                                _model.showSportFilter != ''
                                                    ? _model.showSportFilter
                                                    : null,
                                          )
                                          .orderBy('created_time',
                                              descending: true),
                                      limit: 100,
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
                                          columnPostsPostsRecordList =
                                          snapshot.data!;

                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(
                                            columnPostsPostsRecordList.length,
                                            (columnPostsIndex) {
                                          final columnPostsPostsRecord =
                                              columnPostsPostsRecordList[
                                                  columnPostsIndex];
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if ((_model.showSportFilter !=
                                                          null &&
                                                      _model.showSportFilter !=
                                                          '') &&
                                                  (columnPostsPostsRecord
                                                          .teamRef !=
                                                      null))
                                                StreamBuilder<TeamsRecord>(
                                                  stream:
                                                      TeamsRecord.getDocument(
                                                          columnPostsPostsRecord
                                                              .teamRef!),
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

                                                    final columnTeamTeamsRecord =
                                                        snapshot.data!;

                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (!(currentUserDocument
                                                                    ?.blocks
                                                                    .toList() ??
                                                                [])
                                                            .contains(
                                                                columnPostsPostsRecord
                                                                    .member))
                                                          AuthUserStreamWidget(
                                                            builder:
                                                                (context) =>
                                                                    Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                if (!columnTeamTeamsRecord
                                                                    .blocks
                                                                    .contains(
                                                                        currentUserReference))
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Container(
                                                                        height:
                                                                            70.0,
                                                                        child:
                                                                            Stack(
                                                                          children: [
                                                                            if (columnPostsPostsRecord.image != '')
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                child: Container(
                                                                                  width: 89.0,
                                                                                  height: 70.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    image: DecorationImage(
                                                                                      fit: BoxFit.fitHeight,
                                                                                      image: CachedNetworkImageProvider(
                                                                                        columnPostsPostsRecord.image,
                                                                                      ),
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(-1.0, -1.0),
                                                                              child: Container(
                                                                                width: 90.0,
                                                                                height: 70.0,
                                                                                decoration: BoxDecoration(
                                                                                  image: DecorationImage(
                                                                                    fit: BoxFit.cover,
                                                                                    image: Image.asset(
                                                                                      'assets/images/photo-1434394354979-a235cd36269d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG1vdW50YWluc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                                                                                    ).image,
                                                                                  ),
                                                                                  gradient: LinearGradient(
                                                                                    colors: [
                                                                                      FlutterFlowTheme.of(context).primaryBackground,
                                                                                      FlutterFlowTheme.of(context).tertiary,
                                                                                      FlutterFlowTheme.of(context).tertiary,
                                                                                      FlutterFlowTheme.of(context).alternate,
                                                                                      FlutterFlowTheme.of(context).alternate,
                                                                                      FlutterFlowTheme.of(context).tertiary,
                                                                                      FlutterFlowTheme.of(context).tertiary,
                                                                                      FlutterFlowTheme.of(context).primaryBackground
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
                                                                                    begin: AlignmentDirectional(0.0, -1.0),
                                                                                    end: AlignmentDirectional(0, 1.0),
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(-1.0, -1.0),
                                                                              child: InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  context.pushNamed(
                                                                                    PostPageWidget.routeName,
                                                                                    queryParameters: {
                                                                                      'postRef': serializeParam(
                                                                                        columnPostsPostsRecord.reference,
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
                                                                                child: Container(
                                                                                  width: 91.0,
                                                                                  height: 70.0,
                                                                                  decoration: BoxDecoration(
                                                                                    image: DecorationImage(
                                                                                      fit: BoxFit.cover,
                                                                                      image: Image.asset(
                                                                                        'assets/images/photo-1434394354979-a235cd36269d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG1vdW50YWluc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                                                                                      ).image,
                                                                                    ),
                                                                                    gradient: LinearGradient(
                                                                                      colors: [
                                                                                        FlutterFlowTheme.of(context).primaryBackground,
                                                                                        FlutterFlowTheme.of(context).primaryBackground,
                                                                                        FlutterFlowTheme.of(context).tertiary,
                                                                                        FlutterFlowTheme.of(context).alternate,
                                                                                        FlutterFlowTheme.of(context).alternate,
                                                                                        FlutterFlowTheme.of(context).tertiary,
                                                                                        FlutterFlowTheme.of(context).primaryBackground,
                                                                                        FlutterFlowTheme.of(context).primaryBackground
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
                                                                                      begin: AlignmentDirectional(1.0, 0.0),
                                                                                      end: AlignmentDirectional(-1.0, 0),
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(0.0),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(70.0, 0.0, 0.0, 0.0),
                                                                                    child: SingleChildScrollView(
                                                                                      scrollDirection: Axis.horizontal,
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          if (!columnTeamTeamsRecord.blocks.contains(currentUserReference))
                                                                                            InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                context.pushNamed(
                                                                                                  TeamPageWidget.routeName,
                                                                                                  queryParameters: {
                                                                                                    'teamRef': serializeParam(
                                                                                                      columnTeamTeamsRecord.reference,
                                                                                                      ParamType.DocumentReference,
                                                                                                    ),
                                                                                                  }.withoutNulls,
                                                                                                  extra: <String, dynamic>{
                                                                                                    '__transition_info__': TransitionInfo(
                                                                                                      hasTransition: true,
                                                                                                      transitionType: PageTransitionType.bottomToTop,
                                                                                                      duration: Duration(milliseconds: 600),
                                                                                                    ),
                                                                                                  },
                                                                                                );
                                                                                              },
                                                                                              child: Container(
                                                                                                width: 45.0,
                                                                                                height: 30.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                                  borderRadius: BorderRadius.circular(3.0),
                                                                                                ),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.network(
                                                                                                    columnTeamTeamsRecord.logo,
                                                                                                    width: 300.0,
                                                                                                    height: 200.0,
                                                                                                    fit: BoxFit.scaleDown,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
                                                                                            child: InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                context.pushNamed(
                                                                                                  PostPageWidget.routeName,
                                                                                                  queryParameters: {
                                                                                                    'postRef': serializeParam(
                                                                                                      columnPostsPostsRecord.reference,
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
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        columnPostsPostsRecord.title,
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
                                                                                  alignment: AlignmentDirectional(-1.0, 1.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(90.0, 0.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            if (columnPostsPostsRecord.description != '')
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                child: Icon(
                                                                                                  Icons.text_fields_outlined,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  size: 20.0,
                                                                                                ),
                                                                                              ),
                                                                                            if (columnPostsPostsRecord.audio != '')
                                                                                              Icon(
                                                                                                Icons.hearing_rounded,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                size: 20.0,
                                                                                              ),
                                                                                            if (columnPostsPostsRecord.youtubeLink != '')
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
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
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
                                                                                                  columnPostsPostsRecord.numComments.toString(),
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
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
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
                                                                                                  columnPostsPostsRecord.numLikes.toString(),
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
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
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
                                                                                                  columnPostsPostsRecord.numDislikes.toString(),
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
                                                                                                columnPostsPostsRecord.numRedcards.toString(),
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
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                              ],
                                                            ),
                                                          ),
                                                      ],
                                                    );
                                                  },
                                                ),
                                              if (columnPostsPostsRecord
                                                      .eventRef !=
                                                  null)
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    StreamBuilder<EventsRecord>(
                                                      stream: EventsRecord
                                                          .getDocument(
                                                              columnPostsPostsRecord
                                                                  .eventRef!),
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

                                                        final columnEventsRecord =
                                                            snapshot.data!;

                                                        return Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceAround,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                if (columnPostsPostsRecord
                                                                        .sportValue !=
                                                                    'sports.meca')
                                                                  StreamBuilder<
                                                                      TeamsRecord>(
                                                                    stream: TeamsRecord.getDocument(
                                                                        columnEventsRecord
                                                                            .teamdomRef!),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                FlutterFlowTheme.of(context).accent4,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }

                                                                      final contDomTeamsRecord =
                                                                          snapshot
                                                                              .data!;

                                                                      return Container(
                                                                        width:
                                                                            155.0,
                                                                        height:
                                                                            60.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                        ),
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              if ((contDomTeamsRecord.sportValue != 'mma') && (columnEventsRecord.sportValue != 'tennis'))
                                                                                InkWell(
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
                                                                                  child: Container(
                                                                                    width: 55.0,
                                                                                    height: 35.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      borderRadius: BorderRadius.circular(3.0),
                                                                                    ),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(0.0),
                                                                                      child: Image.network(
                                                                                        contDomTeamsRecord.logo,
                                                                                        width: 300.0,
                                                                                        height: 200.0,
                                                                                        fit: BoxFit.fitHeight,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              if ((contDomTeamsRecord.sportValue == 'mma') || (columnEventsRecord.sportValue == 'tennis'))
                                                                                InkWell(
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
                                                                                  child: Container(
                                                                                    width: 45.0,
                                                                                    height: 35.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                      shape: BoxShape.rectangle,
                                                                                    ),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
                                                                                      child: Image.network(
                                                                                        contDomTeamsRecord.logo,
                                                                                        width: 300.0,
                                                                                        height: 200.0,
                                                                                        fit: BoxFit.fitWidth,
                                                                                      ),
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
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
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
                                                                if (columnPostsPostsRecord
                                                                        .sportValue !=
                                                                    'sports.meca')
                                                                  StreamBuilder<
                                                                      TeamsRecord>(
                                                                    stream: TeamsRecord.getDocument(
                                                                        columnEventsRecord
                                                                            .teamextRef!),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                FlutterFlowTheme.of(context).accent4,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }

                                                                      final contExtTeamsRecord =
                                                                          snapshot
                                                                              .data!;

                                                                      return Container(
                                                                        width:
                                                                            155.0,
                                                                        height:
                                                                            60.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                        ),
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              if ((contExtTeamsRecord.sportValue != 'mma') && (columnEventsRecord.sportValue != 'tennis'))
                                                                                InkWell(
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
                                                                                  child: Container(
                                                                                    width: 55.0,
                                                                                    height: 35.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      borderRadius: BorderRadius.circular(3.0),
                                                                                    ),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(0.0),
                                                                                      child: Image.network(
                                                                                        contExtTeamsRecord.logo,
                                                                                        width: 300.0,
                                                                                        height: 200.0,
                                                                                        fit: BoxFit.fitHeight,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              if ((contExtTeamsRecord.sportValue == 'mma') || (contExtTeamsRecord.sportValue == 'tennis'))
                                                                                InkWell(
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
                                                                                  child: Container(
                                                                                    width: 45.0,
                                                                                    height: 35.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                      shape: BoxShape.rectangle,
                                                                                    ),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
                                                                                      child: Image.network(
                                                                                        contExtTeamsRecord.logo,
                                                                                        width: 300.0,
                                                                                        height: 200.0,
                                                                                        fit: BoxFit.fitWidth,
                                                                                      ),
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
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
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
                                                            if (columnEventsRecord
                                                                    .sportValue ==
                                                                'sports.meca')
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    columnEventsRecord
                                                                        .week,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).labelSmallFamily,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).labelSmallIsCustom,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
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
                                                                context
                                                                    .pushNamed(
                                                                  PostPageWidget
                                                                      .routeName,
                                                                  queryParameters:
                                                                      {
                                                                    'postRef':
                                                                        serializeParam(
                                                                      columnPostsPostsRecord
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
                                                                              .scale,
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomCenter,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              600),
                                                                    ),
                                                                  },
                                                                );
                                                              },
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
                                                                          .center,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              -1.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            5.0),
                                                                        child:
                                                                            Text(
                                                                          columnPostsPostsRecord
                                                                              .title,
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
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      1.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if (columnPostsPostsRecord.description !=
                                                                              '')
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              5.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.text_fields_outlined,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                        ),
                                                                      if (columnPostsPostsRecord.audio !=
                                                                              '')
                                                                        Icon(
                                                                          Icons
                                                                              .hearing_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      if (columnPostsPostsRecord.youtubeLink !=
                                                                              '')
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              FaIcon(
                                                                            FontAwesomeIcons.youtube,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              5.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.insert_comment_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            columnPostsPostsRecord.numComments.toString(),
                                                                            '0',
                                                                          ),
                                                                          maxLines:
                                                                              1,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
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
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              5.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.favorite_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            columnPostsPostsRecord.numLikes.toString(),
                                                                            '0',
                                                                          ),
                                                                          maxLines:
                                                                              1,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
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
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              5.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.heart_broken_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            columnPostsPostsRecord.numDislikes.toString(),
                                                                            '0',
                                                                          ),
                                                                          maxLines:
                                                                              1,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
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
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              15.0,
                                                                          height:
                                                                              20.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            borderRadius:
                                                                                BorderRadius.circular(2.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          columnPostsPostsRecord
                                                                              .numRedcards
                                                                              .toString(),
                                                                          '0',
                                                                        ),
                                                                        maxLines:
                                                                            1,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
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
                                                          ],
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              Divider(
                                                thickness: 1.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                            ],
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            if (_model.showSportFilter == null ||
                                _model.showSportFilter == '')
                              StreamBuilder<List<TeamsRecord>>(
                                stream: queryTeamsRecord(
                                  queryBuilder: (teamsRecord) =>
                                      teamsRecord.where(
                                    'league_value',
                                    isEqualTo: 'admin',
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
                                  List<TeamsRecord> columnTeamsRecordList =
                                      snapshot.data!;
                                  // Return an empty Container when the item does not exist.
                                  if (snapshot.data!.isEmpty) {
                                    return Container();
                                  }
                                  final columnTeamsRecord =
                                      columnTeamsRecordList.isNotEmpty
                                          ? columnTeamsRecordList.first
                                          : null;

                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (valueOrDefault<bool>(
                                              currentUserDocument?.helpNav,
                                              false) ==
                                          true)
                                        AuthUserStreamWidget(
                                          builder: (context) => Column(
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
                                                  'Choisir le sport et la ligue',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeIsCustom,
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
                                                  'Choose the sport and the league',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeIsCustom,
                                                          ),
                                                ),
                                              if (valueOrDefault(
                                                      currentUserDocument
                                                          ?.langage,
                                                      '') ==
                                                  'deutsch')
                                                Text(
                                                  'Wähle die Sportart und die Liga aus.',
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeIsCustom,
                                                          ),
                                                ),
                                              if (valueOrDefault(
                                                      currentUserDocument
                                                          ?.langage,
                                                      '') ==
                                                  'espanol')
                                                Text(
                                                  'Elige el deporte y la liga.',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeIsCustom,
                                                          ),
                                                ),
                                              if (valueOrDefault(
                                                      currentUserDocument
                                                          ?.langage,
                                                      '') ==
                                                  'italiano')
                                                Text(
                                                  'Scegli lo sport e il campionato',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeIsCustom,
                                                          ),
                                                ),
                                              if (valueOrDefault(
                                                      currentUserDocument
                                                          ?.langage,
                                                      '') ==
                                                  'portugues')
                                                Text(
                                                  'Escolha o desporto e a liga.',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeIsCustom,
                                                          ),
                                                ),
                                              Divider(
                                                thickness: 1.0,
                                                color: valueOrDefault<Color>(
                                                  currentUserDocument?.color2,
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
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
                                                  context.pushNamed(
                                                    ListAdvicesWidget.routeName,
                                                    queryParameters: {
                                                      'teamRef': serializeParam(
                                                        columnTeamsRecord
                                                            ?.reference,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
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
                                                        builder: (context) =>
                                                            Text(
                                                          'Actus, Conseils, Stratégies',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
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
                                                        builder: (context) =>
                                                            Text(
                                                          'News, Advice, Strategies',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLargeIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                    if (valueOrDefault(
                                                            currentUserDocument
                                                                ?.langage,
                                                            '') ==
                                                        'deutsch')
                                                      AuthUserStreamWidget(
                                                        builder: (context) =>
                                                            Text(
                                                          'Nachrichten, Ratschläge,\nStrategien',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLargeIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                    if (valueOrDefault(
                                                            currentUserDocument
                                                                ?.langage,
                                                            '') ==
                                                        'espanol')
                                                      AuthUserStreamWidget(
                                                        builder: (context) =>
                                                            Text(
                                                          'Noticias, consejos,\nEstrategias',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLargeIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                    if (valueOrDefault(
                                                            currentUserDocument
                                                                ?.langage,
                                                            '') ==
                                                        'italiano')
                                                      AuthUserStreamWidget(
                                                        builder: (context) =>
                                                            Text(
                                                          'Notizie, consigli, strategie',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLargeIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                    if (valueOrDefault(
                                                            currentUserDocument
                                                                ?.langage,
                                                            '') ==
                                                        'portugues')
                                                      AuthUserStreamWidget(
                                                        builder: (context) =>
                                                            Text(
                                                          'Notícias, Conselhos,\nEstratégias',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                                letterSpacing:
                                                                    0.0,
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
                                            ),
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
                                                  context.pushNamed(
                                                    ListAdvicesWidget.routeName,
                                                    queryParameters: {
                                                      'teamRef': serializeParam(
                                                        columnTeamsRecord
                                                            ?.reference,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                child: Icon(
                                                  Icons.info_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 30.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
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
                                                  context.pushNamed(
                                                    ListSurveysWidget.routeName,
                                                    queryParameters: {
                                                      'teamRef': serializeParam(
                                                        columnTeamsRecord
                                                            ?.reference,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
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
                                                        builder: (context) =>
                                                            Text(
                                                          'Sondages',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
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
                                                        builder: (context) =>
                                                            Text(
                                                          'Polls',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLargeIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                    if (valueOrDefault(
                                                            currentUserDocument
                                                                ?.langage,
                                                            '') ==
                                                        'deutsch')
                                                      AuthUserStreamWidget(
                                                        builder: (context) =>
                                                            Text(
                                                          'Umfragen',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLargeIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                    if (valueOrDefault(
                                                            currentUserDocument
                                                                ?.langage,
                                                            '') ==
                                                        'espanol')
                                                      AuthUserStreamWidget(
                                                        builder: (context) =>
                                                            Text(
                                                          'Centro',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLargeIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                    if (valueOrDefault(
                                                            currentUserDocument
                                                                ?.langage,
                                                            '') ==
                                                        'italiano')
                                                      AuthUserStreamWidget(
                                                        builder: (context) =>
                                                            Text(
                                                          'Sondaggi',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLargeIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                    if (valueOrDefault(
                                                            currentUserDocument
                                                                ?.langage,
                                                            '') ==
                                                        'portugues')
                                                      AuthUserStreamWidget(
                                                        builder: (context) =>
                                                            Text(
                                                          'Enquetes',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                                letterSpacing:
                                                                    0.0,
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
                                            ),
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
                                                  context.pushNamed(
                                                    ListSurveysWidget.routeName,
                                                    queryParameters: {
                                                      'teamRef': serializeParam(
                                                        columnTeamsRecord
                                                            ?.reference,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                child: Icon(
                                                  Icons.how_to_vote_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 30.0,
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
                            if (_model.showSportFilter != null &&
                                _model.showSportFilter != '')
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
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
                                                Duration(milliseconds: 600),
                                          ),
                                        },
                                      );
                                    },
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
                                          AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              'Il n\'y a pas encore de contenu , pour en créer vous pouvez faire une demande pour devenir membre de club',
                                              textAlign: TextAlign.center,
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
                                              'There is no content yet; to create some, you can apply to become a club member.',
                                              textAlign: TextAlign.center,
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
                                          ),
                                        if (valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            'deutsch')
                                          AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              'Es sind noch keine Inhalte vorhanden; um welche zu erstellen, können Sie sich als Clubmitglied bewerben.',
                                              textAlign: TextAlign.center,
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
                                          ),
                                        if (valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            'espanol')
                                          AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              'Aún no hay contenido; para crearlo, puedes solicitar ser miembro del club.',
                                              textAlign: TextAlign.center,
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
                                          ),
                                        if (valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            'italiano')
                                          AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              'Non ci sono ancora contenuti; per crearne alcuni, puoi fare domanda per diventare membro del club.',
                                              textAlign: TextAlign.center,
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
                                          ),
                                        if (valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            'portugues')
                                          AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              'Ainda não há conteúdo; para criar algum, pode candidatar-se a sócio do clube.',
                                              textAlign: TextAlign.center,
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
                                'ca-app-pub-5890797816389993/2848452128',
                            androidAdUnitID:
                                'ca-app-pub-5890797816389993/5097812140',
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
