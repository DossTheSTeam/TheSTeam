import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const MyProfilPageWidget() : const AuthPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? const MyProfilPageWidget()
              : const AuthPageWidget(),
        ),
        FFRoute(
          name: 'AuthPage',
          path: '/authPage',
          builder: (context, params) => const AuthPageWidget(),
        ),
        FFRoute(
          name: 'MyBetPage',
          path: '/myBetPage',
          builder: (context, params) => MyBetPageWidget(
            myBetRef: params.getParam(
              'myBetRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'my_bets'],
            ),
          ),
        ),
        FFRoute(
          name: 'MyBetsList',
          path: '/myBetsList',
          builder: (context, params) => const MyBetsListWidget(),
        ),
        FFRoute(
          name: 'MyEditProfil',
          path: '/myEditProfil',
          builder: (context, params) => const MyEditProfilWidget(),
        ),
        FFRoute(
          name: 'MyImagePage',
          path: '/myImagePage',
          builder: (context, params) => const MyImagePageWidget(),
        ),
        FFRoute(
          name: 'MyNotifsList',
          path: '/myNotifsList',
          builder: (context, params) => const MyNotifsListWidget(),
        ),
        FFRoute(
          name: 'MyPostsList',
          path: '/myPostsList',
          builder: (context, params) => const MyPostsListWidget(),
        ),
        FFRoute(
          name: 'MyProfilStats',
          path: '/myProfilStats',
          builder: (context, params) => const MyProfilStatsWidget(),
        ),
        FFRoute(
          name: 'MyProfilPage',
          path: '/myProfilPage',
          builder: (context, params) => const MyProfilPageWidget(),
        ),
        FFRoute(
          name: 'MyProfilSocial',
          path: '/myProfilSocial',
          builder: (context, params) => const MyProfilSocialWidget(),
        ),
        FFRoute(
          name: 'MyTeamList',
          path: '/myTeamList',
          builder: (context, params) => const MyTeamListWidget(),
        ),
        FFRoute(
          name: 'MenuPage',
          path: '/menuPage',
          builder: (context, params) => const MenuPageWidget(),
        ),
        FFRoute(
          name: 'PublicBetsList',
          path: '/publicBetsList',
          builder: (context, params) => PublicBetsListWidget(
            userBetRef: params.getParam(
              'userBetRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'my_bets'],
            ),
            userRef: params.getParam(
              'userRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: 'PublicStats',
          path: '/publicStats',
          builder: (context, params) => PublicStatsWidget(
            userRef: params.getParam(
              'userRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: 'PublicPostsList',
          path: '/publicPostsList',
          builder: (context, params) => PublicPostsListWidget(
            userPostRef: params.getParam(
              'userPostRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'my_posts'],
            ),
          ),
        ),
        FFRoute(
          name: 'PublicProfilPage',
          path: '/publicProfilPage',
          builder: (context, params) => PublicProfilPageWidget(
            userRef: params.getParam(
              'userRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: 'TheSTeamPage',
          path: '/theSTeamPage',
          builder: (context, params) => const TheSTeamPageWidget(),
        ),
        FFRoute(
          name: 'MemberEntryPage',
          path: '/memberEntryPage',
          builder: (context, params) => MemberEntryPageWidget(
            teamRef: params.getParam(
              'teamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'TeamPage',
          path: '/teamPage',
          builder: (context, params) => TeamPageWidget(
            teamRef: params.getParam(
              'teamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'TeamList',
          path: '/teamList',
          builder: (context, params) => const TeamListWidget(),
        ),
        FFRoute(
          name: 'PostMessagePage',
          path: '/postMessagePage',
          builder: (context, params) => PostMessagePageWidget(
            startedCommRef: params.getParam(
              'startedCommRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['posts', 'post_messages'],
            ),
          ),
        ),
        FFRoute(
          name: 'ListCommsPostComPage',
          path: '/listCommsPostComPage',
          builder: (context, params) => ListCommsPostComPageWidget(
            startedCommRef: params.getParam(
              'startedCommRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['posts', 'post_messages'],
            ),
          ),
        ),
        FFRoute(
          name: 'ListEventMessages',
          path: '/listEventMessages',
          builder: (context, params) => ListEventMessagesWidget(
            eventRef: params.getParam(
              'eventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
          ),
        ),
        FFRoute(
          name: 'ListPostMessages',
          path: '/listPostMessages',
          builder: (context, params) => ListPostMessagesWidget(
            postRef: params.getParam(
              'postRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['posts'],
            ),
          ),
        ),
        FFRoute(
          name: 'RedCardPostCommPage',
          path: '/redCardPostCommPage',
          builder: (context, params) => RedCardPostCommPageWidget(
            commRef: params.getParam(
              'commRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['posts', 'post_messages'],
            ),
          ),
        ),
        FFRoute(
          name: 'CartPage',
          path: '/cartPage',
          builder: (context, params) => CartPageWidget(
            cartRef: params.getParam(
              'cartRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'cart'],
            ),
            eventRef: params.getParam(
              'eventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
          ),
        ),
        FFRoute(
          name: 'EventPage',
          path: '/eventPage',
          builder: (context, params) => EventPageWidget(
            eventRef: params.getParam(
              'eventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
          ),
        ),
        FFRoute(
          name: 'ListEvents',
          path: '/listEvents',
          builder: (context, params) => const ListEventsWidget(),
        ),
        FFRoute(
          name: 'TeamEventsList',
          path: '/teamEventsList',
          builder: (context, params) => TeamEventsListWidget(
            teamRef: params.getParam(
              'teamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'AddPostPage',
          path: '/addPostPage',
          builder: (context, params) => AddPostPageWidget(
            teamRef: params.getParam(
              'teamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'ListPosts',
          path: '/listPosts',
          builder: (context, params) => const ListPostsWidget(),
        ),
        FFRoute(
          name: 'ListPostsMyTeams',
          path: '/listPostsMyTeams',
          builder: (context, params) => const ListPostsMyTeamsWidget(),
        ),
        FFRoute(
          name: 'PostPage',
          path: '/postPage',
          builder: (context, params) => PostPageWidget(
            postRef: params.getParam(
              'postRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['posts'],
            ),
          ),
        ),
        FFRoute(
          name: 'RedCardPostPage',
          path: '/redCardPostPage',
          builder: (context, params) => RedCardPostPageWidget(
            postRef: params.getParam(
              'postRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['posts'],
            ),
          ),
        ),
        FFRoute(
          name: 'ListPostsTeam',
          path: '/listPostsTeam',
          builder: (context, params) => ListPostsTeamWidget(
            teamRef: params.getParam(
              'teamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'AddBetPage',
          path: '/addBetPage',
          builder: (context, params) => AddBetPageWidget(
            eventRef: params.getParam(
              'eventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
          ),
        ),
        FFRoute(
          name: 'AddEventPage',
          path: '/addEventPage',
          builder: (context, params) => const AddEventPageWidget(),
        ),
        FFRoute(
          name: 'ListEventsAdmin',
          path: '/listEventsAdmin',
          builder: (context, params) => const ListEventsAdminWidget(),
        ),
        FFRoute(
          name: 'ModifBetPage',
          path: '/modifBetPage',
          builder: (context, params) => ModifBetPageWidget(
            betRef: params.getParam(
              'betRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events', 'bets'],
            ),
          ),
        ),
        FFRoute(
          name: 'ModifEventPage',
          path: '/modifEventPage',
          builder: (context, params) => ModifEventPageWidget(
            eventRef: params.getParam(
              'eventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
          ),
        ),
        FFRoute(
          name: 'AddTeamPage',
          path: '/addTeamPage',
          builder: (context, params) => const AddTeamPageWidget(),
        ),
        FFRoute(
          name: 'AdminMemberEntryPage',
          path: '/adminMemberEntryPage',
          builder: (context, params) => AdminMemberEntryPageWidget(
            notifRef: params.getParam(
              'notifRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'my_notifications'],
            ),
          ),
        ),
        FFRoute(
          name: 'TeamUsersList',
          path: '/teamUsersList',
          builder: (context, params) => TeamUsersListWidget(
            teamRef: params.getParam(
              'teamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'AdminUsersList',
          path: '/adminUsersList',
          builder: (context, params) => const AdminUsersListWidget(),
        ),
        FFRoute(
          name: 'ProfilPublicAdmin',
          path: '/profilPublicAdmin',
          builder: (context, params) => ProfilPublicAdminWidget(
            userRef: params.getParam(
              'userRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: 'SignalPostPage',
          path: '/signalPostPage',
          builder: (context, params) => SignalPostPageWidget(
            notifRef: params.getParam(
              'notifRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'my_notifications'],
            ),
          ),
        ),
        FFRoute(
          name: 'AdminPage',
          path: '/adminPage',
          builder: (context, params) => const AdminPageWidget(),
        ),
        FFRoute(
          name: 'ModeratorPage',
          path: '/moderatorPage',
          builder: (context, params) => const ModeratorPageWidget(),
        ),
        FFRoute(
          name: 'AdminTeamsList',
          path: '/adminTeamsList',
          builder: (context, params) => const AdminTeamsListWidget(),
        ),
        FFRoute(
          name: 'MyBestsRankPage',
          path: '/myBestsRankPage',
          builder: (context, params) => const MyBestsRankPageWidget(),
        ),
        FFRoute(
          name: 'RankPage',
          path: '/rankPage',
          builder: (context, params) => const RankPageWidget(),
        ),
        FFRoute(
          name: 'ConfidentialityPage',
          path: '/confidentialityPage',
          builder: (context, params) => const ConfidentialityPageWidget(),
        ),
        FFRoute(
          name: 'GeneralsCondidtionsPage',
          path: '/generalsCondidtionsPage',
          builder: (context, params) => const GeneralsCondidtionsPageWidget(),
        ),
        FFRoute(
          name: 'InfosRankPage',
          path: '/infosRankPage',
          builder: (context, params) => const InfosRankPageWidget(),
        ),
        FFRoute(
          name: 'ShoppingPage',
          path: '/shoppingPage',
          builder: (context, params) => const ShoppingPageWidget(),
        ),
        FFRoute(
          name: 'ModifETeamPage',
          path: '/modifETeamPage',
          builder: (context, params) => ModifETeamPageWidget(
            teamRef: params.getParam(
              'teamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'ModTeamsList',
          path: '/modTeamsList',
          builder: (context, params) => const ModTeamsListWidget(),
        ),
        FFRoute(
          name: 'ListEventsAdd2Bet',
          path: '/listEventsAdd2Bet',
          builder: (context, params) => ListEventsAdd2BetWidget(
            myBetRef: params.getParam(
              'myBetRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'my_bets'],
            ),
          ),
        ),
        FFRoute(
          name: 'EventPageAdd2Bet',
          path: '/eventPageAdd2Bet',
          builder: (context, params) => EventPageAdd2BetWidget(
            eventRef: params.getParam(
              'eventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
            myBetRef: params.getParam(
              'myBetRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'my_bets'],
            ),
          ),
        ),
        FFRoute(
          name: 'CartPageAdd2Bet',
          path: '/cartPageAdd2Bet',
          builder: (context, params) => CartPageAdd2BetWidget(
            cartRef: params.getParam(
              'cartRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'cart'],
            ),
            myBetRef: params.getParam(
              'myBetRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'my_bets'],
            ),
          ),
        ),
        FFRoute(
          name: 'PublicBetPage',
          path: '/publicBetPage',
          builder: (context, params) => PublicBetPageWidget(
            myBetRef: params.getParam(
              'myBetRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'my_bets'],
            ),
            userRef: params.getParam(
              'userRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: 'ListCommsEventCommPage',
          path: '/listCommsEventCommPage',
          builder: (context, params) => ListCommsEventCommPageWidget(
            startedCommRef: params.getParam(
              'startedCommRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events', 'event_messages'],
            ),
          ),
        ),
        FFRoute(
          name: 'EventMessagePage',
          path: '/eventMessagePage',
          builder: (context, params) => EventMessagePageWidget(
            startedCommRef: params.getParam(
              'startedCommRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events', 'event_messages'],
            ),
          ),
        ),
        FFRoute(
          name: 'RedCardEventCommPage',
          path: '/redCardEventCommPage',
          builder: (context, params) => RedCardEventCommPageWidget(
            commRef: params.getParam(
              'commRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events', 'event_messages'],
            ),
          ),
        ),
        FFRoute(
          name: 'SignalEventMessagePage',
          path: '/signalEventMessagePage',
          builder: (context, params) => SignalEventMessagePageWidget(
            notifRef: params.getParam(
              'notifRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'my_notifications'],
            ),
          ),
        ),
        FFRoute(
          name: 'ModNotifsList',
          path: '/modNotifsList',
          builder: (context, params) => const ModNotifsListWidget(),
        ),
        FFRoute(
          name: 'AdminRankPage',
          path: '/adminRankPage',
          builder: (context, params) => const AdminRankPageWidget(),
        ),
        FFRoute(
          name: 'SignalPostMessagePage',
          path: '/signalPostMessagePage',
          builder: (context, params) => SignalPostMessagePageWidget(
            notifRef: params.getParam(
              'notifRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'my_notifications'],
            ),
          ),
        ),
        FFRoute(
          name: 'CartPageAdd3Bet',
          path: '/cartPageAdd3Bet',
          builder: (context, params) => CartPageAdd3BetWidget(
            cartRef: params.getParam(
              'cartRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'cart'],
            ),
            myBetRef: params.getParam(
              'myBetRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'my_bets'],
            ),
          ),
        ),
        FFRoute(
          name: 'ListEventsAdd3Bet',
          path: '/listEventsAdd3Bet',
          builder: (context, params) => ListEventsAdd3BetWidget(
            myBetRef: params.getParam(
              'myBetRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'my_bets'],
            ),
          ),
        ),
        FFRoute(
          name: 'EventPageAdd3Bet',
          path: '/eventPageAdd3Bet',
          builder: (context, params) => EventPageAdd3BetWidget(
            eventRef: params.getParam(
              'eventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
            myBetRef: params.getParam(
              'myBetRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'my_bets'],
            ),
          ),
        ),
        FFRoute(
          name: 'ModTeamNotifsList',
          path: '/modTeamNotifsList',
          builder: (context, params) => ModTeamNotifsListWidget(
            teamRef: params.getParam(
              'teamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'RankTypstersPage',
          path: '/rankTypstersPage',
          builder: (context, params) => const RankTypstersPageWidget(),
        ),
        FFRoute(
          name: 'MyTeamsListEvents',
          path: '/myTeamsListEvents',
          builder: (context, params) => const MyTeamsListEventsWidget(),
        ),
        FFRoute(
          name: 'SearchUsersList',
          path: '/searchUsersList',
          builder: (context, params) => SearchUsersListWidget(
            userRef: params.getParam(
              'userRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: 'AdminStAppUsersList',
          path: '/adminStAppUsersList',
          builder: (context, params) => const AdminStAppUsersListWidget(),
        ),
        FFRoute(
          name: 'AddETeamPageIUDAdmin',
          path: '/addETeamPageIUDAdmin',
          builder: (context, params) => const AddETeamPageIUDAdminWidget(),
        ),
        FFRoute(
          name: 'ModifTeamPage',
          path: '/modifTeamPage',
          builder: (context, params) => ModifTeamPageWidget(
            teamRef: params.getParam(
              'teamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'EEventPage',
          path: '/eEventPage',
          builder: (context, params) => EEventPageWidget(
            eventRef: params.getParam(
              'eventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
          ),
        ),
        FFRoute(
          name: 'ETeamUsersList',
          path: '/eTeamUsersList',
          builder: (context, params) => ETeamUsersListWidget(
            teamRef: params.getParam(
              'teamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'EMemberEntryPage',
          path: '/eMemberEntryPage',
          builder: (context, params) => EMemberEntryPageWidget(
            teamRef: params.getParam(
              'teamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'EUserRankPage',
          path: '/eUserRankPage',
          builder: (context, params) => const EUserRankPageWidget(),
        ),
        FFRoute(
          name: 'ETeamRankPage',
          path: '/eTeamRankPage',
          builder: (context, params) => const ETeamRankPageWidget(),
        ),
        FFRoute(
          name: 'MyBestsEUserRankPage',
          path: '/myBestsEUserRankPage',
          builder: (context, params) => const MyBestsEUserRankPageWidget(),
        ),
        FFRoute(
          name: 'AdminEUserRankPage',
          path: '/adminEUserRankPage',
          builder: (context, params) => const AdminEUserRankPageWidget(),
        ),
        FFRoute(
          name: 'AdminETeamRankPage',
          path: '/adminETeamRankPage',
          builder: (context, params) => const AdminETeamRankPageWidget(),
        ),
        FFRoute(
          name: 'MyBestsETeamRankPage',
          path: '/myBestsETeamRankPage',
          builder: (context, params) => const MyBestsETeamRankPageWidget(),
        ),
        FFRoute(
          name: 'BossEMemberEntryPage',
          path: '/bossEMemberEntryPage',
          builder: (context, params) => BossEMemberEntryPageWidget(
            notifRef: params.getParam(
              'notifRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'my_notifications'],
            ),
            eTeamRef: params.getParam(
              'eTeamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'DiscusionETeamPage',
          path: '/discusionETeamPage',
          builder: (context, params) => DiscusionETeamPageWidget(
            eTeamRef: params.getParam(
              'eTeamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'ETeamEventsList',
          path: '/eTeamEventsList',
          builder: (context, params) => ETeamEventsListWidget(
            teamRef: params.getParam(
              'teamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'ListMessagesBossEvent',
          path: '/listMessagesBossEvent',
          builder: (context, params) => ListMessagesBossEventWidget(
            eventRef: params.getParam(
              'eventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
            eTeamRef: params.getParam(
              'eTeamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'AddPlayersEventPage',
          path: '/addPlayersEventPage',
          builder: (context, params) => AddPlayersEventPageWidget(
            eventRef: params.getParam(
              'eventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
            myETeamRef: params.getParam(
              'myETeamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'ModifEndEEventPage',
          path: '/modifEndEEventPage',
          builder: (context, params) => ModifEndEEventPageWidget(
            eventRef: params.getParam(
              'eventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
            myETeamRef: params.getParam(
              'myETeamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'TeamListForEvents',
          path: '/teamListForEvents',
          builder: (context, params) => TeamListForEventsWidget(
            eTeamRef: params.getParam(
              'eTeamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'BossNotifEEventPageIUDAdmin',
          path: '/bossNotifEEventPageIUDAdmin',
          builder: (context, params) => BossNotifEEventPageIUDAdminWidget(
            notifRef: params.getParam(
              'notifRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'my_notifications'],
            ),
            eTeamRef: params.getParam(
              'eTeamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'ETeamEventsNoDateList',
          path: '/eTeamEventsNoDateList',
          builder: (context, params) => ETeamEventsNoDateListWidget(
            teamRef: params.getParam(
              'teamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'PlayerNotifEEventStartPage',
          path: '/playerNotifEEventStartPage',
          builder: (context, params) => PlayerNotifEEventStartPageWidget(
            notifRef: params.getParam(
              'notifRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'my_notifications'],
            ),
            eEventRef: params.getParam(
              'eEventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
          ),
        ),
        FFRoute(
          name: 'BossNotifEEventEndPage',
          path: '/bossNotifEEventEndPage',
          builder: (context, params) => BossNotifEEventEndPageWidget(
            notifRef: params.getParam(
              'notifRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'my_notifications'],
            ),
            eEventRef: params.getParam(
              'eEventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
          ),
        ),
        FFRoute(
          name: 'SignalEEventPage',
          path: '/signalEEventPage',
          builder: (context, params) => SignalEEventPageWidget(
            notifRef: params.getParam(
              'notifRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'my_notifications'],
            ),
          ),
        ),
        FFRoute(
          name: 'AddDateForEEvent',
          path: '/addDateForEEvent',
          builder: (context, params) => AddDateForEEventWidget(
            eventRef: params.getParam(
              'eventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
            eTeamRef: params.getParam(
              'eTeamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'EteamStats',
          path: '/eteamStats',
          builder: (context, params) => EteamStatsWidget(
            eTeamRef: params.getParam(
              'eTeamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'LiguesRankPage',
          path: '/liguesRankPage',
          builder: (context, params) => const LiguesRankPageWidget(),
        ),
        FFRoute(
          name: 'TheSTeamPostPage',
          path: '/theSTeamPostPage',
          builder: (context, params) => TheSTeamPostPageWidget(
            postRef: params.getParam(
              'postRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['posts'],
            ),
          ),
        ),
        FFRoute(
          name: 'ListSurveys',
          path: '/listSurveys',
          builder: (context, params) => ListSurveysWidget(
            teamRef: params.getParam(
              'teamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'AddSurveyPage',
          path: '/addSurveyPage',
          builder: (context, params) => AddSurveyPageWidget(
            teamRef: params.getParam(
              'teamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'ListAdvices',
          path: '/listAdvices',
          builder: (context, params) => ListAdvicesWidget(
            teamRef: params.getParam(
              'teamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'AddAdvicePage',
          path: '/addAdvicePage',
          builder: (context, params) => AddAdvicePageWidget(
            teamRef: params.getParam(
              'teamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: 'RatingPlayersPage',
          path: '/ratingPlayersPage',
          builder: (context, params) => RatingPlayersPageWidget(
            eventRef: params.getParam(
              'eventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
            notifRef: params.getParam(
              'notifRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users', 'my_notifications'],
            ),
          ),
        ),
        FFRoute(
          name: 'AddRatingPlayersPage',
          path: '/addRatingPlayersPage',
          builder: (context, params) => AddRatingPlayersPageWidget(
            eventRef: params.getParam(
              'eventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
          ),
        ),
        FFRoute(
          name: 'TeamListCup',
          path: '/teamListCup',
          builder: (context, params) => const TeamListCupWidget(),
        ),
        FFRoute(
          name: 'PublicStatsCompare',
          path: '/publicStatsCompare',
          builder: (context, params) => PublicStatsCompareWidget(
            userRef: params.getParam(
              'userRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: 'FullImagePage',
          path: '/fullImagePage',
          builder: (context, params) => FullImagePageWidget(
            imageRef: params.getParam(
              'imageRef',
              ParamType.String,
            ),
            userRef: params.getParam(
              'userRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/authPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  child: Center(
                    child: Image.asset(
                      'assets/images/Logo_The_S_Team.png',
                      width: 150.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
