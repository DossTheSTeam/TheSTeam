import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'confidentiality_page_model.dart';
export 'confidentiality_page_model.dart';

class ConfidentialityPageWidget extends StatefulWidget {
  const ConfidentialityPageWidget({super.key});

  @override
  State<ConfidentialityPageWidget> createState() =>
      _ConfidentialityPageWidgetState();
}

class _ConfidentialityPageWidgetState extends State<ConfidentialityPageWidget> {
  late ConfidentialityPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfidentialityPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  'MenuPage',
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Politique de\nConfidentialité',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .override(
                                      fontFamily: 'Montserrat',
                                      letterSpacing: 0.0,
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
                                          'MyNotifsList',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
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
                                            .accent3,
                                        size: 40.0,
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'The S Team s\'engage à protéger la vie privée de ses utilisateurs et à traiter leurs données personnelles avec la plus grande attention. La présente politique de confidentialité a pour objet d\'informer les utilisateurs de l\'Application sur la nature des données collectées, les finalités de leur traitement et les droits dont ils disposent.',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 0.0, 0.0),
                      child: Text(
                        'Article 1 – Données personnelles collectées',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Montserrat',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Lors de l\'utilisation de l\'Application, nous pouvons être amenés à collecter les catégories de données suivantes :',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Données d\'identification: Nom d\'utilisateur, adresse électronique, mot de passe.\nDonnées techniques: Adresse IP, type de navigateur, appareil utilisé, informations de localisation (si autorisées par l\'utilisateur).\nDonnées relatives à l\'utilisation de l\'Application: Historique de navigation, interactions avec d\'autres utilisateurs, données relatives aux paris sportifs (mises, gains, etc.).',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 0.0, 0.0),
                      child: Text(
                        'Article 2 – Finalités du traitement des données',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Montserrat',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Les données collectées sont utilisées aux fins suivantes :',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Création et gestion du compte utilisateur: Permettre à l\'utilisateur de créer et d\'utiliser son compte.\nFourniture des services de l\'Application: Assurer le fonctionnement de l\'Application, notamment la partie réseau social et les jeux de paris sportifs.\nPersonnalisation de l\'expérience utilisateur: Adapter le contenu et les fonctionnalités de l\'Application en fonction des préférences de l\'utilisateur.\nAmélioration de l\'Application: Analyser l\'utilisation de l\'Application afin d\'y apporter des améliorations.\nRespect des obligations légales: Répondre aux demandes des autorités compétentes en cas de besoin.',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 0.0, 0.0),
                      child: Text(
                        'Article 3 – Destinataires des données',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Montserrat',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Les données collectées sont destinées à The S Team et à ses prestataires techniques (hébergeur, etc.). Elles peuvent également être transmises aux autorités compétentes en cas de demande légale.',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 0.0, 0.0),
                      child: Text(
                        'Article 4 – Sécurité des données',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Montserrat',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'The S Team met en œuvre toutes les mesures techniques et organisationnelles appropriées pour garantir la sécurité et la confidentialité des données personnelles.',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 0.0, 0.0),
                      child: Text(
                        'Article 5 – Droits des utilisateurs',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Montserrat',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Conformément à la réglementation en vigueur, les utilisateurs disposent des droits suivants :',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Droit d\'accès: Consulter les données les concernant.\nDroit de rectification: Modifier les données inexactes ou incomplètes.\nDroit d\'effacement: Demander la suppression de leurs données.\nDroit d\'opposition: S\'opposer au traitement de leurs données pour des motifs légitimes.\nDroit à la limitation du traitement: Demander la limitation du traitement de leurs données.\nDroit à la portabilité des données: Recevoir les données les concernant dans un format structuré, couramment utilisé et lisible par machine.\nPour exercer ces droits, l\'utilisateur peut contacter The S Team à l\'adresse suivante : ',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'thesteam.mod@gmail.com',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Poppins',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 0.0, 0.0),
                      child: Text(
                        'Article 6 – Conservation des données',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Montserrat',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Les données personnelles sont conservées pendant une durée n\'excédant pas celle nécessaire aux finalités pour lesquelles elles ont été collectées.',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 0.0, 0.0),
                      child: Text(
                        'Article 7 – Cookies',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Montserrat',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'L\'Application utilise des cookies. Les cookies sont de petits fichiers texte enregistrés sur le terminal de l\'utilisateur. Ils permettent de collecter des informations sur la navigation de l\'utilisateur. L\'utilisateur peut à tout moment désactiver les cookies depuis les paramètres de son navigateur.',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 0.0, 0.0),
                      child: Text(
                        'Article 8 – Modification de la politique de confidentialité',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Montserrat',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'The S Team se réserve le droit de modifier à tout moment la présente politique de confidentialité. Toute modification sera notifiée aux utilisateurs par les moyens appropriés',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
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
