import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/users/copy_text/copy_text_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'confidentiality_page_model.dart';
export 'confidentiality_page_model.dart';

class ConfidentialityPageWidget extends StatefulWidget {
  const ConfidentialityPageWidget({super.key});

  static String routeName = 'ConfidentialityPage';
  static String routePath = '/confidentialityPage';

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
                Row(
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
                            color: FlutterFlowTheme.of(context).secondaryText,
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
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 30.0,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if ((valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      '') ||
                              (valueOrDefault(
                                      currentUserDocument?.langage, '') ==
                                  'francais'))
                            AuthUserStreamWidget(
                              builder: (context) => Text(
                                'Politique de\nConfidentialité',
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
                                'Privacy Policy',
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
                                'Politik von\nVertraulichkeit',
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
                                'Política de\nConfidencialidad',
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
                                'Politica di\nRiservatezza',
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
                                'Política de\nConfidencialidade',
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
                                        '__transition_info__': TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.rightToLeft,
                                          duration: Duration(milliseconds: 400),
                                        ),
                                      },
                                    );
                                  },
                                  child: Icon(
                                    Icons.notifications_active_outlined,
                                    color: FlutterFlowTheme.of(context).accent1,
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
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Text(
                              'The S Team s\'engage à protéger la vie privée de ses utilisateurs et à traiter leurs données personnelles avec la plus grande attention.\n\nLa présente politique de confidentialité a pour objet d\'informer les utilisateurs de l\'Application sur la nature des données collectées, les finalités de leur traitement et les droits dont ils disposent.\nLa présente Politique de Confidentialité décrit comment The S Team Sport (« nous », « notre », « nos ») collecte, utilise, traite et protège vos informations personnelles lorsque vous utilisez notre application mobile et notre site web thesteamsport.com (collectivement, les « Services »).\n\nNous nous engageons à protéger votre vie privée et à traiter vos données personnelles conformément aux lois applicables sur la protection des données, notamment le Règlement Général sur la Protection des Données (RGPD) pour les utilisateurs de l’Espace Économique Européen (EEE), du Royaume-Uni et de la Suisse, ainsi que les lois sur la confidentialité des consommateurs des États américains.\n\n1. Qui sommes-nous ? (Contrôleur des données)\n\nNom de l’entreprise : The S Team Sport Adresse email de contact pour la confidentialité : thesteamsport@gmail.com Adresse postale : 15, rue aux bergers 72600 Saint Rémy du Val\n\n2. Informations que nous collectons\n\nNous collectons différents types d’informations personnelles en fonction de votre interaction avec nos Services.\n\n2.1. Données collectées via l’Application Mobile\n\nDonnées de compte utilisateur : Lors de la création d’un compte ou de l’utilisation de certaines fonctionnalités, nous pouvons collecter votre nom d’utilisateur, adresse e-mail, photo de profil, et d’autres informations que vous choisissez de fournir (par exemple, des informations de profil liées à vos activités sportives ou à vos paris).\nDonnées de notifications Push (Firebase Cloud Messaging – FCM) :\nJeton FCM (Firebase Cloud Messaging Token) : Un identifiant unique généré pour chaque appareil afin de recevoir des notifications Push. Ce jeton est stocké et mis à jour sur votre document utilisateur (users/{userId}/fcmToken) et dans une sous-collection (users/{userId}/fcm_tokens/{deviceId}).\nUUID de l’appareil (Universally Unique Identifier) : Un identifiant unique généré localement sur votre appareil pour distinguer votre appareil des autres.\nPlateforme de l’appareil : Indique si l’appareil est iOS ou Android.\nHistorique des notifications : Les notifications envoyées sont logguées dans la collection ff_user_push_notifications, incluant le titre, le texte, la cible et le statut d’envoi.\nDonnées publicitaires (Google AdMob) :\nIdentifiants publicitaires : Des identifiants d’appareil à des fins publicitaires (par exemple, l’ID publicitaire Android, l’IDFA iOS).\nDonnées d’interaction publicitaire : Informations sur votre interaction avec les annonces (impressions, clics).\nStatut de consentement : Le statut de votre consentement concernant les annonces personnalisées, collecté via notre Plateforme de Gestion du Consentement (CMP) intégrée, qui peut inclure des informations spécifiques aux réglementations des États américains.\nDonnées d’utilisation et d’analyse (si applicable) : Informations sur la manière dont vous utilisez l’application, telles que les pages visitées, les fonctionnalités utilisées, les erreurs rencontrées, la durée des sessions. (Si vous utilisez Firebase Analytics ou un autre outil).\n2.2. Données collectées via le Site Web (thesteamsport.com)\n\nDonnées de navigation : Adresse IP, type de navigateur, système d’exploitation, pages visitées, heures d’accès, références URL. Ces données sont collectées via des cookies et des technologies similaires.\nDonnées de formulaire de contact (si applicable) : Nom, adresse e-mail, et tout message que vous nous envoyez via un formulaire de contact.\n2.3. Données de localisation (si applicable)\n\nSi l’application ou le site web demande et que vous accordez la permission, nous pouvons collecter des données de localisation précises ou approximatives pour fournir des fonctionnalités spécifiques ou des publicités pertinentes.\n3. Comment nous utilisons vos informations (Finalités du traitement)\n\nNous utilisons les informations que nous collectons pour les finalités suivantes :\n\nFourniture et maintien des Services : Pour opérer et maintenir notre application et notre site web, y compris la gestion de votre compte.\nNotifications Push : Pour vous envoyer des notifications pertinentes concernant les activités de l’application (commentaires, mises à jour, résultats de paris, etc.) que vous avez activées.\nPublicité et monétisation :\nPour afficher des annonces pertinentes via Google AdMob, qui peuvent être personnalisées ou non personnalisées en fonction de votre consentement et de votre emplacement.\nPour mesurer la performance des campagnes publicitaires.\nAmélioration et personnalisation des Services : Pour comprendre comment vous utilisez nos Services afin de les améliorer, de développer de nouvelles fonctionnalités et de personnaliser votre expérience.\nAnalyse et recherche : Pour effectuer des analyses et des recherches afin d’améliorer la qualité et l’efficacité de nos Services.\nSécurité et prévention de la fraude : Pour protéger nos Services et nos utilisateurs contre la fraude et les activités non autorisées.\nConformité légale : Pour respecter nos obligations légales et réglementaires.\nCommunication : Pour vous répondre si vous nous contactez via un formulaire de contact ou par e-mail.\n4. Bases légales du traitement (RGPD et autres)\n\nPour les utilisateurs situés dans l’EEE, au Royaume-Uni et en Suisse, nous traitons vos données personnelles sur les bases légales suivantes :\n\nVotre consentement : Pour les finalités où vous avez donné votre consentement explicite (par exemple, pour la publicité personnalisée via notre CMP, pour les notifications Push). Vous avez le droit de retirer votre consentement à tout moment.\nExécution d’un contrat : Pour la fourniture des Services que vous avez demandés ou pour l’exécution d’un contrat avec vous (par exemple, la gestion de votre compte).\nIntérêt légitime : Lorsque le traitement est nécessaire à nos intérêts légitimes, à condition que vos droits et libertés fondamentaux ne prévalent pas sur ces intérêts (par exemple, pour la sécurité de nos Services, l’amélioration des produits, l’analyse d’utilisation non personnalisée).\nObligation légale : Lorsque le traitement est nécessaire pour nous conformer à une obligation légale (par exemple, tenue de registres, réponse aux demandes des autorités).\n5. Partage de vos informations\n\nNous pouvons partager vos informations personnelles avec les catégories de destinataires suivantes :\n\nFournisseurs de services : Des tiers qui fournissent des services en notre nom, tels que :\nGoogle Firebase : Pour l’authentification, les bases de données (Firestore), les notifications Push (FCM), l’analyse d’utilisation (Analytics).\nGoogle AdMob : Pour la diffusion et la monétisation des annonces.\nGoogle Cloud Run : Pour l’exécution de nos fonctions backend liées aux notifications et à d’autres services.\nPartenaires publicitaires : Des fournisseurs de technologies publicitaires tiers (ATPs) via Google AdMob, conformément à votre consentement exprimé via la CMP.\nPour des raisons légales : Lorsque la loi l’exige ou pour répondre à des procédures légales valides (par exemple, des ordonnances de tribunal, des demandes gouvernementales).\nTransferts d’entreprise : En cas de fusion, acquisition, vente d’actifs ou faillite.\n6. Transferts de données internationaux\n\nVos informations peuvent être transférées et stockées sur des serveurs situés en dehors de votre pays de résidence, y compris aux États-Unis, où les lois sur la protection des données peuvent être différentes. Nous prendrons des mesures pour nous assurer que vos données sont traitées en toute sécurité et conformément à la présente Politique de Confidentialité et aux lois applicables, notamment en utilisant les clauses contractuelles types approuvées par la Commission européenne ou d’autres mécanismes de transfert légaux.\n\n7. Conservation des données\n\nNous conservons vos informations personnelles aussi longtemps que nécessaire pour atteindre les finalités pour lesquelles elles ont été collectées, y compris pour la satisfaction de toute exigence légale, comptable ou de reporting. La durée de conservation spécifique dépendra du type de données et de l’usage. Par exemple :\n\nLes jetons FCM sont conservés tant que vous utilisez l’application et que vous n’avez pas désactivé les notifications ou désinstallé l’application.\nLes logs de notifications peuvent être conservés pour une période définie à des fins d’audit ou de dépannage.\nLes données de compte sont conservées tant que votre compte est actif.\n8. Vos droits en matière de protection des données (RGPD, États américains et autres)\n\nEn fonction de votre lieu de résidence et de la loi applicable, vous disposez de certains droits concernant vos données personnelles :\n\n8.1. Droits pour les utilisateurs de l’EEE, du Royaume-Uni et de la Suisse (RGPD)\n\nDroit d’accès : Vous avez le droit de demander une copie des données personnelles que nous détenons à votre sujet.\nDroit de rectification : Vous avez le droit de demander la correction de toute information que vous estimez inexacte ou incomplète.\nDroit à l’effacement (« droit à l’oubli ») : Vous avez le droit de nous demander d’effacer vos données personnelles, sous certaines conditions.\nDroit à la limitation du traitement : Vous avez le droit de nous demander de limiter le traitement de vos données personnelles, sous certaines conditions.\nDroit d’opposition au traitement : Vous avez le droit de vous opposer à notre traitement de vos données personnelles, sous certaines conditions.\nDroit à la portabilité des données : Vous avez le droit de demander que nous transférions les données que nous avons collectées à une autre organisation, ou directement à vous, sous certaines conditions.\nDroit de retirer votre consentement : Lorsque nous nous basons sur votre consentement pour traiter vos données personnelles, vous avez le droit de retirer ce consentement à tout moment. Cela n’affectera pas la légalité du traitement effectué avant le retrait.\nDroit de déposer une plainte : Vous avez le droit de déposer une plainte auprès d’une autorité de contrôle de la protection des données (par exemple, la CNIL en France) si vous estimez que nous n’avons pas traité vos données de manière appropriée.\n8.2. Droits pour les résidents de certains États américains (Ex : CCPA/CPRA)\n\nSi vous êtes un résident de Californie (via le CCPA/CPRA) ou d’autres États américains ayant des lois similaires sur la confidentialité des consommateurs, vous pouvez avoir les droits suivants :\n\nDroit de savoir : Vous avez le droit de demander des informations sur les catégories ou les éléments spécifiques de données personnelles que nous avons collectées à votre sujet, les sources de ces données, les finalités de la collecte et le partage avec des tiers.\nDroit de suppression : Vous avez le droit de demander la suppression de vos données personnelles que nous avons collectées, sous certaines conditions.\nDroit de rectification : Vous avez le droit de demander la correction de vos données personnelles inexactes.\nDroit d’opposition à la vente ou au partage : Vous avez le droit de vous opposer à la « vente » ou au « partage » de vos données personnelles (tels que ces termes sont définis par les lois applicables) à des fins de publicité ciblée/cross-contextuelle.\nDroit à la non-discrimination : Vous avez le droit de ne pas être soumis à un traitement discriminatoire pour l’exercice de vos droits à la confidentialité.\nPour exercer l’un de ces droits, veuillez nous contacter à l’adresse e-mail fournie dans la section « Qui sommes-nous ? » de la présente politique. Nous vérifierons votre demande conformément aux exigences légales.\n\n9. Cookies et technologies de suivi\n\nNous utilisons des cookies et des technologies de suivi similaires sur notre site web pour améliorer votre expérience, analyser l’utilisation du site et, avec votre consentement, à des fins publicitaires.\n\nCookies essentiels : Nécessaires au fonctionnement de base du site.\nCookies analytiques : Pour collecter des informations sur la façon dont les visiteurs utilisent notre site.\nCookies publicitaires : Pour afficher des annonces pertinentes en fonction de vos intérêts.\nVous pouvez gérer vos préférences en matière de cookies via les paramètres de votre navigateur.\n\n10. Confidentialité des enfants\n\nNos Services ne s’adressent pas aux enfants de moins de 16 ans (ou l’âge minimum équivalent dans votre juridiction). Nous ne collectons pas sciemment d’informations personnelles auprès d’enfants de moins de 16 ans. Si nous apprenons que nous avons collecté des informations personnelles d’un enfant sans vérification du consentement parental, nous prendrons des mesures pour supprimer ces informations.\n\n11. Modifications de la présente Politique de Confidentialité\n\nNous pouvons mettre à jour notre Politique de Confidentialité de temps à autre. Nous vous informerons de tout changement en publiant la nouvelle Politique de Confidentialité sur cette page et en mettant à jour la « Date d’entrée en vigueur » en haut de ce document. Nous vous encourageons à consulter régulièrement cette page pour prendre connaissance des modifications. Les modifications prendront effet dès leur publication sur cette page.\n\n12. Contactez-nous\n\nSi vous avez des questions concernant la présente Politique de Confidentialité ou nos pratiques en matière de confidentialité, veuillez nous contacter à l’adresse suivante : thesteamsport@gmail.com\n',
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
                                'Date d’entrée en vigueur : 26 août 2025',
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: Text(
                              'Copyright © 2025 The S Team Sport',
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
                        ],
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
