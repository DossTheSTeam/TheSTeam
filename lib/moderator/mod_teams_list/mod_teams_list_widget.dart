import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'mod_teams_list_model.dart';
export 'mod_teams_list_model.dart';

class ModTeamsListWidget extends StatefulWidget {
  const ModTeamsListWidget({super.key});

  static String routeName = 'ModTeamsList';
  static String routePath = '/modTeamsList';

  @override
  State<ModTeamsListWidget> createState() => _ModTeamsListWidgetState();
}

class _ModTeamsListWidgetState extends State<ModTeamsListWidget> {
  late ModTeamsListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModTeamsListModel());
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
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Liste des équipes',
                                  maxLines: 1,
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
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: FlutterFlowDropDown<String>(
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
                                      'Football',
                                      'Basketball',
                                      'Tennis',
                                      'Hockey',
                                      'MMA',
                                      'Rugby',
                                      'Sports Méca.'
                                    ],
                                    onChanged: (val) => safeSetState(
                                        () => _model.dropSportValue = val),
                                    width: 180.0,
                                    height: 50.0,
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
                                    hintText: 'Sports',
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
                                if (_model.showLigueFilter != null &&
                                    _model.showLigueFilter != '')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.showLigueFilter = null;
                                        safeSetState(() {});
                                      },
                                      child: FaIcon(
                                        FontAwesomeIcons.eyeSlash,
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    if (_model.dropSportValue == 'football')
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dropLigueFootValueController ??=
                                                FormFieldController<String>(
                                              _model.dropLigueFootValue ??= '',
                                            ),
                                            options: List<String>.from([
                                              'premier.league',
                                              'laliga',
                                              'bundesliga',
                                              'serie.a',
                                              'ligue.1',
                                              'autres',
                                              'pays.football',
                                              'autres.france',
                                              ''
                                            ]),
                                            optionLabels: [
                                              'Premier League',
                                              'LaLiga',
                                              'Bundesliga',
                                              'Serie A',
                                              'Ligue 1',
                                              'Autres',
                                              'Pays Football',
                                              'Autres- France',
                                              'Retirer filtre'
                                            ],
                                            onChanged: (val) async {
                                              safeSetState(() => _model
                                                  .dropLigueFootValue = val);
                                              _model.showLigueFilter =
                                                  _model.dropLigueFootValue;
                                              safeSetState(() {});
                                            },
                                            width: 170.0,
                                            height: 50.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
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
                                            hintText: 'Ligues',
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
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
                                            margin:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            hidesUnderline: true,
                                            isOverButton: false,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                          ),
                                        ],
                                      ),
                                  ],
                                ),
                                if (_model.dropSportValue == 'basketball')
                                  FlutterFlowDropDown<String>(
                                    controller: _model
                                            .dropLigueBasketValueController ??=
                                        FormFieldController<String>(
                                      _model.dropLigueBasketValue ??= '',
                                    ),
                                    options: List<String>.from([
                                      'nba',
                                      'euro.league',
                                      'other.basket',
                                      'nations.basket',
                                      ''
                                    ]),
                                    optionLabels: [
                                      'NBA',
                                      'Euro League',
                                      'Autres',
                                      'Nations',
                                      'Retirer filtre'
                                    ],
                                    onChanged: (val) async {
                                      safeSetState(() =>
                                          _model.dropLigueBasketValue = val);
                                      _model.showLigueFilter =
                                          _model.dropLigueBasketValue;
                                      safeSetState(() {});
                                    },
                                    width: 180.0,
                                    height: 50.0,
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
                                    hintText: 'Ligues',
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
                                if (_model.dropSportValue == 'tennis')
                                  FlutterFlowDropDown<String>(
                                    controller: _model
                                            .dropLigueTennisValueController ??=
                                        FormFieldController<String>(
                                      _model.dropLigueTennisValue ??= '',
                                    ),
                                    options: List<String>.from(
                                        ['atp', 'wta', 'empty']),
                                    optionLabels: [
                                      'ATP',
                                      'WTA',
                                      'Retirer filtre'
                                    ],
                                    onChanged: (val) async {
                                      safeSetState(() =>
                                          _model.dropLigueTennisValue = val);
                                      _model.showLigueFilter =
                                          _model.dropLigueTennisValue;
                                      safeSetState(() {});
                                    },
                                    width: 180.0,
                                    height: 50.0,
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
                                    hintText: 'Ligues',
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
                                if (_model.dropSportValue == 'hockey')
                                  FlutterFlowDropDown<String>(
                                    controller: _model
                                            .dropLigueHockeyValueController ??=
                                        FormFieldController<String>(
                                      _model.dropLigueHockeyValue ??= '',
                                    ),
                                    options: List<String>.from([
                                      'nhl',
                                      'gazon.elite.h',
                                      'gazon.elite.f',
                                      'salle.elite.h',
                                      'salle.elite.f',
                                      'empty'
                                    ]),
                                    optionLabels: [
                                      'NHL',
                                      'Gazon Elite H',
                                      'Gazon Elite F',
                                      'Salle Elite H',
                                      'Salle Elite F',
                                      'Retirer filtre'
                                    ],
                                    onChanged: (val) async {
                                      safeSetState(() =>
                                          _model.dropLigueHockeyValue = val);
                                      _model.showLigueFilter =
                                          _model.dropLigueHockeyValue;
                                      safeSetState(() {});
                                    },
                                    width: 180.0,
                                    height: 50.0,
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
                                    hintText: 'Ligues',
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
                                if (_model.dropSportValue == 'rugby')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 5.0),
                                    child: FlutterFlowDropDown<String>(
                                      controller: _model
                                              .dropLigueRugbyValueController ??=
                                          FormFieldController<String>(
                                        _model.dropLigueRugbyValue ??= '',
                                      ),
                                      options: List<String>.from([
                                        'top14',
                                        'other.rugby',
                                        'nations.rugby',
                                        ''
                                      ]),
                                      optionLabels: [
                                        'Top 14',
                                        'Autres',
                                        'Nations',
                                        'Retirer filtre'
                                      ],
                                      onChanged: (val) async {
                                        safeSetState(() =>
                                            _model.dropLigueRugbyValue = val);
                                        _model.showLigueFilter =
                                            _model.dropLigueRugbyValue;
                                        safeSetState(() {});
                                      },
                                      width: 180.0,
                                      height: 50.0,
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
                                      hintText: 'Ligues',
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
                                if (_model.dropSportValue == 'sports.meca')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 5.0),
                                    child: FlutterFlowDropDown<String>(
                                      controller: _model
                                              .dropLigueMecaValueController ??=
                                          FormFieldController<String>(
                                        _model.dropLigueMecaValue ??= '',
                                      ),
                                      options: List<String>.from([
                                        'formule.1',
                                        'moto.gp',
                                        'world.superbike',
                                        'mx.gp',
                                        ''
                                      ]),
                                      optionLabels: [
                                        'Formule 1',
                                        'Moto GP',
                                        'World Superbike',
                                        'MX GP',
                                        'Retirer filtre'
                                      ],
                                      onChanged: (val) async {
                                        safeSetState(() =>
                                            _model.dropLigueMecaValue = val);
                                        _model.showLigueFilter =
                                            _model.dropLigueMecaValue;
                                        safeSetState(() {});
                                      },
                                      width: 180.0,
                                      height: 50.0,
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
                                      hintText: 'Ligues',
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
                                if (_model.dropSportValue == 'mma')
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropLigueMMAValueController1 ??=
                                              FormFieldController<String>(
                                            _model.dropLigueMMAValue1 ??= '',
                                          ),
                                          options:
                                              List<String>.from(['ufc', '']),
                                          optionLabels: [
                                            'UFC',
                                            'Retirer filtre'
                                          ],
                                          onChanged: (val) async {
                                            safeSetState(() => _model
                                                .dropLigueMMAValue1 = val);
                                            _model.showLigueFilter =
                                                _model.dropLigueMMAValue1;
                                            safeSetState(() {});
                                          },
                                          width: 180.0,
                                          height: 50.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
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
                                          hintText: 'Ligues',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
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
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropLigueMMAValueController2 ??=
                                              FormFieldController<String>(
                                            _model.dropLigueMMAValue2 ??= '',
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
                                            'Flyweight',
                                            'Bantamweight',
                                            'Featherweight',
                                            'Lightweight',
                                            'Welterweight',
                                            'Middleweight',
                                            'Light Heavyweight',
                                            'Heavyweight'
                                          ],
                                          onChanged: (val) async {
                                            safeSetState(() => _model
                                                .dropLigueMMAValue2 = val);
                                            _model.showDivision =
                                                _model.dropLigueMMAValue2;
                                            safeSetState(() {});
                                          },
                                          width: 180.0,
                                          height: 50.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
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
                                          hintText: 'Categories',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
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
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
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
                        ),
                      ),
                      if (_model.dropSportValue != 'mma')
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: StreamBuilder<List<TeamsRecord>>(
                            stream: queryTeamsRecord(
                              queryBuilder: (teamsRecord) => teamsRecord.where(
                                'league_value',
                                isEqualTo: _model.showLigueFilter != ''
                                    ? _model.showLigueFilter
                                    : null,
                              ),
                              limit: 35,
                            ),
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
                              List<TeamsRecord> columnTeamsTeamsRecordList =
                                  snapshot.data!;

                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    columnTeamsTeamsRecordList.length,
                                    (columnTeamsIndex) {
                                  final columnTeamsTeamsRecord =
                                      columnTeamsTeamsRecordList[
                                          columnTeamsIndex];
                                  return Visibility(
                                    visible:
                                        columnTeamsTeamsRecord.sportValue ==
                                            _model.dropSportValue,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 10.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  columnTeamsTeamsRecord.name,
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 35.0, 0.0),
                                                child: Container(
                                                  width: 55.0,
                                                  height: 40.0,
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
                                                      columnTeamsTeamsRecord
                                                          .logo,
                                                      width: 300.0,
                                                      height: 200.0,
                                                      fit: BoxFit.scaleDown,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 20.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              StreamBuilder<
                                                  List<MyNotificationsRecord>>(
                                                stream:
                                                    queryMyNotificationsRecord(
                                                  queryBuilder:
                                                      (myNotificationsRecord) =>
                                                          myNotificationsRecord
                                                              .where(
                                                                'team_ref',
                                                                isEqualTo:
                                                                    columnTeamsTeamsRecord
                                                                        .reference,
                                                              )
                                                              .where(
                                                                'mod_seen',
                                                                isEqualTo:
                                                                    false,
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
                                                  List<MyNotificationsRecord>
                                                      rowMyNotificationsRecordList =
                                                      snapshot.data!;
                                                  // Return an empty Container when the item does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final rowMyNotificationsRecord =
                                                      rowMyNotificationsRecordList
                                                              .isNotEmpty
                                                          ? rowMyNotificationsRecordList
                                                              .first
                                                          : null;

                                                  return Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (rowMyNotificationsRecord
                                                              ?.reference !=
                                                          null)
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
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
                                                                ModTeamNotifsListWidget
                                                                    .routeName,
                                                                queryParameters:
                                                                    {
                                                                  'teamRef':
                                                                      serializeParam(
                                                                    columnTeamsTeamsRecord
                                                                        .reference,
                                                                    ParamType
                                                                        .DocumentReference,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .notifications_none,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 30.0,
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  );
                                                },
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    DiscusionETeamPageWidget
                                                        .routeName,
                                                    queryParameters: {
                                                      'eTeamRef':
                                                          serializeParam(
                                                        columnTeamsTeamsRecord
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
                                                                .bottomToTop,
                                                        duration: Duration(
                                                            milliseconds: 400),
                                                      ),
                                                    },
                                                  );
                                                },
                                                child: Icon(
                                                  Icons.comment_rounded,
                                                  color: columnTeamsTeamsRecord
                                                      .color1,
                                                  size: 30.0,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
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
                                                      TeamUsersListWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'teamRef':
                                                            serializeParam(
                                                          columnTeamsTeamsRecord
                                                              .reference,
                                                          ParamType
                                                              .DocumentReference,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  child: Icon(
                                                    Icons
                                                        .supervisor_account_rounded,
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
                                  );
                                }),
                              );
                            },
                          ),
                        ),
                      if (_model.dropSportValue == 'mma')
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: StreamBuilder<List<TeamsRecord>>(
                            stream: queryTeamsRecord(
                              queryBuilder: (teamsRecord) => teamsRecord
                                  .where(
                                    'league_value',
                                    isEqualTo: _model.showLigueFilter != ''
                                        ? _model.showLigueFilter
                                        : null,
                                  )
                                  .where(
                                    'division_value',
                                    isEqualTo: _model.showDivision != ''
                                        ? _model.showDivision
                                        : null,
                                  ),
                              limit: 35,
                            ),
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
                              List<TeamsRecord> columnTeamsTeamsRecordList =
                                  snapshot.data!;

                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    columnTeamsTeamsRecordList.length,
                                    (columnTeamsIndex) {
                                  final columnTeamsTeamsRecord =
                                      columnTeamsTeamsRecordList[
                                          columnTeamsIndex];
                                  return Visibility(
                                    visible:
                                        columnTeamsTeamsRecord.sportValue ==
                                            _model.dropSportValue,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 10.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  columnTeamsTeamsRecord.name,
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 35.0, 0.0),
                                                child: Container(
                                                  width: 55.0,
                                                  height: 40.0,
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
                                                      columnTeamsTeamsRecord
                                                          .logo,
                                                      width: 300.0,
                                                      height: 200.0,
                                                      fit: BoxFit.fitHeight,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 20.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              StreamBuilder<
                                                  List<MyNotificationsRecord>>(
                                                stream:
                                                    queryMyNotificationsRecord(
                                                  queryBuilder:
                                                      (myNotificationsRecord) =>
                                                          myNotificationsRecord
                                                              .where(
                                                                'team_ref',
                                                                isEqualTo:
                                                                    columnTeamsTeamsRecord
                                                                        .reference,
                                                              )
                                                              .where(
                                                                'mod_seen',
                                                                isEqualTo:
                                                                    false,
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
                                                  List<MyNotificationsRecord>
                                                      rowMyNotificationsRecordList =
                                                      snapshot.data!;
                                                  // Return an empty Container when the item does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final rowMyNotificationsRecord =
                                                      rowMyNotificationsRecordList
                                                              .isNotEmpty
                                                          ? rowMyNotificationsRecordList
                                                              .first
                                                          : null;

                                                  return Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (rowMyNotificationsRecord
                                                              ?.reference !=
                                                          null)
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
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
                                                                ModTeamNotifsListWidget
                                                                    .routeName,
                                                                queryParameters:
                                                                    {
                                                                  'teamRef':
                                                                      serializeParam(
                                                                    columnTeamsTeamsRecord
                                                                        .reference,
                                                                    ParamType
                                                                        .DocumentReference,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .notifications_none,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 30.0,
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  );
                                                },
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    DiscusionETeamPageWidget
                                                        .routeName,
                                                    queryParameters: {
                                                      'eTeamRef':
                                                          serializeParam(
                                                        columnTeamsTeamsRecord
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
                                                                .bottomToTop,
                                                        duration: Duration(
                                                            milliseconds: 400),
                                                      ),
                                                    },
                                                  );
                                                },
                                                child: Icon(
                                                  Icons.comment_rounded,
                                                  color: columnTeamsTeamsRecord
                                                      .color1,
                                                  size: 30.0,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
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
                                                      TeamUsersListWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'teamRef':
                                                            serializeParam(
                                                          columnTeamsTeamsRecord
                                                              .reference,
                                                          ParamType
                                                              .DocumentReference,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  child: Icon(
                                                    Icons
                                                        .supervisor_account_rounded,
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
          ),
        ),
      ),
    );
  }
}
