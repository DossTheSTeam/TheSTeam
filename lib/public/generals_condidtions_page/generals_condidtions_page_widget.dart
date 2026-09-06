import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/users/copy_text/copy_text_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'generals_condidtions_page_model.dart';
export 'generals_condidtions_page_model.dart';

class GeneralsCondidtionsPageWidget extends StatefulWidget {
  const GeneralsCondidtionsPageWidget({super.key});

  static String routeName = 'GeneralsCondidtionsPage';
  static String routePath = '/generalsCondidtionsPage';

  @override
  State<GeneralsCondidtionsPageWidget> createState() =>
      _GeneralsCondidtionsPageWidgetState();
}

class _GeneralsCondidtionsPageWidgetState
    extends State<GeneralsCondidtionsPageWidget> {
  late GeneralsCondidtionsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GeneralsCondidtionsPageModel());
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
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 30.0, 10.0, 0.0),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 30.0,
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.safePop();
                              },
                              child: Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 30.0,
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
                                (valueOrDefault(
                                        currentUserDocument?.langage, '') ==
                                    'francais'))
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  'Conditions\ngénérales',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineSmallFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .headlineSmallIsCustom,
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
                                  'General\nconditions',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineSmallFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .headlineSmallIsCustom,
                                      ),
                                ),
                              ),
                            if (valueOrDefault(
                                    currentUserDocument?.langage, '') ==
                                'deutsch')
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  'Allgemeine\nGeschäftsbedingungen',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineSmallFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .headlineSmallIsCustom,
                                      ),
                                ),
                              ),
                            if (valueOrDefault(
                                    currentUserDocument?.langage, '') ==
                                'espanol')
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  'Condiciones\ngenerales',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineSmallFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .headlineSmallIsCustom,
                                      ),
                                ),
                              ),
                            if (valueOrDefault(
                                    currentUserDocument?.langage, '') ==
                                'italiano')
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  'Condizions\ngenerali',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineSmallFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .headlineSmallIsCustom,
                                      ),
                                ),
                              ),
                            if (valueOrDefault(
                                    currentUserDocument?.langage, '') ==
                                'portugues')
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  'Condições\ngerais',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineSmallFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .headlineSmallIsCustom,
                                      ),
                                ),
                              ),
                          ],
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
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).accent4,
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
                                  rowNotifsMyNotificationsRecordList.isNotEmpty
                                      ? rowNotifsMyNotificationsRecordList.first
                                      : null;

                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          MyNotifsListWidget.routeName,
                                          extra: <String, dynamic>{
                                            '__transition_info__':
                                                TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                              duration:
                                                  Duration(milliseconds: 400),
                                            ),
                                          },
                                        );
                                      },
                                      child: Icon(
                                        Icons.notifications_active_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                        size: 40.0,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          size: 30.0,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 90.0, 0.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Divider(
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 5.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if ((valueOrDefault(
                                                  currentUserDocument?.langage,
                                                  '') ==
                                              '') ||
                                      (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'francais'))
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Article 1 –Dans cette application ...\nTout est publique',
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
                                  if ((valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'english') ||
                                      (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'american'))
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Article 1 – In this application...\nEverything is public',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'deutsch')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Artikel 1 – In dieser Anwendung …\nAlles ist öffentlich',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'espanol')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Artículo 1 – En la presente solicitud...\ntodo es publico',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'italiano')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Articolo 1 – Nella presente applicazione...\nTutto è pubblico',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'portugues')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Artigo 1º – Nesta aplicação...\nTudo é público',
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
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Text(
                              'La visibilité des pronostiques, des classements , des commentaires...\nMais vous ne pourrez pas commenter dans une ligue plus haute que la votre.\nEn téléchargeant, installant et/ou en utilisant l\'Application, vous acceptez sans réserve l\'intégralité des présentes CGU. Si vous ne les acceptez pas, veuillez ne pas utiliser l\'Application.',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyLargeIsCustom,
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
                                      text:
                                          'La visibilité des pronostiques, des classements , des commentaires... Mais vous ne pourrez pas commenter dans une ligue plus haute que la votre. En téléchargeant, installant et/ou en utilisant l\'Application, vous acceptez sans réserve l\'intégralité des présentes CGU. Si vous ne les acceptez pas, veuillez ne pas utiliser l\'Application.'));
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return WebViewAware(
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(context).unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: CopyTextWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Icon(
                                  Icons.content_copy_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 25.0,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 5.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if ((valueOrDefault(
                                                  currentUserDocument?.langage,
                                                  '') ==
                                              '') ||
                                      (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'francais'))
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Article 2 – Définitions',
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
                                  if ((valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'english') ||
                                      (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'american'))
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Article 2 – Definitions',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'deutsch')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Artikel 2 – Definitionen',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'espanol')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Artículo 2 – Definiciones',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'italiano')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Articolo 2 – Definizioni',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'portugues')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Artigo 2.º – Definições',
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
                                ],
                              ),
                            ),
                          ),
                          Text(
                            'Application : désigne l\'application mobile The S Team et tous ses services associés.\nUtilisateur : désigne toute personne physique ayant accepté les présentes CGU et utilisant l\'Application.\nMonnaie virtuelle : désigne la monnaie utilisée dans l\'Application pour les paris sportifs, n\'ayant aucune valeur réelle et ne pouvant être convertie en argent réel.',
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyLargeFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyLargeIsCustom,
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
                                      text:
                                          'Application : désigne l\'application mobile The S Team et tous ses services associés. Utilisateur : désigne toute personne physique ayant accepté les présentes CGU et utilisant l\'Application. Monnaie virtuelle : désigne la monnaie utilisée dans l\'Application pour les paris sportifs, n\'ayant aucune valeur réelle et ne pouvant être convertie en argent réel.'));
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return WebViewAware(
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(context).unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: CopyTextWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Icon(
                                  Icons.content_copy_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 25.0,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Text(
                              'Modérateurs : utilsateur actif de notre communauté qui a été désigné pour maintenir un environnement sain et respectueux pour tous les utilisateurs. Il est chargé de surveiller les activités sur la plateforme, de traiter les signalements d\'utilisateurs et de prendre les mesures nécessaires pour faire respecter nos règles communautaires.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyLargeIsCustom,
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
                                      text:
                                          'Modérateurs : utilsateur actif de notre communauté qui a été désigné pour maintenir un environnement sain et respectueux pour tous les utilisateurs. Il est chargé de surveiller les activités sur la plateforme, de traiter les signalements d\'utilisateurs et de prendre les mesures nécessaires pour faire respecter nos règles communautaires.'));
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return WebViewAware(
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(context).unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: CopyTextWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Icon(
                                  Icons.content_copy_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 25.0,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 5.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if ((valueOrDefault(
                                                  currentUserDocument?.langage,
                                                  '') ==
                                              '') ||
                                      (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'francais'))
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Article 3 – Objet de l\'Application',
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
                                  if ((valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'english') ||
                                      (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'american'))
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Article 3 – Purpose of the Application',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'deutsch')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Artikel 3 – Zweck der Anwendung',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'espanol')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Artículo 3 – Objeto de la solicitud',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'italiano')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Articolo 3 – Oggetto della domanda',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'portugues')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Artigo 3º – Finalidade da Aplicação',
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
                                ],
                              ),
                            ),
                          ),
                          Text(
                            'L\'Application a pour objet de proposer à ses Utilisateurs :\nUn réseau social permettant de se connecter avec d\'autres utilisateurs, de partager des contenus, et d\'interagir.\nUn jeu de paris sportifs utilisant une monnaie virtuelle, sans enjeu d\'argent réel.\nUn classement des utilisateurs, à jour selon plusieurs critères.',
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyLargeFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyLargeIsCustom,
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
                                      text:
                                          'L\'Application a pour objet de proposer à ses Utilisateurs : Un réseau social permettant de se connecter avec d\'autres utilisateurs, de partager des contenus, et d\'interagir. Un jeu de paris sportifs utilisant une monnaie virtuelle, sans enjeu d\'argent réel. Un classement des utilisateurs, à jour selon plusieurs critères.'));
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return WebViewAware(
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(context).unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: CopyTextWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Icon(
                                  Icons.content_copy_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 25.0,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 10.0, 5.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    InfosRankPageWidget.routeName,
                                    extra: <String, dynamic>{
                                      '__transition_info__': TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.bottomToTop,
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
                                                    currentUserDocument
                                                        ?.langage,
                                                    '') ==
                                                '') ||
                                        (valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            'francais'))
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          'Voir Infos Classement',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                    if ((valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            'english') ||
                                        (valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            'american'))
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          'See Ranking Info',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                    if (valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        'deutsch')
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          'Siehe Ranking-Info',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                    if (valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        'espanol')
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          'Ver información de clasificación',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                    if (valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        'italiano')
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          'Vedi informazioni sulla classifica',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                    if (valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        'portugues')
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          'Veja informações de classificação',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
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
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 5.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if ((valueOrDefault(
                                                  currentUserDocument?.langage,
                                                  '') ==
                                              '') ||
                                      (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'francais'))
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Article 4 – Conditions d\'utilisation',
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
                                  if ((valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'english') ||
                                      (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'american'))
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Article 4 – Conditions of use',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'deutsch')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Artikel 4 – Nutzungsbedingungen',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'espanol')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Artículo 4 – Condiciones de uso',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'italiano')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Articolo 4 – Condizioni d’uso',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'portugues')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Artigo 4.º – Condições de utilização',
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
                                ],
                              ),
                            ),
                          ),
                          Text(
                            'Inscription : L\'utilisation de l\'Application est soumise à une inscription préalable. L\'Utilisateur s\'engage à fournir des informations exactes et complètes lors de son inscription.\nCompte utilisateur : Chaque Utilisateur dispose d\'un compte personnel et non transférable. Il est responsable de la confidentialité de ses identifiants de connexion.',
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyLargeFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyLargeIsCustom,
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
                                      text:
                                          'Inscription : L\'utilisation de l\'Application est soumise à une inscription préalable. L\'Utilisateur s\'engage à fournir des informations exactes et complètes lors de son inscription. Compte utilisateur : Chaque Utilisateur dispose d\'un compte personnel et non transférable. Il est responsable de la confidentialité de ses identifiants de connexion.'));
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return WebViewAware(
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(context).unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: CopyTextWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Icon(
                                  Icons.content_copy_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 25.0,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Contenu utilisateur : L\'Utilisateur est seul responsable du contenu qu\'il publie sur l\'Application. Il s\'engage à respecter les lois en vigueur et à ne pas porter atteinte aux droits de tiers.\nMonnaie virtuelle : Elle est uniquement utilisable au sein de l\'Application pour les paris sportifs. Les gains obtenus avec cette monnaie virtuelle n\'ont aucune valeur réelle et ne peuvent être convertis en argent réel.',
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyLargeFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyLargeIsCustom,
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
                                      text:
                                          'Contenu utilisateur : L\'Utilisateur est seul responsable du contenu qu\'il publie sur l\'Application. Il s\'engage à respecter les lois en vigueur et à ne pas porter atteinte aux droits de tiers. Monnaie virtuelle : Elle est uniquement utilisable au sein de l\'Application pour les paris sportifs. Les gains obtenus avec cette monnaie virtuelle n\'ont aucune valeur réelle et ne peuvent être convertis en argent réel.'));
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return WebViewAware(
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(context).unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: CopyTextWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Icon(
                                  Icons.content_copy_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 25.0,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Responsabilité de l\'Éditeur : L\'Éditeur ne garantit pas l\'exactitude, la complétude ou l\'actualité des informations diffusées sur l\'Application. Il décline toute responsabilité en cas de dysfonctionnement de l\'Application, de perte de données ou de tout dommage direct ou indirect résultant de l\'utilisation de l\'Application.',
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyLargeFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyLargeIsCustom,
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
                                      text:
                                          'Responsabilité de l\'Éditeur : L\'Éditeur ne garantit pas l\'exactitude, la complétude ou l\'actualité des informations diffusées sur l\'Application. Il décline toute responsabilité en cas de dysfonctionnement de l\'Application, de perte de données ou de tout dommage direct ou indirect résultant de l\'utilisation de l\'Application.'));
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return WebViewAware(
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(context).unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: CopyTextWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Icon(
                                  Icons.content_copy_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 25.0,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 5.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if ((valueOrDefault(
                                                  currentUserDocument?.langage,
                                                  '') ==
                                              '') ||
                                      (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'francais'))
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Article 5 – Protection des données personnelles',
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
                                  if ((valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'english') ||
                                      (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'american'))
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Article 5 – Protection of personal data',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'deutsch')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Artikel 5 – Schutz personenbezogener Daten',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'espanol')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Artículo 5 – Protección de datos personales',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'italiano')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Articolo 5 – Protezione dei dati personali',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'portugues')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Artigo 5.º – Proteção de dados pessoais',
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
                                ],
                              ),
                            ),
                          ),
                          Text(
                            'Les données personnelles collectées par l\'Éditeur sont traitées conformément à la réglementation en vigueur en matière de protection des données personnelles. Pour plus d\'informations, veuillez consulter la politique de confidentialité de l\'Application.',
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyLargeFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyLargeIsCustom,
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
                                      text:
                                          'Les données personnelles collectées par l\'Éditeur sont traitées conformément à la réglementation en vigueur en matière de protection des données personnelles. Pour plus d\'informations, veuillez consulter la politique de confidentialité de l\'Application.'));
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return WebViewAware(
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(context).unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: CopyTextWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Icon(
                                  Icons.content_copy_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 25.0,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 10.0, 5.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    ConfidentialityPageWidget.routeName,
                                    extra: <String, dynamic>{
                                      '__transition_info__': TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.bottomToTop,
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
                                                    currentUserDocument
                                                        ?.langage,
                                                    '') ==
                                                '') ||
                                        (valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            'francais'))
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          'Voir politique de confidentialité',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                    if ((valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            'english') ||
                                        (valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            'american'))
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          'See privacy policy',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                    if (valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        'deutsch')
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          'Siehe Datenschutzrichtlinie',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                    if (valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        'espanol')
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          'Ver política de privacidad',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                    if (valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        'italiano')
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          'Vedi l\'informativa sulla privacy',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                    if (valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        'portugues')
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          'Consulte a política de privacidade',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
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
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 5.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if ((valueOrDefault(
                                                  currentUserDocument?.langage,
                                                  '') ==
                                              '') ||
                                      (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'francais'))
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Article 6 – Règles de la communauté',
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
                                  if ((valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'english') ||
                                      (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'american'))
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Article 6 – Community Rules',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'deutsch')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Artikel 6 – Gemeinschaftsregeln',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'espanol')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Artículo 6 – Normas de la comunidad',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'italiano')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Articolo 6 – Regole della comunità',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'portugues')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Artigo 6º – Regras da Comunidade',
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
                                ],
                              ),
                            ),
                          ),
                          Text(
                            'La liberté d\'expression sur les réseaux sociaux est un sujet complexe, qui soulève de nombreuses questions juridiques et éthiques. The S Team vous offre un espace pour faire entendre votre voix, elle est également soumise à des contraintes qui limitent cette liberté.',
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyLargeFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyLargeIsCustom,
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
                                      text:
                                          'La liberté d\'expression sur les réseaux sociaux est un sujet complexe, qui soulève de nombreuses questions juridiques et éthiques. The S Team vous offre un espace pour faire entendre votre voix, elle est également soumise à des contraintes qui limitent cette liberté.'));
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return WebViewAware(
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(context).unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: CopyTextWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Icon(
                                  Icons.content_copy_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 25.0,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 5.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  if ((valueOrDefault(
                                                  currentUserDocument?.langage,
                                                  '') ==
                                              '') ||
                                      (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'francais'))
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Comportements interdits',
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
                                  if ((valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'english') ||
                                      (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'american'))
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Prohibited behaviors',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'deutsch')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Verbotene Verhaltensweisen',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'espanol')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Comportamientos prohibidos',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'italiano')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Comportamenti proibiti',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'portugues')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Comportamentos proibidos',
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
                                ],
                              ),
                            ),
                          ),
                          Text(
                            'Harcèlement, insultes, propos diffamatoires ou discriminatoires\nSpam, publicité non sollicitée\nContenu inapproprié (violence, pornographie, etc.)\nTricherie, piratage',
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyLargeFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyLargeIsCustom,
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
                                      text:
                                          'Harcèlement, insultes, propos diffamatoires ou discriminatoires Spam, publicité non sollicitée Contenu inapproprié (violence, pornographie, etc.) Tricherie, piratage'));
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return WebViewAware(
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(context).unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: CopyTextWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Icon(
                                  Icons.content_copy_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 25.0,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 5.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  if ((valueOrDefault(
                                                  currentUserDocument?.langage,
                                                  '') ==
                                              '') ||
                                      (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'francais'))
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Conséquences des infractions',
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
                                  if ((valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'english') ||
                                      (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'american'))
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Consequences of offenses',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'deutsch')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Folgen von Straftaten',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'espanol')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Consecuencias de las infracciones',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'italiano')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Conseguenze dei reati',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'portugues')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Consequências das infrações',
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
                                ],
                              ),
                            ),
                          ),
                          Text(
                            'Pénalités dans le jeu (cartons rouges, perte de pièces, etc.)\nSuppression de contenu.\nActivation du blocage d\'un utilisateur par une équipe, si nécessaire.\nSuspension ou suppression du compte.',
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyLargeFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyLargeIsCustom,
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
                                      text:
                                          'Pénalités dans le jeu (cartons rouges, perte de pièces, etc.) Suppression de contenu. Activation du blocage d\'un utilisateur par une équipe, si nécessaire. Suspension ou suppression du compte.'));
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return WebViewAware(
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(context).unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: CopyTextWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Icon(
                                  Icons.content_copy_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 25.0,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 5.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if ((valueOrDefault(
                                                  currentUserDocument?.langage,
                                                  '') ==
                                              '') ||
                                      (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'francais'))
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Article 7 – Modification des CGU',
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
                                  if ((valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'english') ||
                                      (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'american'))
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Article 7 – Modification of the T&Cs',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'deutsch')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Artikel 7 – Änderung der AGB',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'espanol')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Artículo 7 – Modificación de los Términos y Condiciones',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'italiano')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Articolo 7 – Modifica delle Condizioni Generali',
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
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'portugues')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Artigo 7º – Modificação dos Termos e Condições',
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
                                ],
                              ),
                            ),
                          ),
                          Text(
                            'L\'éditeur se réserve le droit de modifier à tout moment les présentes CGU. Les nouvelles CGU seront applicables dès leur publication sur l\'Application.',
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyLargeFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyLargeIsCustom,
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
                                      text:
                                          'L\'éditeur se réserve le droit de modifier à tout moment les présentes CGU. Les nouvelles CGU seront applicables dès leur publication sur l\'Application.'));
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return WebViewAware(
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(context).unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: CopyTextWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Icon(
                                  Icons.content_copy_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 25.0,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await Clipboard.setData(ClipboardData(
                                    text: 'https://thesteamsport.com/'));
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return WebViewAware(
                                      child: GestureDetector(
                                        onTap: () {
                                          FocusScope.of(context).unfocus();
                                          FocusManager.instance.primaryFocus
                                              ?.unfocus();
                                        },
                                        child: Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: CopyTextWidget(),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                              child: Text(
                                'https://thesteamsport.com/',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelLargeFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .labelLargeIsCustom,
                                    ),
                              ),
                            ),
                          ),
                          Container(
                            width: 350.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: Image.asset(
                                  'assets/images/JouonsResponsable.png',
                                ).image,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: Text(
                              'Copyright © 2025 The S Team Sport',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
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
