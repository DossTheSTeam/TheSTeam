import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'add_e_team_page_i_u_d_admin_model.dart';
export 'add_e_team_page_i_u_d_admin_model.dart';

class AddETeamPageIUDAdminWidget extends StatefulWidget {
  const AddETeamPageIUDAdminWidget({super.key});

  static String routeName = 'AddETeamPageIUDAdmin';
  static String routePath = '/addETeamPageIUDAdmin';

  @override
  State<AddETeamPageIUDAdminWidget> createState() =>
      _AddETeamPageIUDAdminWidgetState();
}

class _AddETeamPageIUDAdminWidgetState
    extends State<AddETeamPageIUDAdminWidget> {
  late AddETeamPageIUDAdminModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddETeamPageIUDAdminModel());

    _model.eTeamNameFieldTextController ??= TextEditingController();
    _model.eTeamNameFieldFocusNode ??= FocusNode();
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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChildScrollView(
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
                                      kTransitionInfoKey: TransitionInfo(
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
                                  color: currentUserDocument?.color1,
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
                                    color: currentUserDocument?.color1,
                                    size: 30.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: Column(
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
                                      'r3mm31hn' /* Céer une E Team */,
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
                                      'ewv94ojr' /* Create an E Team */,
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
                                      'xi5orhvn' /* Erstellen Sie ein E-Team */,
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
                                      '4n71o7vd' /* Crear un E Team */,
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
                                      'f5uomocb' /* Crea un E Team */,
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
                                      '00p35f8u' /* Crea uma E Team */,
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
                        ),
                      ],
                    ),
                    AuthUserStreamWidget(
                      builder: (context) => Divider(
                        thickness: 1.0,
                        color: currentUserDocument?.color2,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 0.0, 5.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if ((valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        '') ||
                                (valueOrDefault(
                                        currentUserDocument?.langage, '') ==
                                    'francais'))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    FFLocalizations.of(context).getText(
                                      'qycw16mq' /* Vous allez créer une E Team */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
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
                                    'khtx45k1' /* You are going to create an E T... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
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
                                    'ev6o5elx' /* Sie werden ein E-Team erstelle... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
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
                                    'w0esbkzj' /* Vas a crear un E Team */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
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
                                    '9otw5gww' /* Stai per creare un E Team */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
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
                                    '2xtixecd' /* Vai criar uma E Team */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 0.0, 5.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if ((valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        '') ||
                                (valueOrDefault(
                                        currentUserDocument?.langage, '') ==
                                    'francais'))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    FFLocalizations.of(context).getText(
                                      '5jh5laba' /* Qu'est ce que cela implique */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
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
                                    '6sg3ud2s' /* What does this imply? */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
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
                                    '5wf3rsjf' /* Was bedeutet das? */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
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
                                    'jqp87c7n' /* Cosa implica questo? */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
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
                                    'jnh61cnw' /* Cosa implica questo? */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
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
                                    'yom88vpk' /* O que implica? */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if ((valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      '') ||
                              (valueOrDefault(
                                      currentUserDocument?.langage, '') ==
                                  'francais'))
                            AuthUserStreamWidget(
                              builder: (context) => Text(
                                FFLocalizations.of(context).getText(
                                  'fc6yri4n' /* Si ce n'est pas déjà fait, nou... */,
                                ),
                                style: FlutterFlowTheme.of(context)
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
                                  '61knuobh' /* If you have not already done s... */,
                                ),
                                style: FlutterFlowTheme.of(context)
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
                              ),
                            ),
                          if (valueOrDefault(
                                  currentUserDocument?.langage, '') ==
                              'deutsch')
                            AuthUserStreamWidget(
                              builder: (context) => Text(
                                FFLocalizations.of(context).getText(
                                  '66axd144' /* Sofern Sie dies noch nicht get... */,
                                ),
                                style: FlutterFlowTheme.of(context)
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
                              ),
                            ),
                          if (valueOrDefault(
                                  currentUserDocument?.langage, '') ==
                              'espanol')
                            AuthUserStreamWidget(
                              builder: (context) => Text(
                                FFLocalizations.of(context).getText(
                                  'p5k1d7td' /* Si aún no lo ha hecho, le reco... */,
                                ),
                                style: FlutterFlowTheme.of(context)
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
                              ),
                            ),
                          if (valueOrDefault(
                                  currentUserDocument?.langage, '') ==
                              'italiano')
                            AuthUserStreamWidget(
                              builder: (context) => Text(
                                FFLocalizations.of(context).getText(
                                  'qt16jd7g' /* Se non l'hai ancora fatto, ti ... */,
                                ),
                                style: FlutterFlowTheme.of(context)
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
                              ),
                            ),
                          if (valueOrDefault(
                                  currentUserDocument?.langage, '') ==
                              'portugues')
                            AuthUserStreamWidget(
                              builder: (context) => Text(
                                FFLocalizations.of(context).getText(
                                  'yqs5aue7' /* Caso ainda não o tenha feito, ... */,
                                ),
                                style: FlutterFlowTheme.of(context)
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
                              ),
                            ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            GeneralsCondidtionsPageWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.bottomToTop,
                                duration: Duration(milliseconds: 400),
                              ),
                            },
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            if ((valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        '') ||
                                (valueOrDefault(
                                        currentUserDocument?.langage, '') ==
                                    'francais'))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    FFLocalizations.of(context).getText(
                                      'oj5qvlup' /* Conditions générales */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .success,
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
                            if ((valueOrDefault(
                                        currentUserDocument?.langage, '') ==
                                    'english') ||
                                (valueOrDefault(
                                        currentUserDocument?.langage, '') ==
                                    'american'))
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  FFLocalizations.of(context).getText(
                                    'skxobraw' /* General conditions */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
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
                                    'hvfwmd0c' /* Allgemeine
Geschäftsbedingunge... */
                                    ,
                                  ),
                                  textAlign: TextAlign.end,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
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
                                    'wj736a49' /* Condiciones generales */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
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
                                    '7g74hy1w' /* Condizioni generali */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
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
                                    'ggxedpnt' /* Condições gerais */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontStyle,
                                      ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 0.0, 5.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if ((valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        '') ||
                                (valueOrDefault(
                                        currentUserDocument?.langage, '') ==
                                    'francais'))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    FFLocalizations.of(context).getText(
                                      '04cqrdwv' /* Après avoir pris connaissance ... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
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
                                    '7vaqahoc' /* After having read the rules of... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
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
                                    'z23xu4zt' /* Nachdem ich die Spielregeln un... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
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
                                    't0j6423y' /* Después de haber leído las reg... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
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
                                    'gso7axuj' /* Dopo aver letto le regole del ... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
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
                                    '1wmjkwxj' /* Depois de ler as regras do jog... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'o26kt9bu' /* Choisir */,
                            ),
                            maxLines: 1,
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  font: GoogleFonts.montserrat(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FlutterFlowDropDown<String>(
                                controller:
                                    _model.dropESportsValueController ??=
                                        FormFieldController<String>(
                                  _model.dropESportsValue ??= '',
                                ),
                                options: List<String>.from([
                                  'esport.football',
                                  'esport.basketball',
                                  'esport.war'
                                ]),
                                optionLabels: [
                                  FFLocalizations.of(context).getText(
                                    'gwkbbm8u' /* E Sport Football */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'w9wp6n2s' /* E Sport Basketball */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'bwq21e1b' /* E Sport War */,
                                  )
                                ],
                                onChanged: (val) => safeSetState(
                                    () => _model.dropESportsValue = val),
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
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  '1uie190j' /* E Sports */,
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
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if ((valueOrDefault(
                                        currentUserDocument?.langage, '') ==
                                    '') ||
                            (valueOrDefault(currentUserDocument?.langage, '') ==
                                'francais'))
                          AuthUserStreamWidget(
                            builder: (context) => Text(
                              FFLocalizations.of(context).getText(
                                'fjz9an1e' /* Ajouter le nom de club */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        if ((valueOrDefault(currentUserDocument?.langage, '') ==
                                'english') ||
                            (valueOrDefault(currentUserDocument?.langage, '') ==
                                'american'))
                          AuthUserStreamWidget(
                            builder: (context) => Text(
                              FFLocalizations.of(context).getText(
                                'zpr8pe6s' /* Add club name */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        if (valueOrDefault(currentUserDocument?.langage, '') ==
                            'deutsch')
                          AuthUserStreamWidget(
                            builder: (context) => Text(
                              FFLocalizations.of(context).getText(
                                'nl8rezg0' /* Vereinsnamen hinzufügen */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        if (valueOrDefault(currentUserDocument?.langage, '') ==
                            'espanol')
                          AuthUserStreamWidget(
                            builder: (context) => Text(
                              FFLocalizations.of(context).getText(
                                'rib2qddw' /* Agregar nombre del club */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        if (valueOrDefault(currentUserDocument?.langage, '') ==
                            'italiano')
                          AuthUserStreamWidget(
                            builder: (context) => Text(
                              FFLocalizations.of(context).getText(
                                'w3ajahdi' /* Aggiungi il nome del club */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        if (valueOrDefault(currentUserDocument?.langage, '') ==
                            'portugues')
                          AuthUserStreamWidget(
                            builder: (context) => Text(
                              FFLocalizations.of(context).getText(
                                '07gnmnlf' /* Adicionar nome do clube */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                            ),
                          ),
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 0.0, 5.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if ((valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        '') ||
                                (valueOrDefault(
                                        currentUserDocument?.langage, '') ==
                                    'francais'))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    FFLocalizations.of(context).getText(
                                      '60ndaxu2' /* Pour simplifier, il serait jud... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
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
                                    'j4v44s83' /* For simplicity, it would be wi... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
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
                                    '68ja94hc' /* Der Einfachheit halber wäre es... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
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
                                    'vf43nrg6' /* Para simplificar, sería pruden... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
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
                                    'f1qmseop' /* Per semplicità, sarebbe saggio... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
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
                                    'v8xwmh0n' /* Para simplificar, seria sensat... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 5.0, 15.0, 0.0),
                      child: TextFormField(
                        controller: _model.eTeamNameFieldTextController,
                        focusNode: _model.eTeamNameFieldFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: FFLocalizations.of(context).getText(
                            'vlls1hqh' /* E Team Name */,
                          ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).success,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                          counterStyle: FlutterFlowTheme.of(context)
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
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                        maxLength: 20,
                        validator: _model.eTeamNameFieldTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 6.0, 0.0),
                            child: Container(
                              width: 65.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(3.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.network(
                                    _model.uploadedFileUrl_uploadData1ni,
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.fitHeight,
                                  ),
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
                              final selectedMedia =
                                  await selectMediaWithSourceBottomSheet(
                                context: context,
                                maxWidth: 1000.00,
                                maxHeight: 1000.00,
                                allowPhoto: true,
                              );
                              if (selectedMedia != null &&
                                  selectedMedia.every((m) => validateFileFormat(
                                      m.storagePath, context))) {
                                safeSetState(() => _model
                                    .isDataUploading_uploadData1ni = true);
                                var selectedUploadedFiles = <FFUploadedFile>[];

                                var downloadUrls = <String>[];
                                try {
                                  selectedUploadedFiles = selectedMedia
                                      .map((m) => FFUploadedFile(
                                            name: m.storagePath.split('/').last,
                                            bytes: m.bytes,
                                            height: m.dimensions?.height,
                                            width: m.dimensions?.width,
                                            blurHash: m.blurHash,
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
                                  _model.isDataUploading_uploadData1ni = false;
                                }
                                if (selectedUploadedFiles.length ==
                                        selectedMedia.length &&
                                    downloadUrls.length ==
                                        selectedMedia.length) {
                                  safeSetState(() {
                                    _model.uploadedLocalFile_uploadData1ni =
                                        selectedUploadedFiles.first;
                                    _model.uploadedFileUrl_uploadData1ni =
                                        downloadUrls.first;
                                  });
                                } else {
                                  safeSetState(() {});
                                  return;
                                }
                              }
                            },
                            child: Icon(
                              Icons.image_search_outlined,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if ((valueOrDefault(
                                        currentUserDocument?.langage, '') ==
                                    '') ||
                            (valueOrDefault(currentUserDocument?.langage, '') ==
                                'francais'))
                          AuthUserStreamWidget(
                            builder: (context) => Text(
                              FFLocalizations.of(context).getText(
                                'q12knapd' /* Changer la couleur */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        if ((valueOrDefault(currentUserDocument?.langage, '') ==
                                'english') ||
                            (valueOrDefault(currentUserDocument?.langage, '') ==
                                'american'))
                          AuthUserStreamWidget(
                            builder: (context) => Text(
                              FFLocalizations.of(context).getText(
                                'efqjoolu' /* Change color */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        if (valueOrDefault(currentUserDocument?.langage, '') ==
                            'deutsch')
                          AuthUserStreamWidget(
                            builder: (context) => Text(
                              FFLocalizations.of(context).getText(
                                'yn6s4ls8' /* Farbe ändern */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        if (valueOrDefault(currentUserDocument?.langage, '') ==
                            'espanol')
                          AuthUserStreamWidget(
                            builder: (context) => Text(
                              FFLocalizations.of(context).getText(
                                'sr00t867' /* Cambiar el color */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        if (valueOrDefault(currentUserDocument?.langage, '') ==
                            'italiano')
                          AuthUserStreamWidget(
                            builder: (context) => Text(
                              FFLocalizations.of(context).getText(
                                'u1dplicj' /* Cambiare colore */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        if (valueOrDefault(currentUserDocument?.langage, '') ==
                            'portugues')
                          AuthUserStreamWidget(
                            builder: (context) => Text(
                              FFLocalizations.of(context).getText(
                                'sj9vvlmi' /* Mudar cor */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                            ),
                          ),
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 20.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if ((valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        '') ||
                                (valueOrDefault(
                                        currentUserDocument?.langage, '') ==
                                    'francais'))
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  FFLocalizations.of(context).getText(
                                    'iaopq8yh' /* Couleur principale */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
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
                                    'dvjwm2qz' /* Main color */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
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
                                    'u38h9acp' /* Hauptfarbe */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
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
                                    'x1eafb3l' /* color principal */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
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
                                    '5pxdjph1' /* Colore principale */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
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
                                    'sf12scd7' /* Cor principal */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.dropColor1ValueController ??=
                                  FormFieldController<String>(
                                _model.dropColor1Value ??= '',
                              ),
                              options: List<String>.from([
                                '#FFFF00',
                                '#00FF00',
                                '#FFB6C1',
                                '#00FFFF',
                                '#6CABDD',
                                '#FF00FF',
                                '#FF8C00',
                                '#FF0000',
                                '#9370DB',
                                '#0000FF',
                                '#3CB371',
                                '#008B8B',
                                '#008000',
                                '#0000CD',
                                '#8B008B',
                                '#DC143C',
                                '#A0522D',
                                '#808080',
                                '#C0C0C0',
                                '#FFD700',
                                '#B22222',
                                '#860038'
                              ]),
                              optionLabels: [
                                FFLocalizations.of(context).getText(
                                  'sgzh27aw' /* Yellow */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'qe4bg9bn' /* Green 1 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'w2dd14ax' /* Pink */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '7hid8k4r' /* Cyan 1 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'cszwh529' /* Blue sky */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ybaet9h0' /* Magenta */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'pvjpjp8d' /* Orange */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'i7obwsec' /* Red 1 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'kiv50nhk' /* Purpple */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'afmw7c42' /* Blue 1 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ef7y0twx' /* Green 2 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'bzyzgrhp' /* Cyan 2 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'vkxgr1ky' /* Green 3 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'tvlrwj2a' /* Blue 2 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '52u8k87e' /* Magenta 2 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'cqu8imq8' /* Red 2 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'apunhpxi' /* Brown */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'lph16dl1' /* Grey 2 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ss18tevd' /* Grey 1 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'mpnkmaw5' /* Gold */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'vqk0r6vn' /* Red 3 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '0jb4fvn9' /* Burgundy */,
                                )
                              ],
                              onChanged: (val) => safeSetState(
                                  () => _model.dropColor1Value = val),
                              width: 150.0,
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
                                'gqv2tiaw' /* Colors */,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Icon(
                              Icons.circle_rounded,
                              color: colorFromCssString(
                                _model.dropColor1Value!,
                                defaultColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if ((valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        '') ||
                                (valueOrDefault(
                                        currentUserDocument?.langage, '') ==
                                    'francais'))
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  FFLocalizations.of(context).getText(
                                    'l69j6b5l' /* Couleur secondaire */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
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
                                    'b3i5m29o' /* Secondary color */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
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
                                    'c0ltll4t' /* Sekundärfarbe */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
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
                                    'q6rupk1p' /* color secundario */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
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
                                    '6q8bpotw' /* Colore secondario */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
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
                                    'g0saecra' /* Cor secundária */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.dropColor2ValueController ??=
                                  FormFieldController<String>(
                                _model.dropColor2Value ??= '',
                              ),
                              options: List<String>.from([
                                '#FFFF00',
                                '#00FF00',
                                '#FFB6C1',
                                '#00FFFF',
                                '#6CABDD',
                                '#FF00FF',
                                '#FF8C00',
                                '#FF0000',
                                '#9370DB',
                                '#0000FF',
                                '#3CB371',
                                '#008B8B',
                                '#008000',
                                '#0000CD',
                                '#8B008B',
                                '#DC143C',
                                '#A0522D',
                                '#808080',
                                '#C0C0C0',
                                '#FFD700',
                                '#B22222',
                                '#860038'
                              ]),
                              optionLabels: [
                                FFLocalizations.of(context).getText(
                                  'instswh4' /* Yellow */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'mfqkrdbu' /* Green 1 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'tgqeaf9k' /* Pink */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'lsoa8ove' /* Cyan 1 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'pn04xf2f' /* Blue sky */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '0fsfvws5' /* Magenta */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'xk2nkplo' /* Orange */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'rp9g1gok' /* Red 1 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'cemnw1o7' /* Purpple */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '7ohe6zkp' /* Bleu 1 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'eap0wl7a' /* Vert 2 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'fax3zmfb' /* Cyan 2 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'hf2gq9o6' /* Vert 3 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'w6ijab1c' /* Bleu 2 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'at15y4j1' /* Magenta 2 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '3o879l77' /* Red 2 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  's9nlinw2' /* Brown */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'aak77io1' /* Grey 2 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'odofnrey' /* Grey 1 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ttqn7ybm' /* Gold */,
                                ),
                                FFLocalizations.of(context).getText(
                                  't0f3n1uj' /* Red 3 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'fpjf576y' /* Burgundy */,
                                )
                              ],
                              onChanged: (val) => safeSetState(
                                  () => _model.dropColor2Value = val),
                              width: 150.0,
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
                                'f9cd7inj' /* Colors */,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Icon(
                              Icons.circle_outlined,
                              color: colorFromCssString(
                                _model.dropColor2Value!,
                                defaultColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (_model.dropESportsValue != null &&
                        _model.dropESportsValue != '')
                      StreamBuilder<List<UsersRecord>>(
                        stream: queryUsersRecord(
                          queryBuilder: (usersRecord) => usersRecord.where(
                            'uid',
                            isEqualTo: '4g21LNGnfSN2dnX37zah532h2vq2',
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
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).accent4,
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
                              if (_model.dropESportsValue == 'esport.football')
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 5.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      if (_model.eTeamNameFieldTextController
                                                  .text !=
                                              '')
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 16.0),
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
                                                      var teamsRecordReference =
                                                          TeamsRecord.collection
                                                              .doc();
                                                      await teamsRecordReference
                                                          .set({
                                                        ...createTeamsRecordData(
                                                          name: _model
                                                              .eTeamNameFieldTextController
                                                              .text,
                                                          logo: _model
                                                              .uploadedFileUrl_uploadData1ni,
                                                          sportValue:
                                                              'esport.football',
                                                          leagueValue: 'pro',
                                                          boss:
                                                              currentUserReference,
                                                          esport: true,
                                                          divisionValue: '2',
                                                          adminUser:
                                                              columnUsersRecord
                                                                  ?.reference,
                                                          color1:
                                                              colorFromCssString(
                                                            _model
                                                                .dropColor1Value!,
                                                            defaultColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                          ),
                                                          color2:
                                                              colorFromCssString(
                                                            _model
                                                                .dropColor2Value!,
                                                            defaultColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                          ),
                                                          points: 0,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'members': [
                                                              currentUserReference
                                                            ],
                                                            'created_time':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                            'update_time':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                            'fans': [
                                                              currentUserReference
                                                            ],
                                                          },
                                                        ),
                                                      });
                                                      _model.eTeamFootRef =
                                                          TeamsRecord
                                                              .getDocumentFromData({
                                                        ...createTeamsRecordData(
                                                          name: _model
                                                              .eTeamNameFieldTextController
                                                              .text,
                                                          logo: _model
                                                              .uploadedFileUrl_uploadData1ni,
                                                          sportValue:
                                                              'esport.football',
                                                          leagueValue: 'pro',
                                                          boss:
                                                              currentUserReference,
                                                          esport: true,
                                                          divisionValue: '2',
                                                          adminUser:
                                                              columnUsersRecord
                                                                  ?.reference,
                                                          color1:
                                                              colorFromCssString(
                                                            _model
                                                                .dropColor1Value!,
                                                            defaultColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                          ),
                                                          color2:
                                                              colorFromCssString(
                                                            _model
                                                                .dropColor2Value!,
                                                            defaultColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                          ),
                                                          points: 0,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'members': [
                                                              currentUserReference
                                                            ],
                                                            'created_time':
                                                                DateTime.now(),
                                                            'update_time':
                                                                DateTime.now(),
                                                            'fans': [
                                                              currentUserReference
                                                            ],
                                                          },
                                                        ),
                                                      }, teamsRecordReference);

                                                      await MyTeamsRecord.createDoc(
                                                              currentUserReference!)
                                                          .set({
                                                        ...createMyTeamsRecordData(
                                                          esport: true,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'teams': [
                                                              _model
                                                                  .eTeamFootRef
                                                                  ?.reference
                                                            ],
                                                          },
                                                        ),
                                                      });

                                                      await MyTeamslikeRecord
                                                              .createDoc(
                                                                  currentUserReference!)
                                                          .set({
                                                        ...createMyTeamslikeRecordData(
                                                          esport: true,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'teams': [
                                                              _model
                                                                  .eTeamFootRef
                                                                  ?.reference
                                                            ],
                                                          },
                                                        ),
                                                      });

                                                      await currentUserReference!
                                                          .update(
                                                              createUsersRecordData(
                                                        eteamRef: _model
                                                            .eTeamFootRef
                                                            ?.reference,
                                                        esportValue: _model
                                                            .dropESportsValue,
                                                      ));

                                                      context.pushNamed(
                                                          MyProfilPageWidget
                                                              .routeName);

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
                                            ),
                                          ],
                                        ),
                                    ],
                                  ),
                                ),
                              if (_model.dropESportsValue ==
                                  'esport.basketball')
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    if (_model.eTeamNameFieldTextController
                                                .text !=
                                            '')
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 16.0),
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
                                                    var teamsRecordReference =
                                                        TeamsRecord.collection
                                                            .doc();
                                                    await teamsRecordReference
                                                        .set({
                                                      ...createTeamsRecordData(
                                                        name: _model
                                                            .eTeamNameFieldTextController
                                                            .text,
                                                        logo: _model
                                                            .uploadedFileUrl_uploadData1ni,
                                                        sportValue:
                                                            'esport.basketball',
                                                        leagueValue: 'pro',
                                                        boss:
                                                            currentUserReference,
                                                        esport: true,
                                                        divisionValue: '2',
                                                        adminUser:
                                                            columnUsersRecord
                                                                ?.reference,
                                                        color1:
                                                            colorFromCssString(
                                                          _model
                                                              .dropColor1Value!,
                                                          defaultColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                        ),
                                                        color2:
                                                            colorFromCssString(
                                                          _model
                                                              .dropColor2Value!,
                                                          defaultColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                        ),
                                                        points: 0,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'members': [
                                                            currentUserReference
                                                          ],
                                                          'created_time': FieldValue
                                                              .serverTimestamp(),
                                                          'update_time': FieldValue
                                                              .serverTimestamp(),
                                                          'fans': [
                                                            currentUserReference
                                                          ],
                                                        },
                                                      ),
                                                    });
                                                    _model.eTeamBasketRef =
                                                        TeamsRecord
                                                            .getDocumentFromData({
                                                      ...createTeamsRecordData(
                                                        name: _model
                                                            .eTeamNameFieldTextController
                                                            .text,
                                                        logo: _model
                                                            .uploadedFileUrl_uploadData1ni,
                                                        sportValue:
                                                            'esport.basketball',
                                                        leagueValue: 'pro',
                                                        boss:
                                                            currentUserReference,
                                                        esport: true,
                                                        divisionValue: '2',
                                                        adminUser:
                                                            columnUsersRecord
                                                                ?.reference,
                                                        color1:
                                                            colorFromCssString(
                                                          _model
                                                              .dropColor1Value!,
                                                          defaultColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                        ),
                                                        color2:
                                                            colorFromCssString(
                                                          _model
                                                              .dropColor2Value!,
                                                          defaultColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                        ),
                                                        points: 0,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'members': [
                                                            currentUserReference
                                                          ],
                                                          'created_time':
                                                              DateTime.now(),
                                                          'update_time':
                                                              DateTime.now(),
                                                          'fans': [
                                                            currentUserReference
                                                          ],
                                                        },
                                                      ),
                                                    }, teamsRecordReference);

                                                    await MyTeamsRecord.createDoc(
                                                            currentUserReference!)
                                                        .set({
                                                      ...createMyTeamsRecordData(
                                                        esport: true,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'teams': [
                                                            _model
                                                                .eTeamBasketRef
                                                                ?.reference
                                                          ],
                                                        },
                                                      ),
                                                    });

                                                    await MyTeamslikeRecord
                                                            .createDoc(
                                                                currentUserReference!)
                                                        .set({
                                                      ...createMyTeamslikeRecordData(
                                                        esport: true,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'teams': [
                                                            _model
                                                                .eTeamBasketRef
                                                                ?.reference
                                                          ],
                                                        },
                                                      ),
                                                    });

                                                    await currentUserReference!
                                                        .update(
                                                            createUsersRecordData(
                                                      eteamRef: _model
                                                          .eTeamBasketRef
                                                          ?.reference,
                                                      esportValue: _model
                                                          .dropESportsValue,
                                                    ));

                                                    context.pushNamed(
                                                        MyProfilPageWidget
                                                            .routeName);

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
                                          ),
                                        ],
                                      ),
                                  ],
                                ),
                              if (_model.dropESportsValue == 'esport.war')
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    if (_model.eTeamNameFieldTextController
                                                .text !=
                                            '')
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 16.0),
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
                                                    var teamsRecordReference =
                                                        TeamsRecord.collection
                                                            .doc();
                                                    await teamsRecordReference
                                                        .set({
                                                      ...createTeamsRecordData(
                                                        name: _model
                                                            .eTeamNameFieldTextController
                                                            .text,
                                                        logo: _model
                                                            .uploadedFileUrl_uploadData1ni,
                                                        sportValue:
                                                            'esport.war',
                                                        leagueValue: 'pro',
                                                        boss:
                                                            currentUserReference,
                                                        esport: true,
                                                        divisionValue: '2',
                                                        adminUser:
                                                            columnUsersRecord
                                                                ?.reference,
                                                        color1:
                                                            colorFromCssString(
                                                          _model
                                                              .dropColor1Value!,
                                                          defaultColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                        ),
                                                        color2:
                                                            colorFromCssString(
                                                          _model
                                                              .dropColor2Value!,
                                                          defaultColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                        ),
                                                        points: 0,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'members': [
                                                            currentUserReference
                                                          ],
                                                          'created_time': FieldValue
                                                              .serverTimestamp(),
                                                          'update_time': FieldValue
                                                              .serverTimestamp(),
                                                          'fans': [
                                                            currentUserReference
                                                          ],
                                                        },
                                                      ),
                                                    });
                                                    _model.eTeamWarRef =
                                                        TeamsRecord
                                                            .getDocumentFromData({
                                                      ...createTeamsRecordData(
                                                        name: _model
                                                            .eTeamNameFieldTextController
                                                            .text,
                                                        logo: _model
                                                            .uploadedFileUrl_uploadData1ni,
                                                        sportValue:
                                                            'esport.war',
                                                        leagueValue: 'pro',
                                                        boss:
                                                            currentUserReference,
                                                        esport: true,
                                                        divisionValue: '2',
                                                        adminUser:
                                                            columnUsersRecord
                                                                ?.reference,
                                                        color1:
                                                            colorFromCssString(
                                                          _model
                                                              .dropColor1Value!,
                                                          defaultColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                        ),
                                                        color2:
                                                            colorFromCssString(
                                                          _model
                                                              .dropColor2Value!,
                                                          defaultColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                        ),
                                                        points: 0,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'members': [
                                                            currentUserReference
                                                          ],
                                                          'created_time':
                                                              DateTime.now(),
                                                          'update_time':
                                                              DateTime.now(),
                                                          'fans': [
                                                            currentUserReference
                                                          ],
                                                        },
                                                      ),
                                                    }, teamsRecordReference);

                                                    await MyTeamsRecord.createDoc(
                                                            currentUserReference!)
                                                        .set({
                                                      ...createMyTeamsRecordData(
                                                        esport: true,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'teams': [
                                                            _model.eTeamWarRef
                                                                ?.reference
                                                          ],
                                                        },
                                                      ),
                                                    });

                                                    await MyTeamslikeRecord
                                                            .createDoc(
                                                                currentUserReference!)
                                                        .set({
                                                      ...createMyTeamslikeRecordData(
                                                        esport: true,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'teams': [
                                                            _model.eTeamWarRef
                                                                ?.reference
                                                          ],
                                                        },
                                                      ),
                                                    });

                                                    await currentUserReference!
                                                        .update(
                                                            createUsersRecordData(
                                                      eteamRef: _model
                                                          .eTeamWarRef
                                                          ?.reference,
                                                      esportValue: _model
                                                          .dropESportsValue,
                                                    ));

                                                    context.pushNamed(
                                                        MyProfilPageWidget
                                                            .routeName);

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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
