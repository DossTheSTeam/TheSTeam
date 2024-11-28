import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'generals_condidtions_page_model.dart';
export 'generals_condidtions_page_model.dart';

class GeneralsCondidtionsPageWidget extends StatefulWidget {
  const GeneralsCondidtionsPageWidget({super.key});

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
                                  50.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Conditions\ngénérales',
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
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                      child: Text(
                        'Article 1 –Dans cette application ...\nTout est publique',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Montserrat',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      'La visibilité des pronostiques, des classements , des commentaires...',
                      textAlign: TextAlign.start,
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
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                      child: Text(
                        'Mais vous ne pourrez pas commenter dans une ligue plus haute que la votre.',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Poppins',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Text(
                    'En téléchargeant, installant et/ou en utilisant l\'Application, vous acceptez sans réserve l\'intégralité des présentes CGU. Si vous ne les acceptez pas, veuillez ne pas utiliser l\'Application.',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                      child: Text(
                        'Article 2 – Définitions',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Montserrat',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Text(
                    'Application : désigne l\'application mobile The S Team et tous ses services associés.',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    'Utilisateur : désigne toute personne physique ayant accepté les présentes CGU et utilisant l\'Application.',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    'Monnaie virtuelle : désigne la monnaie utilisée dans l\'Application pour les paris sportifs, n\'ayant aucune valeur réelle et ne pouvant être convertie en argent réel.',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      'Modérateurs : utilsateur actif de notre communauté qui a été désigné pour maintenir un environnement sain et respectueux pour tous les utilisateurs. Il est chargé de surveiller les activités sur la plateforme, de traiter les signalements d\'utilisateurs et de prendre les mesures nécessaires pour faire respecter nos règles communautaires.',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      'Typsters : utilsateur actif de notre communauté qui a été désigné pour guider les utilisateurs dans l\'univers des paris sportifs, qui se distingue par son taux de réussite élevé et sa capacité à identifier les meilleures opportunités. Transforme sa connaissance en valeur ajoutée pour la communauté.',
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
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                      child: Text(
                        'Article 3 – Objet de l\'Application',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Montserrat',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Text(
                    'L\'Application a pour objet de proposer à ses Utilisateurs :',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    'Un réseau social permettant de se connecter avec d\'autres utilisateurs, de partager des contenus, et d\'interagir.',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    'Un jeu de paris sportifs utilisant une monnaie virtuelle, sans enjeu d\'argent réel.',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      'Un classement des utilisateurs, à jour selon plusieurs critères.',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            'InfosRankPage',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.bottomToTop,
                                duration: Duration(milliseconds: 400),
                              ),
                            },
                          );
                        },
                        child: Text(
                          'Voir Infos Classement',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).success,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                      child: Text(
                        'Article 4 – Conditions d\'utilisation',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Montserrat',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Text(
                    'Inscription : L\'utilisation de l\'Application est soumise à une inscription préalable. L\'Utilisateur s\'engage à fournir des informations exactes et complètes lors de son inscription.',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    'Compte utilisateur : Chaque Utilisateur dispose d\'un compte personnel et non transférable. Il est responsable de la confidentialité de ses identifiants de connexion.',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    'Contenu utilisateur : L\'Utilisateur est seul responsable du contenu qu\'il publie sur l\'Application. Il s\'engage à respecter les lois en vigueur et à ne pas porter atteinte aux droits de tiers.',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    'Monnaie virtuelle : Elle est uniquement utilisable au sein de l\'Application pour les paris sportifs. Les gains obtenus avec cette monnaie virtuelle n\'ont aucune valeur réelle et ne peuvent être convertis en argent réel.',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    'Responsabilité de l\'Éditeur : L\'Éditeur ne garantit pas l\'exactitude, la complétude ou l\'actualité des informations diffusées sur l\'Application. Il décline toute responsabilité en cas de dysfonctionnement de l\'Application, de perte de données ou de tout dommage direct ou indirect résultant de l\'utilisation de l\'Application.',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                      child: Text(
                        'Article 5 – Protection des données personnelles',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Montserrat',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Text(
                    'Les données personnelles collectées par l\'Éditeur sont traitées conformément à la réglementation en vigueur en matière de protection des données personnelles. Pour plus d\'informations, veuillez consulter la politique de confidentialité de l\'Application.',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            'ConfidentialityPage',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.bottomToTop,
                                duration: Duration(milliseconds: 400),
                              ),
                            },
                          );
                        },
                        child: Text(
                          'Voir politique de confidentialité',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).success,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                      child: Text(
                        'Article 6 – Règles de la communauté',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Montserrat',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Text(
                    'La liberté d\'expression sur les réseaux sociaux est un sujet complexe, qui soulève de nombreuses questions juridiques et éthiques. The S Team vous offre un espace pour faire entendre votre voix, elle est également soumise à des contraintes qui limitent cette liberté.',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    'Comportements interdits:',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    'Harcèlement, insultes, propos diffamatoires ou discriminatoires\nSpam, publicité non sollicitée\nContenu inapproprié (violence, pornographie, etc.)\nTricherie, piratage',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    'Conséquences des infractions:',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    'Pénalités dans le jeu (cartons rouges, perte de pièces, etc.)\nSuppression de contenu.\nActivation du blocage d\'un utilisateur par une équipe, si nécessaire.\nSuspension ou suppression du compte.',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                      child: Text(
                        'Article 7 – Modification des CGU',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Montserrat',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Text(
                    'L\'Éditeur se réserve le droit de modifier à tout moment les présentes CGU. Les nouvelles CGU seront applicables dès leur publication sur l\'Application.',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 0.0, 0.0),
                      child: Text(
                        'Article 8 – Loi applicable et juridiction compétente',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Montserrat',
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Les présentes CGU sont soumises au droit français. Tout litige relatif à l\'interprétation ou à l\'exécution des présentes CGU sera soumis à la compétence exclusive des tribunaux de Ville',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      'thesteam.sport@gmail.com',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Montserrat',
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
