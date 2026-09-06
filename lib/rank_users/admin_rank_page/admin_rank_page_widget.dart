import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'admin_rank_page_model.dart';
export 'admin_rank_page_model.dart';

class AdminRankPageWidget extends StatefulWidget {
  const AdminRankPageWidget({super.key});

  static String routeName = 'AdminRankPage';
  static String routePath = '/adminRankPage';

  @override
  State<AdminRankPageWidget> createState() => _AdminRankPageWidgetState();
}

class _AdminRankPageWidgetState extends State<AdminRankPageWidget> {
  late AdminRankPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminRankPageModel());
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
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Admin Classement',
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .displaySmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .displaySmallIsCustom,
                                    ),
                              ),
                            ),
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
                        titleStyle: FlutterFlowTheme.of(context)
                            .labelSmall
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelSmallFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelSmallIsCustom,
                            ),
                        dayOfWeekStyle: FlutterFlowTheme.of(context)
                            .labelSmall
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelSmallFamily,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelSmallIsCustom,
                            ),
                        dateStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                        selectedDateStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              color: FlutterFlowTheme.of(context).success,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .titleSmallIsCustom,
                            ),
                        inactiveDateStyle: FlutterFlowTheme.of(context)
                            .labelSmall
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelSmallFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelSmallIsCustom,
                            ),
                        locale: FFLocalizations.of(context).languageCode,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlutterFlowDropDown<String>(
                            controller: _model.dropLigueValueController ??=
                                FormFieldController<String>(
                              _model.dropLigueValue ??= '',
                            ),
                            options: List<String>.from(
                                ['legende', 'champion', 'pro', 'amateur']),
                            optionLabels: [
                              'Légende',
                              'Champion',
                              'Pro',
                              'Amateur'
                            ],
                            onChanged: (val) =>
                                safeSetState(() => _model.dropLigueValue = val),
                            width: 150.0,
                            height: 56.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            hintText: 'Ligue',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            elevation: 2.0,
                            borderColor: FlutterFlowTheme.of(context).alternate,
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isOverButton: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                          FlutterFlowDropDown<String>(
                            controller: _model.dropDivisionValueController ??=
                                FormFieldController<String>(
                              _model.dropDivisionValue ??= '',
                            ),
                            options: List<String>.from(['1', '2', '3']),
                            optionLabels: [
                              'Division 1',
                              'Division 2',
                              'Division 3'
                            ],
                            onChanged: (val) => safeSetState(
                                () => _model.dropDivisionValue = val),
                            width: 150.0,
                            height: 56.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            hintText: 'Divisions',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            elevation: 2.0,
                            borderColor: FlutterFlowTheme.of(context).alternate,
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isOverButton: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 210.0, 10.0, 50.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: FutureBuilder<int>(
                                  future: queryUsersRecordCount(
                                    queryBuilder: (usersRecord) =>
                                        usersRecord.where(
                                      'rank_value',
                                      isEqualTo: _model.dropLigueValue,
                                    ),
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
                                    int columnUsersCount = snapshot.data!;

                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  30.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              AuthUserStreamWidget(
                                                builder: (context) => Icon(
                                                  Icons.groups_rounded,
                                                  color: currentUserDocument
                                                      ?.color2,
                                                  size: 30.0,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    columnUsersCount.toString(),
                                                    '0',
                                                  ),
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumIsCustom,
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
                              ),
                              FutureBuilder<int>(
                                future: queryUsersRecordCount(
                                  queryBuilder: (usersRecord) => usersRecord
                                      .where(
                                        'rank_value',
                                        isEqualTo: _model.dropLigueValue,
                                      )
                                      .where(
                                        'division_value',
                                        isEqualTo: _model.dropDivisionValue,
                                      ),
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
                                  int columnUsersCount = snapshot.data!;

                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 10.0, 10.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  columnUsersCount.toString(),
                                                  '0',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleMediumIsCustom,
                                                        ),
                                              ),
                                            ),
                                            AuthUserStreamWidget(
                                              builder: (context) => Icon(
                                                Icons.groups_rounded,
                                                color:
                                                    currentUserDocument?.color2,
                                                size: 30.0,
                                              ),
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
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 9.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 45.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 120.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Text(
                                                    'Pseudo',
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
                                              ),
                                              Container(
                                                width: 85.0,
                                                height: 35.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
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
                                                      _model.showPenalitiesFilter =
                                                          null;
                                                      _model.showUpdateFilter =
                                                          null;
                                                      safeSetState(() {});
                                                    },
                                                    child: Text(
                                                      'Total\nbénéfices',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                lineHeight: 1.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 115.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Stock',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 65.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Gagnés',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmallFamily,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmallIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 55.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Cote moyenne',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 65.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Perdus',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmallFamily,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmallIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 65.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'ClickSTeam',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmallFamily,
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmallIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 55.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
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
                                                      _model.showPenalitiesFilter =
                                                          'num_penalities';
                                                      _model.showUpdateFilter =
                                                          null;
                                                      safeSetState(() {});
                                                    },
                                                    child: Text(
                                                      'Signals',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 175.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'MAJ Stats à 0 en plus',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 50.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 100.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
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
                                                      _model.showUpdateFilter =
                                                          'update';
                                                      _model.showPenalitiesFilter =
                                                          null;
                                                      safeSetState(() {});
                                                    },
                                                    child: Text(
                                                      'Dernière MAJ',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        if ((_model.showPenalitiesFilter ==
                                                    null ||
                                                _model.showPenalitiesFilter ==
                                                    '') &&
                                            (_model.showUpdateFilter == null ||
                                                _model.showUpdateFilter == ''))
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 20.0),
                                            child: StreamBuilder<
                                                List<UsersRecord>>(
                                              stream: queryUsersRecord(
                                                queryBuilder: (usersRecord) =>
                                                    usersRecord
                                                        .where(
                                                          'rank_value',
                                                          isEqualTo: _model
                                                              .dropLigueValue,
                                                        )
                                                        .where(
                                                          'division_value',
                                                          isEqualTo: _model
                                                              .dropDivisionValue,
                                                        )
                                                        .where(
                                                          'earnings_total',
                                                          isNotEqualTo: 0.0,
                                                        )
                                                        .orderBy(
                                                            'earnings_total',
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
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent4,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<UsersRecord>
                                                    columnUsersEarningsScrollUsersRecordList =
                                                    snapshot.data!;

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                      columnUsersEarningsScrollUsersRecordList
                                                          .length,
                                                      (columnUsersEarningsScrollIndex) {
                                                    final columnUsersEarningsScrollUsersRecord =
                                                        columnUsersEarningsScrollUsersRecordList[
                                                            columnUsersEarningsScrollIndex];
                                                    return Visibility(
                                                      visible:
                                                          valueOrDefault<bool>(
                                                        columnUsersEarningsScrollUsersRecord
                                                                .updateTime !=
                                                            _model
                                                                .calendarSelectedDay
                                                                ?.start,
                                                        true,
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: 45.0,
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  functions
                                                                      .zeroTo1(
                                                                          columnUsersEarningsScrollIndex)
                                                                      .toString(),
                                                                  '1',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 120.0,
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1.0, 0.0),
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
                                                                  context
                                                                      .pushNamed(
                                                                    PublicProfilPageWidget
                                                                        .routeName,
                                                                    queryParameters:
                                                                        {
                                                                      'userRef':
                                                                          serializeParam(
                                                                        columnUsersEarningsScrollUsersRecord
                                                                            .reference,
                                                                        ParamType
                                                                            .DocumentReference,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    columnUsersEarningsScrollUsersRecord
                                                                        .displayName,
                                                                    'NewUser',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: valueOrDefault<
                                                                            Color>(
                                                                          columnUsersEarningsScrollUsersRecord
                                                                              .color1,
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 85.0,
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  functions
                                                                      .limitOf2Decimal(
                                                                          columnUsersEarningsScrollUsersRecord
                                                                              .earningsTotal)
                                                                      .toString(),
                                                                  '00.00',
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        columnUsersEarningsScrollUsersRecord
                                                                            .color1,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 115.0,
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  functions
                                                                      .limitOf2Decimal(
                                                                          columnUsersEarningsScrollUsersRecord
                                                                              .stock)
                                                                      .toString(),
                                                                  '900.00',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        columnUsersEarningsScrollUsersRecord
                                                                            .color1,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 65.0,
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  columnUsersEarningsScrollUsersRecord
                                                                      .betWin
                                                                      .toString(),
                                                                  '0',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        columnUsersEarningsScrollUsersRecord
                                                                            .color1,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 55.0,
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  functions
                                                                      .averageOdd(
                                                                          columnUsersEarningsScrollUsersRecord
                                                                              .totalGains,
                                                                          columnUsersEarningsScrollUsersRecord
                                                                              .totalMises)
                                                                      .toString(),
                                                                  '0',
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        columnUsersEarningsScrollUsersRecord
                                                                            .color1,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Container(
                                                              width: 65.0,
                                                              height: 30.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    functions
                                                                        .averageGoals(
                                                                            columnUsersEarningsScrollUsersRecord.totalBets,
                                                                            columnUsersEarningsScrollUsersRecord.betWin)
                                                                        .toString(),
                                                                    '0',
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: valueOrDefault<
                                                                            Color>(
                                                                          columnUsersEarningsScrollUsersRecord
                                                                              .color1,
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 65.0,
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  columnUsersEarningsScrollUsersRecord
                                                                      .clickSTeam
                                                                      .toString(),
                                                                  '0',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        columnUsersEarningsScrollUsersRecord
                                                                            .color1,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 55.0,
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        1.0),
                                                              ),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  columnUsersEarningsScrollUsersRecord
                                                                      .numPenalities
                                                                      .toString(),
                                                                  '0',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        columnUsersEarningsScrollUsersRecord
                                                                            .color1,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 35.0,
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        1.0),
                                                              ),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                            ),
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
                                                                        .spaceAround,
                                                                children: [
                                                                  if (_model
                                                                          .dropDivisionValue ==
                                                                      '3')
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
                                                                        await columnUsersEarningsScrollUsersRecord
                                                                            .reference
                                                                            .update({
                                                                          ...createUsersRecordData(
                                                                            divisionValue:
                                                                                '2',
                                                                            updateTime:
                                                                                _model.calendarSelectedDay?.start,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'stock': FieldValue.increment(300.0),
                                                                            },
                                                                          ),
                                                                        });

                                                                        await columnUsersEarningsScrollUsersRecord
                                                                            .reference
                                                                            .update({
                                                                          ...createUsersRecordData(
                                                                            clickSTeam:
                                                                                0,
                                                                            betWin:
                                                                                0,
                                                                            totalGains:
                                                                                0.0,
                                                                            betLoose:
                                                                                0,
                                                                            earningsTotal:
                                                                                0.0,
                                                                            totalMises:
                                                                                0.0,
                                                                            totalBets:
                                                                                0,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'num_penalities': FieldValue.delete(),
                                                                            },
                                                                          ),
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .filter_2_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                  if (_model
                                                                          .dropDivisionValue ==
                                                                      '2')
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
                                                                        await columnUsersEarningsScrollUsersRecord
                                                                            .reference
                                                                            .update({
                                                                          ...createUsersRecordData(
                                                                            divisionValue:
                                                                                '1',
                                                                            updateTime:
                                                                                _model.calendarSelectedDay?.start,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'stock': FieldValue.increment(400.0),
                                                                            },
                                                                          ),
                                                                        });

                                                                        await columnUsersEarningsScrollUsersRecord
                                                                            .reference
                                                                            .update({
                                                                          ...createUsersRecordData(
                                                                            clickSTeam:
                                                                                0,
                                                                            betWin:
                                                                                0,
                                                                            totalGains:
                                                                                0.0,
                                                                            betLoose:
                                                                                0,
                                                                            earningsTotal:
                                                                                0.0,
                                                                            totalMises:
                                                                                0.0,
                                                                            totalBets:
                                                                                0,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'num_penalities': FieldValue.delete(),
                                                                            },
                                                                          ),
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .filter_1,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 35.0,
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        1.0),
                                                              ),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                            ),
                                                            child: Align(
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
                                                                  await columnUsersEarningsScrollUsersRecord
                                                                      .reference
                                                                      .update(
                                                                          createUsersRecordData(
                                                                    divisionValue:
                                                                        _model
                                                                            .dropDivisionValue,
                                                                    updateTime: _model
                                                                        .calendarSelectedDay
                                                                        ?.start,
                                                                  ));

                                                                  await columnUsersEarningsScrollUsersRecord
                                                                      .reference
                                                                      .update({
                                                                    ...createUsersRecordData(
                                                                      clickSTeam:
                                                                          0,
                                                                      betWin: 0,
                                                                      totalGains:
                                                                          0.0,
                                                                      betLoose:
                                                                          0,
                                                                      earningsTotal:
                                                                          0.0,
                                                                      totalMises:
                                                                          0.0,
                                                                      totalBets:
                                                                          0,
                                                                    ),
                                                                    ...mapToFirestore(
                                                                      {
                                                                        'num_penalities':
                                                                            FieldValue.delete(),
                                                                      },
                                                                    ),
                                                                  });
                                                                },
                                                                child: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .equals,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 35.0,
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        1.0),
                                                              ),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                            ),
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
                                                                        .spaceAround,
                                                                children: [
                                                                  if (_model
                                                                          .dropDivisionValue ==
                                                                      '1')
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
                                                                        await columnUsersEarningsScrollUsersRecord
                                                                            .reference
                                                                            .update(createUsersRecordData(
                                                                          divisionValue:
                                                                              '2',
                                                                          updateTime: _model
                                                                              .calendarSelectedDay
                                                                              ?.start,
                                                                        ));

                                                                        await columnUsersEarningsScrollUsersRecord
                                                                            .reference
                                                                            .update({
                                                                          ...createUsersRecordData(
                                                                            clickSTeam:
                                                                                0,
                                                                            betWin:
                                                                                0,
                                                                            totalGains:
                                                                                0.0,
                                                                            betLoose:
                                                                                0,
                                                                            earningsTotal:
                                                                                0.0,
                                                                            totalMises:
                                                                                0.0,
                                                                            totalBets:
                                                                                0,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'num_penalities': FieldValue.delete(),
                                                                            },
                                                                          ),
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .filter_2_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                  if (_model
                                                                          .dropDivisionValue ==
                                                                      '2')
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
                                                                        await columnUsersEarningsScrollUsersRecord
                                                                            .reference
                                                                            .update(createUsersRecordData(
                                                                          divisionValue:
                                                                              '3',
                                                                          updateTime: _model
                                                                              .calendarSelectedDay
                                                                              ?.start,
                                                                        ));

                                                                        await columnUsersEarningsScrollUsersRecord
                                                                            .reference
                                                                            .update({
                                                                          ...createUsersRecordData(
                                                                            clickSTeam:
                                                                                0,
                                                                            betWin:
                                                                                0,
                                                                            totalGains:
                                                                                0.0,
                                                                            betLoose:
                                                                                0,
                                                                            earningsTotal:
                                                                                0.0,
                                                                            totalMises:
                                                                                0.0,
                                                                            totalBets:
                                                                                0,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'num_penalities': FieldValue.delete(),
                                                                            },
                                                                          ),
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .filter_3,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 35.0,
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        1.0),
                                                              ),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                            ),
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
                                                                  if (_model
                                                                          .dropLigueValue ==
                                                                      'amateur')
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
                                                                        await columnUsersEarningsScrollUsersRecord
                                                                            .reference
                                                                            .update({
                                                                          ...createUsersRecordData(
                                                                            divisionValue:
                                                                                '3',
                                                                            rankValue:
                                                                                'pro',
                                                                            updateTime:
                                                                                _model.calendarSelectedDay?.start,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'stock': FieldValue.increment(400.0),
                                                                            },
                                                                          ),
                                                                        });

                                                                        await columnUsersEarningsScrollUsersRecord
                                                                            .reference
                                                                            .update({
                                                                          ...createUsersRecordData(
                                                                            clickSTeam:
                                                                                0,
                                                                            betWin:
                                                                                0,
                                                                            totalGains:
                                                                                0.0,
                                                                            betLoose:
                                                                                0,
                                                                            earningsTotal:
                                                                                0.0,
                                                                            totalMises:
                                                                                0.0,
                                                                            totalBets:
                                                                                0,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'num_penalities': FieldValue.delete(),
                                                                            },
                                                                          ),
                                                                        });
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        'P',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                              color: FlutterFlowTheme.of(context).success,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  if (_model
                                                                          .dropLigueValue ==
                                                                      'pro')
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
                                                                        await columnUsersEarningsScrollUsersRecord
                                                                            .reference
                                                                            .update({
                                                                          ...createUsersRecordData(
                                                                            divisionValue:
                                                                                '3',
                                                                            rankValue:
                                                                                'champion',
                                                                            updateTime:
                                                                                _model.calendarSelectedDay?.start,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'stock': FieldValue.increment(500.0),
                                                                            },
                                                                          ),
                                                                        });

                                                                        await columnUsersEarningsScrollUsersRecord
                                                                            .reference
                                                                            .update({
                                                                          ...createUsersRecordData(
                                                                            clickSTeam:
                                                                                0,
                                                                            betWin:
                                                                                0,
                                                                            totalGains:
                                                                                0.0,
                                                                            betLoose:
                                                                                0,
                                                                            earningsTotal:
                                                                                0.0,
                                                                            totalMises:
                                                                                0.0,
                                                                            totalBets:
                                                                                0,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'num_penalities': FieldValue.delete(),
                                                                            },
                                                                          ),
                                                                        });
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        'C',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                              color: FlutterFlowTheme.of(context).success,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  if (_model
                                                                          .dropLigueValue ==
                                                                      'champion')
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
                                                                        await columnUsersEarningsScrollUsersRecord
                                                                            .reference
                                                                            .update({
                                                                          ...createUsersRecordData(
                                                                            divisionValue:
                                                                                '3',
                                                                            rankValue:
                                                                                'legende',
                                                                            updateTime:
                                                                                _model.calendarSelectedDay?.start,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'stock': FieldValue.increment(600.0),
                                                                            },
                                                                          ),
                                                                        });

                                                                        await columnUsersEarningsScrollUsersRecord
                                                                            .reference
                                                                            .update(createUsersRecordData(
                                                                          clickSTeam:
                                                                              0,
                                                                          betWin:
                                                                              0,
                                                                          totalGains:
                                                                              0.0,
                                                                          betLoose:
                                                                              0,
                                                                          earningsTotal:
                                                                              0.0,
                                                                          totalMises:
                                                                              0.0,
                                                                          totalBets:
                                                                              0,
                                                                          numPenalities:
                                                                              0,
                                                                        ));
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        'L',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                              color: FlutterFlowTheme.of(context).success,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 35.0,
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        1.0),
                                                              ),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                            ),
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
                                                                  if (_model
                                                                          .dropLigueValue ==
                                                                      'pro')
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
                                                                        await columnUsersEarningsScrollUsersRecord
                                                                            .reference
                                                                            .update(createUsersRecordData(
                                                                          divisionValue:
                                                                              '1',
                                                                          rankValue:
                                                                              'amateur',
                                                                          updateTime: _model
                                                                              .calendarSelectedDay
                                                                              ?.start,
                                                                        ));

                                                                        await columnUsersEarningsScrollUsersRecord
                                                                            .reference
                                                                            .update({
                                                                          ...createUsersRecordData(
                                                                            clickSTeam:
                                                                                0,
                                                                            betWin:
                                                                                0,
                                                                            totalGains:
                                                                                0.0,
                                                                            betLoose:
                                                                                0,
                                                                            earningsTotal:
                                                                                0.0,
                                                                            totalMises:
                                                                                0.0,
                                                                            totalBets:
                                                                                0,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'num_penalities': FieldValue.delete(),
                                                                            },
                                                                          ),
                                                                        });
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        'A',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  if (_model
                                                                          .dropLigueValue ==
                                                                      'champion')
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
                                                                        await columnUsersEarningsScrollUsersRecord
                                                                            .reference
                                                                            .update(createUsersRecordData(
                                                                          divisionValue:
                                                                              '1',
                                                                          rankValue:
                                                                              'pro',
                                                                          updateTime: _model
                                                                              .calendarSelectedDay
                                                                              ?.start,
                                                                        ));

                                                                        await columnUsersEarningsScrollUsersRecord
                                                                            .reference
                                                                            .update({
                                                                          ...createUsersRecordData(
                                                                            clickSTeam:
                                                                                0,
                                                                            betWin:
                                                                                0,
                                                                            totalGains:
                                                                                0.0,
                                                                            betLoose:
                                                                                0,
                                                                            earningsTotal:
                                                                                0.0,
                                                                            totalMises:
                                                                                0.0,
                                                                            totalBets:
                                                                                0,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'num_penalities': FieldValue.delete(),
                                                                            },
                                                                          ),
                                                                        });
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        'P',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  if (_model
                                                                          .dropLigueValue ==
                                                                      'legende')
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
                                                                        await columnUsersEarningsScrollUsersRecord
                                                                            .reference
                                                                            .update(createUsersRecordData(
                                                                          divisionValue:
                                                                              '1',
                                                                          rankValue:
                                                                              'champion',
                                                                          updateTime: _model
                                                                              .calendarSelectedDay
                                                                              ?.start,
                                                                        ));

                                                                        await columnUsersEarningsScrollUsersRecord
                                                                            .reference
                                                                            .update(createUsersRecordData(
                                                                          clickSTeam:
                                                                              0,
                                                                          betWin:
                                                                              0,
                                                                          totalGains:
                                                                              0.0,
                                                                          betLoose:
                                                                              0,
                                                                          earningsTotal:
                                                                              0.0,
                                                                          totalMises:
                                                                              0.0,
                                                                          totalBets:
                                                                              0,
                                                                          numPenalities:
                                                                              0,
                                                                        ));
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        'C',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 50.0,
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        1.0),
                                                              ),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                            ),
                                                            child: Visibility(
                                                              visible:
                                                                  columnUsersEarningsScrollUsersRecord
                                                                          .stock <
                                                                      400.0,
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
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
                                                                      await columnUsersEarningsScrollUsersRecord
                                                                          .reference
                                                                          .update({
                                                                        ...mapToFirestore(
                                                                          {
                                                                            'stock':
                                                                                FieldValue.increment(200.0),
                                                                          },
                                                                        ),
                                                                      });
                                                                    },
                                                                    child: Text(
                                                                      '+ 200',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 100.0,
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        1.0),
                                                              ),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  dateTimeFormat(
                                                                    "d/M/y",
                                                                    columnUsersEarningsScrollUsersRecord
                                                                        .updateTime!,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 45.0,
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  functions
                                                                      .zeroTo1(
                                                                          columnUsersEarningsScrollIndex)
                                                                      .toString(),
                                                                  '1',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
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
                                        if (_model.showPenalitiesFilter !=
                                                null &&
                                            _model.showPenalitiesFilter != '')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 20.0),
                                            child: StreamBuilder<
                                                List<UsersRecord>>(
                                              stream: queryUsersRecord(
                                                queryBuilder: (usersRecord) =>
                                                    usersRecord
                                                        .where(
                                                          'rank_value',
                                                          isEqualTo: _model
                                                              .dropLigueValue,
                                                        )
                                                        .where(
                                                          'division_value',
                                                          isEqualTo: _model
                                                              .dropDivisionValue,
                                                        )
                                                        .orderBy(
                                                            'num_penalities',
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
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent4,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<UsersRecord>
                                                    columnUsersEarningsScrollUsersRecordList =
                                                    snapshot.data!;

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                      columnUsersEarningsScrollUsersRecordList
                                                          .length,
                                                      (columnUsersEarningsScrollIndex) {
                                                    final columnUsersEarningsScrollUsersRecord =
                                                        columnUsersEarningsScrollUsersRecordList[
                                                            columnUsersEarningsScrollIndex];
                                                    return Visibility(
                                                      visible:
                                                          valueOrDefault<bool>(
                                                        (columnUsersEarningsScrollUsersRecord
                                                                    .updateTime !=
                                                                _model
                                                                    .calendarSelectedDay
                                                                    ?.start) &&
                                                            (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.numPenalities,
                                                                    0) !=
                                                                null),
                                                        true,
                                                      ),
                                                      child:
                                                          AuthUserStreamWidget(
                                                        builder: (context) =>
                                                            Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 45.0,
                                                              height: 30.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    functions
                                                                        .zeroTo1(
                                                                            columnUsersEarningsScrollIndex)
                                                                        .toString(),
                                                                    '1',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 120.0,
                                                              height: 30.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
                                                                        0.0),
                                                                child: InkWell(
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
                                                                      PublicProfilPageWidget
                                                                          .routeName,
                                                                      queryParameters:
                                                                          {
                                                                        'userRef':
                                                                            serializeParam(
                                                                          columnUsersEarningsScrollUsersRecord
                                                                              .reference,
                                                                          ParamType
                                                                              .DocumentReference,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  },
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      columnUsersEarningsScrollUsersRecord
                                                                          .displayName,
                                                                      'NewUser',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          color:
                                                                              valueOrDefault<Color>(
                                                                            columnUsersEarningsScrollUsersRecord.color1,
                                                                            FlutterFlowTheme.of(context).primaryText,
                                                                          ),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 85.0,
                                                              height: 30.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    functions
                                                                        .limitOf2Decimal(
                                                                            columnUsersEarningsScrollUsersRecord.earningsTotal)
                                                                        .toString(),
                                                                    '00.00',
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: valueOrDefault<
                                                                            Color>(
                                                                          columnUsersEarningsScrollUsersRecord
                                                                              .color1,
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 115.0,
                                                              height: 30.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    functions
                                                                        .limitOf2Decimal(
                                                                            columnUsersEarningsScrollUsersRecord.stock)
                                                                        .toString(),
                                                                    '900.00',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: valueOrDefault<
                                                                            Color>(
                                                                          columnUsersEarningsScrollUsersRecord
                                                                              .color1,
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 65.0,
                                                              height: 30.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    columnUsersEarningsScrollUsersRecord
                                                                        .betWin
                                                                        .toString(),
                                                                    '0',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: valueOrDefault<
                                                                            Color>(
                                                                          columnUsersEarningsScrollUsersRecord
                                                                              .color1,
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 55.0,
                                                              height: 30.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    functions
                                                                        .averageOdd(
                                                                            columnUsersEarningsScrollUsersRecord.totalGains,
                                                                            columnUsersEarningsScrollUsersRecord.totalMises)
                                                                        .toString(),
                                                                    '0',
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: valueOrDefault<
                                                                            Color>(
                                                                          columnUsersEarningsScrollUsersRecord
                                                                              .color1,
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Container(
                                                                width: 65.0,
                                                                height: 30.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      functions
                                                                          .averageGoals(
                                                                              columnUsersEarningsScrollUsersRecord.totalBets,
                                                                              columnUsersEarningsScrollUsersRecord.betWin)
                                                                          .toString(),
                                                                      '0',
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          color:
                                                                              valueOrDefault<Color>(
                                                                            columnUsersEarningsScrollUsersRecord.color1,
                                                                            FlutterFlowTheme.of(context).primaryText,
                                                                          ),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 65.0,
                                                              height: 30.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    columnUsersEarningsScrollUsersRecord
                                                                        .clickSTeam
                                                                        .toString(),
                                                                    '0',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: valueOrDefault<
                                                                            Color>(
                                                                          columnUsersEarningsScrollUsersRecord
                                                                              .color1,
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 55.0,
                                                              height: 30.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  topRight: Radius
                                                                      .circular(
                                                                          1.0),
                                                                ),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    columnUsersEarningsScrollUsersRecord
                                                                        .numPenalities
                                                                        .toString(),
                                                                    '0',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: valueOrDefault<
                                                                            Color>(
                                                                          columnUsersEarningsScrollUsersRecord
                                                                              .color1,
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 35.0,
                                                              height: 30.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  topRight: Radius
                                                                      .circular(
                                                                          1.0),
                                                                ),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                              ),
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
                                                                          .spaceAround,
                                                                  children: [
                                                                    if (_model
                                                                            .dropDivisionValue ==
                                                                        '3')
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
                                                                          await columnUsersEarningsScrollUsersRecord
                                                                              .reference
                                                                              .update(createUsersRecordData(
                                                                            divisionValue:
                                                                                '2',
                                                                            updateTime:
                                                                                _model.calendarSelectedDay?.start,
                                                                          ));

                                                                          await columnUsersEarningsScrollUsersRecord
                                                                              .reference
                                                                              .update(createUsersRecordData(
                                                                            clickSTeam:
                                                                                0,
                                                                            betWin:
                                                                                0,
                                                                            totalGains:
                                                                                0.0,
                                                                            betLoose:
                                                                                0,
                                                                            earningsTotal:
                                                                                0.0,
                                                                            totalMises:
                                                                                0.0,
                                                                            totalBets:
                                                                                0,
                                                                            numPenalities:
                                                                                0,
                                                                          ));
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .filter_2_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).success,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    if (_model
                                                                            .dropDivisionValue ==
                                                                        '2')
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
                                                                          await columnUsersEarningsScrollUsersRecord
                                                                              .reference
                                                                              .update(createUsersRecordData(
                                                                            divisionValue:
                                                                                '1',
                                                                            updateTime:
                                                                                _model.calendarSelectedDay?.start,
                                                                          ));

                                                                          await columnUsersEarningsScrollUsersRecord
                                                                              .reference
                                                                              .update(createUsersRecordData(
                                                                            clickSTeam:
                                                                                0,
                                                                            betWin:
                                                                                0,
                                                                            totalGains:
                                                                                0.0,
                                                                            betLoose:
                                                                                0,
                                                                            earningsTotal:
                                                                                0.0,
                                                                            totalMises:
                                                                                0.0,
                                                                            totalBets:
                                                                                0,
                                                                            numPenalities:
                                                                                0,
                                                                          ));
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .filter_1,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).success,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 35.0,
                                                              height: 30.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  topRight: Radius
                                                                      .circular(
                                                                          1.0),
                                                                ),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: InkWell(
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
                                                                    await columnUsersEarningsScrollUsersRecord
                                                                        .reference
                                                                        .update(
                                                                            createUsersRecordData(
                                                                      divisionValue:
                                                                          _model
                                                                              .dropDivisionValue,
                                                                      updateTime: _model
                                                                          .calendarSelectedDay
                                                                          ?.start,
                                                                    ));

                                                                    await columnUsersEarningsScrollUsersRecord
                                                                        .reference
                                                                        .update(
                                                                            createUsersRecordData(
                                                                      clickSTeam:
                                                                          0,
                                                                      betWin: 0,
                                                                      totalGains:
                                                                          0.0,
                                                                      betLoose:
                                                                          0,
                                                                      earningsTotal:
                                                                          0.0,
                                                                      totalMises:
                                                                          0.0,
                                                                      totalBets:
                                                                          0,
                                                                      numPenalities:
                                                                          0,
                                                                    ));
                                                                  },
                                                                  child: FaIcon(
                                                                    FontAwesomeIcons
                                                                        .equals,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 35.0,
                                                              height: 30.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  topRight: Radius
                                                                      .circular(
                                                                          1.0),
                                                                ),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                              ),
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
                                                                          .spaceAround,
                                                                  children: [
                                                                    if (_model
                                                                            .dropDivisionValue ==
                                                                        '1')
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
                                                                          await columnUsersEarningsScrollUsersRecord
                                                                              .reference
                                                                              .update(createUsersRecordData(
                                                                            divisionValue:
                                                                                '2',
                                                                            updateTime:
                                                                                _model.calendarSelectedDay?.start,
                                                                          ));

                                                                          await columnUsersEarningsScrollUsersRecord
                                                                              .reference
                                                                              .update(createUsersRecordData(
                                                                            clickSTeam:
                                                                                0,
                                                                            betWin:
                                                                                0,
                                                                            totalGains:
                                                                                0.0,
                                                                            betLoose:
                                                                                0,
                                                                            earningsTotal:
                                                                                0.0,
                                                                            totalMises:
                                                                                0.0,
                                                                            totalBets:
                                                                                0,
                                                                            numPenalities:
                                                                                0,
                                                                          ));
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .filter_2_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    if (_model
                                                                            .dropDivisionValue ==
                                                                        '2')
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
                                                                          await columnUsersEarningsScrollUsersRecord
                                                                              .reference
                                                                              .update(createUsersRecordData(
                                                                            divisionValue:
                                                                                '3',
                                                                            updateTime:
                                                                                _model.calendarSelectedDay?.start,
                                                                          ));

                                                                          await columnUsersEarningsScrollUsersRecord
                                                                              .reference
                                                                              .update(createUsersRecordData(
                                                                            clickSTeam:
                                                                                0,
                                                                            betWin:
                                                                                0,
                                                                            totalGains:
                                                                                0.0,
                                                                            betLoose:
                                                                                0,
                                                                            earningsTotal:
                                                                                0.0,
                                                                            totalMises:
                                                                                0.0,
                                                                            totalBets:
                                                                                0,
                                                                            numPenalities:
                                                                                0,
                                                                          ));
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .filter_3,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 35.0,
                                                              height: 30.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  topRight: Radius
                                                                      .circular(
                                                                          1.0),
                                                                ),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                              ),
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
                                                                    if (_model
                                                                            .dropLigueValue ==
                                                                        'amateur')
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
                                                                          await columnUsersEarningsScrollUsersRecord
                                                                              .reference
                                                                              .update(createUsersRecordData(
                                                                            divisionValue:
                                                                                '3',
                                                                            rankValue:
                                                                                'pro',
                                                                            updateTime:
                                                                                _model.calendarSelectedDay?.start,
                                                                          ));

                                                                          await columnUsersEarningsScrollUsersRecord
                                                                              .reference
                                                                              .update(createUsersRecordData(
                                                                            clickSTeam:
                                                                                0,
                                                                            betWin:
                                                                                0,
                                                                            totalGains:
                                                                                0.0,
                                                                            betLoose:
                                                                                0,
                                                                            earningsTotal:
                                                                                0.0,
                                                                            totalMises:
                                                                                0.0,
                                                                            totalBets:
                                                                                0,
                                                                            numPenalities:
                                                                                0,
                                                                          ));
                                                                        },
                                                                        child:
                                                                            Text(
                                                                          'P',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                color: FlutterFlowTheme.of(context).success,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    if (_model
                                                                            .dropLigueValue ==
                                                                        'pro')
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
                                                                          await columnUsersEarningsScrollUsersRecord
                                                                              .reference
                                                                              .update(createUsersRecordData(
                                                                            divisionValue:
                                                                                '3',
                                                                            rankValue:
                                                                                'champion',
                                                                            updateTime:
                                                                                _model.calendarSelectedDay?.start,
                                                                          ));

                                                                          await columnUsersEarningsScrollUsersRecord
                                                                              .reference
                                                                              .update(createUsersRecordData(
                                                                            clickSTeam:
                                                                                0,
                                                                            betWin:
                                                                                0,
                                                                            totalGains:
                                                                                0.0,
                                                                            betLoose:
                                                                                0,
                                                                            earningsTotal:
                                                                                0.0,
                                                                            totalMises:
                                                                                0.0,
                                                                            totalBets:
                                                                                0,
                                                                            numPenalities:
                                                                                0,
                                                                          ));
                                                                        },
                                                                        child:
                                                                            Text(
                                                                          'C',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                color: FlutterFlowTheme.of(context).success,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    if (_model
                                                                            .dropLigueValue ==
                                                                        'champion')
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
                                                                          await columnUsersEarningsScrollUsersRecord
                                                                              .reference
                                                                              .update(createUsersRecordData(
                                                                            divisionValue:
                                                                                '3',
                                                                            rankValue:
                                                                                'legende',
                                                                            updateTime:
                                                                                _model.calendarSelectedDay?.start,
                                                                          ));

                                                                          await columnUsersEarningsScrollUsersRecord
                                                                              .reference
                                                                              .update(createUsersRecordData(
                                                                            clickSTeam:
                                                                                0,
                                                                            betWin:
                                                                                0,
                                                                            totalGains:
                                                                                0.0,
                                                                            betLoose:
                                                                                0,
                                                                            earningsTotal:
                                                                                0.0,
                                                                            totalMises:
                                                                                0.0,
                                                                            totalBets:
                                                                                0,
                                                                            numPenalities:
                                                                                0,
                                                                          ));
                                                                        },
                                                                        child:
                                                                            Text(
                                                                          'L',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                color: FlutterFlowTheme.of(context).success,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 35.0,
                                                              height: 30.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  topRight: Radius
                                                                      .circular(
                                                                          1.0),
                                                                ),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                              ),
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
                                                                    if (_model
                                                                            .dropLigueValue ==
                                                                        'pro')
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
                                                                          await columnUsersEarningsScrollUsersRecord
                                                                              .reference
                                                                              .update(createUsersRecordData(
                                                                            divisionValue:
                                                                                '1',
                                                                            rankValue:
                                                                                'amateur',
                                                                            updateTime:
                                                                                _model.calendarSelectedDay?.start,
                                                                          ));

                                                                          await columnUsersEarningsScrollUsersRecord
                                                                              .reference
                                                                              .update(createUsersRecordData(
                                                                            clickSTeam:
                                                                                0,
                                                                            betWin:
                                                                                0,
                                                                            totalGains:
                                                                                0.0,
                                                                            betLoose:
                                                                                0,
                                                                            earningsTotal:
                                                                                0.0,
                                                                            totalMises:
                                                                                0.0,
                                                                            totalBets:
                                                                                0,
                                                                            numPenalities:
                                                                                0,
                                                                          ));
                                                                        },
                                                                        child:
                                                                            Text(
                                                                          'A',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    if (_model
                                                                            .dropLigueValue ==
                                                                        'champion')
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
                                                                          await columnUsersEarningsScrollUsersRecord
                                                                              .reference
                                                                              .update(createUsersRecordData(
                                                                            divisionValue:
                                                                                '1',
                                                                            rankValue:
                                                                                'pro',
                                                                            updateTime:
                                                                                _model.calendarSelectedDay?.start,
                                                                          ));

                                                                          await columnUsersEarningsScrollUsersRecord
                                                                              .reference
                                                                              .update(createUsersRecordData(
                                                                            clickSTeam:
                                                                                0,
                                                                            betWin:
                                                                                0,
                                                                            totalGains:
                                                                                0.0,
                                                                            betLoose:
                                                                                0,
                                                                            earningsTotal:
                                                                                0.0,
                                                                            totalMises:
                                                                                0.0,
                                                                            totalBets:
                                                                                0,
                                                                            numPenalities:
                                                                                0,
                                                                          ));
                                                                        },
                                                                        child:
                                                                            Text(
                                                                          'P',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    if (_model
                                                                            .dropLigueValue ==
                                                                        'legende')
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
                                                                          await columnUsersEarningsScrollUsersRecord
                                                                              .reference
                                                                              .update(createUsersRecordData(
                                                                            divisionValue:
                                                                                '1',
                                                                            rankValue:
                                                                                'champion',
                                                                            updateTime:
                                                                                _model.calendarSelectedDay?.start,
                                                                          ));

                                                                          await columnUsersEarningsScrollUsersRecord
                                                                              .reference
                                                                              .update(createUsersRecordData(
                                                                            clickSTeam:
                                                                                0,
                                                                            betWin:
                                                                                0,
                                                                            totalGains:
                                                                                0.0,
                                                                            betLoose:
                                                                                0,
                                                                            earningsTotal:
                                                                                0.0,
                                                                            totalMises:
                                                                                0.0,
                                                                            totalBets:
                                                                                0,
                                                                            numPenalities:
                                                                                0,
                                                                          ));
                                                                        },
                                                                        child:
                                                                            Text(
                                                                          'C',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 100.0,
                                                              height: 30.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  topRight: Radius
                                                                      .circular(
                                                                          1.0),
                                                                ),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    dateTimeFormat(
                                                                      "d/M/y",
                                                                      columnUsersEarningsScrollUsersRecord
                                                                          .updateTime!,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 45.0,
                                                              height: 30.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    functions
                                                                        .zeroTo1(
                                                                            columnUsersEarningsScrollIndex)
                                                                        .toString(),
                                                                    '1',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ),
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
                                        if (_model.showUpdateFilter != null &&
                                            _model.showUpdateFilter != '')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 20.0),
                                            child: StreamBuilder<
                                                List<UsersRecord>>(
                                              stream: queryUsersRecord(
                                                queryBuilder: (usersRecord) =>
                                                    usersRecord
                                                        .where(
                                                          'rank_value',
                                                          isEqualTo: _model
                                                              .dropLigueValue,
                                                        )
                                                        .where(
                                                          'division_value',
                                                          isEqualTo: _model
                                                              .dropDivisionValue,
                                                        )
                                                        .where(
                                                          'earnings_total',
                                                          isEqualTo: 0.0,
                                                        )
                                                        .orderBy('update_time'),
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
                                                List<UsersRecord>
                                                    columnUsersEarningsScrollUsersRecordList =
                                                    snapshot.data!;

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                      columnUsersEarningsScrollUsersRecordList
                                                          .length,
                                                      (columnUsersEarningsScrollIndex) {
                                                    final columnUsersEarningsScrollUsersRecord =
                                                        columnUsersEarningsScrollUsersRecordList[
                                                            columnUsersEarningsScrollIndex];
                                                    return Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width: 45.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                functions
                                                                    .zeroTo1(
                                                                        columnUsersEarningsScrollIndex)
                                                                    .toString(),
                                                                '1',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 120.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    1.0, 0.0),
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
                                                                  PublicProfilPageWidget
                                                                      .routeName,
                                                                  queryParameters:
                                                                      {
                                                                    'userRef':
                                                                        serializeParam(
                                                                      columnUsersEarningsScrollUsersRecord
                                                                          .reference,
                                                                      ParamType
                                                                          .DocumentReference,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  columnUsersEarningsScrollUsersRecord
                                                                      .displayName,
                                                                  'NewUser',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        columnUsersEarningsScrollUsersRecord
                                                                            .color1,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 85.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                functions
                                                                    .limitOf2Decimal(
                                                                        columnUsersEarningsScrollUsersRecord
                                                                            .earningsTotal)
                                                                    .toString(),
                                                                '00.00',
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      columnUsersEarningsScrollUsersRecord
                                                                          .color1,
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 115.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                functions
                                                                    .limitOf2Decimal(
                                                                        columnUsersEarningsScrollUsersRecord
                                                                            .stock)
                                                                    .toString(),
                                                                '900.00',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      columnUsersEarningsScrollUsersRecord
                                                                          .color1,
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 65.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                columnUsersEarningsScrollUsersRecord
                                                                    .betWin
                                                                    .toString(),
                                                                '0',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      columnUsersEarningsScrollUsersRecord
                                                                          .color1,
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 55.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                functions
                                                                    .averageOdd(
                                                                        columnUsersEarningsScrollUsersRecord
                                                                            .totalGains,
                                                                        columnUsersEarningsScrollUsersRecord
                                                                            .totalMises)
                                                                    .toString(),
                                                                '0',
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      columnUsersEarningsScrollUsersRecord
                                                                          .color1,
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Container(
                                                            width: 65.0,
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  functions
                                                                      .averageGoals(
                                                                          columnUsersEarningsScrollUsersRecord
                                                                              .totalBets,
                                                                          columnUsersEarningsScrollUsersRecord
                                                                              .betWin)
                                                                      .toString(),
                                                                  '0',
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        columnUsersEarningsScrollUsersRecord
                                                                            .color1,
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 65.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                columnUsersEarningsScrollUsersRecord
                                                                    .clickSTeam
                                                                    .toString(),
                                                                '0',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      columnUsersEarningsScrollUsersRecord
                                                                          .color1,
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 55.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topRight: Radius
                                                                  .circular(
                                                                      1.0),
                                                            ),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                columnUsersEarningsScrollUsersRecord
                                                                    .numPenalities
                                                                    .toString(),
                                                                '0',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      columnUsersEarningsScrollUsersRecord
                                                                          .color1,
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 35.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topRight: Radius
                                                                  .circular(
                                                                      1.0),
                                                            ),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ),
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
                                                                      .spaceAround,
                                                              children: [
                                                                if (_model
                                                                        .dropDivisionValue ==
                                                                    '3')
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
                                                                      await columnUsersEarningsScrollUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        divisionValue:
                                                                            '2',
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ));

                                                                      await columnUsersEarningsScrollUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        clickSTeam:
                                                                            0,
                                                                        betWin:
                                                                            0,
                                                                        totalGains:
                                                                            0.0,
                                                                        betLoose:
                                                                            0,
                                                                        earningsTotal:
                                                                            0.0,
                                                                        totalMises:
                                                                            0.0,
                                                                        totalBets:
                                                                            0,
                                                                        numPenalities:
                                                                            0,
                                                                      ));
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .filter_2_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .success,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                if (_model
                                                                        .dropDivisionValue ==
                                                                    '2')
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
                                                                      await columnUsersEarningsScrollUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        divisionValue:
                                                                            '1',
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ));

                                                                      await columnUsersEarningsScrollUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        clickSTeam:
                                                                            0,
                                                                        betWin:
                                                                            0,
                                                                        totalGains:
                                                                            0.0,
                                                                        betLoose:
                                                                            0,
                                                                        earningsTotal:
                                                                            0.0,
                                                                        totalMises:
                                                                            0.0,
                                                                        totalBets:
                                                                            0,
                                                                        numPenalities:
                                                                            0,
                                                                      ));
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .filter_1,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .success,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 35.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topRight: Radius
                                                                  .circular(
                                                                      1.0),
                                                            ),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ),
                                                          child: Align(
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
                                                              onTap: () async {
                                                                await columnUsersEarningsScrollUsersRecord
                                                                    .reference
                                                                    .update(
                                                                        createUsersRecordData(
                                                                  divisionValue:
                                                                      _model
                                                                          .dropDivisionValue,
                                                                  updateTime: _model
                                                                      .calendarSelectedDay
                                                                      ?.start,
                                                                ));

                                                                await columnUsersEarningsScrollUsersRecord
                                                                    .reference
                                                                    .update(
                                                                        createUsersRecordData(
                                                                  clickSTeam: 0,
                                                                  betWin: 0,
                                                                  totalGains:
                                                                      0.0,
                                                                  betLoose: 0,
                                                                  earningsTotal:
                                                                      0.0,
                                                                  totalMises:
                                                                      0.0,
                                                                  totalBets: 0,
                                                                  numPenalities:
                                                                      0,
                                                                ));
                                                              },
                                                              child: FaIcon(
                                                                FontAwesomeIcons
                                                                    .equals,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                                size: 24.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 35.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topRight: Radius
                                                                  .circular(
                                                                      1.0),
                                                            ),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ),
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
                                                                      .spaceAround,
                                                              children: [
                                                                if (_model
                                                                        .dropDivisionValue ==
                                                                    '1')
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
                                                                      await columnUsersEarningsScrollUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        divisionValue:
                                                                            '2',
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ));

                                                                      await columnUsersEarningsScrollUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        clickSTeam:
                                                                            0,
                                                                        betWin:
                                                                            0,
                                                                        totalGains:
                                                                            0.0,
                                                                        betLoose:
                                                                            0,
                                                                        earningsTotal:
                                                                            0.0,
                                                                        totalMises:
                                                                            0.0,
                                                                        totalBets:
                                                                            0,
                                                                        numPenalities:
                                                                            0,
                                                                      ));
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .filter_2_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                if (_model
                                                                        .dropDivisionValue ==
                                                                    '2')
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
                                                                      await columnUsersEarningsScrollUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        divisionValue:
                                                                            '3',
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ));

                                                                      await columnUsersEarningsScrollUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        clickSTeam:
                                                                            0,
                                                                        betWin:
                                                                            0,
                                                                        totalGains:
                                                                            0.0,
                                                                        betLoose:
                                                                            0,
                                                                        earningsTotal:
                                                                            0.0,
                                                                        totalMises:
                                                                            0.0,
                                                                        totalBets:
                                                                            0,
                                                                        numPenalities:
                                                                            0,
                                                                      ));
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .filter_3,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 35.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topRight: Radius
                                                                  .circular(
                                                                      1.0),
                                                            ),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ),
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
                                                                if (_model
                                                                        .dropLigueValue ==
                                                                    'amateur')
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
                                                                      await columnUsersEarningsScrollUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        divisionValue:
                                                                            '3',
                                                                        rankValue:
                                                                            'pro',
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ));

                                                                      await columnUsersEarningsScrollUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        clickSTeam:
                                                                            0,
                                                                        betWin:
                                                                            0,
                                                                        totalGains:
                                                                            0.0,
                                                                        betLoose:
                                                                            0,
                                                                        earningsTotal:
                                                                            0.0,
                                                                        totalMises:
                                                                            0.0,
                                                                        totalBets:
                                                                            0,
                                                                        numPenalities:
                                                                            0,
                                                                      ));
                                                                    },
                                                                    child: Text(
                                                                      'P',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleLargeFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).success,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                if (_model
                                                                        .dropLigueValue ==
                                                                    'pro')
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
                                                                      await columnUsersEarningsScrollUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        divisionValue:
                                                                            '3',
                                                                        rankValue:
                                                                            'champion',
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ));

                                                                      await columnUsersEarningsScrollUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        clickSTeam:
                                                                            0,
                                                                        betWin:
                                                                            0,
                                                                        totalGains:
                                                                            0.0,
                                                                        betLoose:
                                                                            0,
                                                                        earningsTotal:
                                                                            0.0,
                                                                        totalMises:
                                                                            0.0,
                                                                        totalBets:
                                                                            0,
                                                                        numPenalities:
                                                                            0,
                                                                      ));
                                                                    },
                                                                    child: Text(
                                                                      'C',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleLargeFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).success,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                if (_model
                                                                        .dropLigueValue ==
                                                                    'champion')
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
                                                                      await columnUsersEarningsScrollUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        divisionValue:
                                                                            '3',
                                                                        rankValue:
                                                                            'legende',
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ));

                                                                      await columnUsersEarningsScrollUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        clickSTeam:
                                                                            0,
                                                                        betWin:
                                                                            0,
                                                                        totalGains:
                                                                            0.0,
                                                                        betLoose:
                                                                            0,
                                                                        earningsTotal:
                                                                            0.0,
                                                                        totalMises:
                                                                            0.0,
                                                                        totalBets:
                                                                            0,
                                                                        numPenalities:
                                                                            0,
                                                                      ));
                                                                    },
                                                                    child: Text(
                                                                      'L',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleLargeFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).success,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 35.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topRight: Radius
                                                                  .circular(
                                                                      1.0),
                                                            ),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ),
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
                                                                if (_model
                                                                        .dropLigueValue ==
                                                                    'pro')
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
                                                                      await columnUsersEarningsScrollUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        divisionValue:
                                                                            '1',
                                                                        rankValue:
                                                                            'amateur',
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ));

                                                                      await columnUsersEarningsScrollUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        clickSTeam:
                                                                            0,
                                                                        betWin:
                                                                            0,
                                                                        totalGains:
                                                                            0.0,
                                                                        betLoose:
                                                                            0,
                                                                        earningsTotal:
                                                                            0.0,
                                                                        totalMises:
                                                                            0.0,
                                                                        totalBets:
                                                                            0,
                                                                        numPenalities:
                                                                            0,
                                                                      ));
                                                                    },
                                                                    child: Text(
                                                                      'A',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleLargeFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                if (_model
                                                                        .dropLigueValue ==
                                                                    'champion')
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
                                                                      await columnUsersEarningsScrollUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        divisionValue:
                                                                            '1',
                                                                        rankValue:
                                                                            'pro',
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ));

                                                                      await columnUsersEarningsScrollUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        clickSTeam:
                                                                            0,
                                                                        betWin:
                                                                            0,
                                                                        totalGains:
                                                                            0.0,
                                                                        betLoose:
                                                                            0,
                                                                        earningsTotal:
                                                                            0.0,
                                                                        totalMises:
                                                                            0.0,
                                                                        totalBets:
                                                                            0,
                                                                        numPenalities:
                                                                            0,
                                                                      ));
                                                                    },
                                                                    child: Text(
                                                                      'P',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleLargeFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                if (_model
                                                                        .dropLigueValue ==
                                                                    'legende')
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
                                                                      await columnUsersEarningsScrollUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        divisionValue:
                                                                            '1',
                                                                        rankValue:
                                                                            'champion',
                                                                        updateTime: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                      ));

                                                                      await columnUsersEarningsScrollUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        clickSTeam:
                                                                            0,
                                                                        betWin:
                                                                            0,
                                                                        totalGains:
                                                                            0.0,
                                                                        betLoose:
                                                                            0,
                                                                        earningsTotal:
                                                                            0.0,
                                                                        totalMises:
                                                                            0.0,
                                                                        totalBets:
                                                                            0,
                                                                        numPenalities:
                                                                            0,
                                                                      ));
                                                                    },
                                                                    child: Text(
                                                                      'C',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleLargeFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 100.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topRight: Radius
                                                                  .circular(
                                                                      1.0),
                                                            ),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                dateTimeFormat(
                                                                  "d/M/y",
                                                                  columnUsersEarningsScrollUsersRecord
                                                                      .updateTime!,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 45.0,
                                                          height: 30.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                functions
                                                                    .zeroTo1(
                                                                        columnUsersEarningsScrollIndex)
                                                                    .toString(),
                                                                '1',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
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
                          iOSAdUnitID: 'ca-app-pub-5890797816389993/1467071784',
                          androidAdUnitID:
                              'ca-app-pub-5890797816389993/7799997107',
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
