import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'modif_sport_model.dart';
export 'modif_sport_model.dart';

class ModifSportWidget extends StatefulWidget {
  const ModifSportWidget({
    super.key,
    required this.eventRef,
  });

  final DocumentReference? eventRef;

  @override
  State<ModifSportWidget> createState() => _ModifSportWidgetState();
}

class _ModifSportWidgetState extends State<ModifSportWidget> {
  late ModifSportModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModifSportModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 6.0,
          sigmaY: 8.0,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).alternate,
          ),
          alignment: AlignmentDirectional(0.0, 1.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 7.0,
                      color: Color(0x33000000),
                      offset: Offset(
                        0.0,
                        -2.0,
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.0,
                            height: 3.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).alternate,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 10.0, 10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
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
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.arrow_back_ios_new_rounded,
                                    color: valueOrDefault<Color>(
                                      currentUserDocument?.color1,
                                      FlutterFlowTheme.of(context).primaryText,
                                    ),
                                    size: 30.0,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  50.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'mhnrzzuo' /* Changer de sport */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 20.0, 0.0, 20.0),
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
                                    FFLocalizations.of(context).getText(
                                      'sz1a6eiu' /* Football */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'v89v99do' /* Basketball */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '2mj5pnbz' /* Tennis */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'sx4340a7' /* Hockey */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'dg1mrqn4' /* MMA */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'uu0afly5' /* Rugby */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'y2vuov75' /* Sports Méca. */,
                                    )
                                  ],
                                  onChanged: (val) => safeSetState(
                                      () => _model.dropSportValue = val),
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
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    '5ywnx17e' /* Sports */,
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
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 20.0, 20.0, 20.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await widget.eventRef!
                                        .update(createEventsRecordData(
                                      sportValue: _model.dropSportValue,
                                    ));
                                    Navigator.pop(context);
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'g1st9770' /* Valider */,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 50.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
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
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
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
                                    elevation: 2.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(25.0),
                                    hoverColor:
                                        FlutterFlowTheme.of(context).success,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 5.0),
                              child: FlutterFlowDropDown<String>(
                                controller: _model.dropLigueValueController ??=
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
                                    '3oo61iqt' /* Premier League */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    '5kyb7udv' /* LaLiga */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'i6mycttq' /* Bundesliga */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'jd13vub0' /* Serie A */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    '1fgtw9f7' /* Ligue 1 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    '63xtdf0w' /* Autres */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'smktbclm' /* Pays Football */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'wgoy6ywc' /* NBA */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'uf1c53tb' /* ATP */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'iijtd2ur' /* WTA */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'shiy1xe3' /* Champions League */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    '74mxynwu' /* Europa League */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'ckc4r9g3' /* Conference League */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'zgo0zruk' /* nhl */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'o2780d6t' /* UFC */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'g0yfhq7u' /* Autres - France */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'uzi8b621' /* Top 14 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'n73vob84' /* Nations Rugby */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'nobdm9hy' /* Formula 1 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'lq3r9bn9' /* Moto GP */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'mvm41f5m' /* World Superbike */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    '8p5nrm71' /* MX GP */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    '2fnplcub' /* Euro League */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'lpgtib4v' /* Champions Cup */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'htcqo06b' /* Nations Basket */,
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
                                hintText: FFLocalizations.of(context).getText(
                                  '25d6ok15' /* Ligues */,
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
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 20.0, 20.0, 20.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await widget.eventRef!
                                        .update(createEventsRecordData(
                                      leagueValue: _model.dropLigueValue,
                                    ));
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'kiats8ai' /* Valider */,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 50.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
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
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
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
                                    elevation: 2.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(25.0),
                                    hoverColor:
                                        FlutterFlowTheme.of(context).success,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (_model.dropSportValue == 'mma')
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 50.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 5.0),
                                child: FlutterFlowDropDown<String>(
                                  controller:
                                      _model.dropLigueFightValueController ??=
                                          FormFieldController<String>(
                                    _model.dropLigueFightValue ??= '',
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
                                      'yxevpb2f' /* Fly Weight */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'fc418i5t' /* Bantam Weight */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'k8zvjilt' /* Feather Weight */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'iy55kot6' /* Light Weight */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'a58hyq93' /* Welter Weight */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'lhkndlh4' /* Middle Weight */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'd5j2ojkr' /* Light Heavy Weight */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'ug4ldyau' /* Heavy Weight */,
                                    )
                                  ],
                                  onChanged: (val) => safeSetState(
                                      () => _model.dropLigueFightValue = val),
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
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    '75wr7hwq' /* Poids */,
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
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 20.0, 20.0, 20.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await widget.eventRef!
                                          .update(createEventsRecordData(
                                        divisionValue:
                                            _model.dropLigueFightValue,
                                      ));
                                      Navigator.pop(context);
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'jx1f4msg' /* Valider */,
                                    ),
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
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
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
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
                                      elevation: 2.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(25.0),
                                      hoverColor:
                                          FlutterFlowTheme.of(context).success,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
