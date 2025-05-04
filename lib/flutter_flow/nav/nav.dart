import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

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
          appStateNotifier.loggedIn ? MyProfilPageWidget() : AuthPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? MyProfilPageWidget()
              : AuthPageWidget(),
        ),
        FFRoute(
          name: AuthPageWidget.routeName,
          path: AuthPageWidget.routePath,
          builder: (context, params) => AuthPageWidget(),
        ),
        FFRoute(
          name: MyBetPageWidget.routeName,
          path: MyBetPageWidget.routePath,
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
          name: MyBetsListWidget.routeName,
          path: MyBetsListWidget.routePath,
          builder: (context, params) => MyBetsListWidget(),
        ),
        FFRoute(
          name: MyEditProfilWidget.routeName,
          path: MyEditProfilWidget.routePath,
          builder: (context, params) => MyEditProfilWidget(),
        ),
        FFRoute(
          name: MyImagePageWidget.routeName,
          path: MyImagePageWidget.routePath,
          builder: (context, params) => MyImagePageWidget(),
        ),
        FFRoute(
          name: MyNotifsListWidget.routeName,
          path: MyNotifsListWidget.routePath,
          builder: (context, params) => MyNotifsListWidget(),
        ),
        FFRoute(
          name: MyPostsListWidget.routeName,
          path: MyPostsListWidget.routePath,
          builder: (context, params) => MyPostsListWidget(),
        ),
        FFRoute(
          name: MyProfilStatsWidget.routeName,
          path: MyProfilStatsWidget.routePath,
          builder: (context, params) => MyProfilStatsWidget(),
        ),
        FFRoute(
          name: MyProfilPageWidget.routeName,
          path: MyProfilPageWidget.routePath,
          builder: (context, params) => MyProfilPageWidget(),
        ),
        FFRoute(
          name: MyProfilSocialWidget.routeName,
          path: MyProfilSocialWidget.routePath,
          builder: (context, params) => MyProfilSocialWidget(),
        ),
        FFRoute(
          name: MyTeamListWidget.routeName,
          path: MyTeamListWidget.routePath,
          builder: (context, params) => MyTeamListWidget(),
        ),
        FFRoute(
          name: MenuPageWidget.routeName,
          path: MenuPageWidget.routePath,
          builder: (context, params) => MenuPageWidget(),
        ),
        FFRoute(
          name: PublicBetsListWidget.routeName,
          path: PublicBetsListWidget.routePath,
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
          name: PublicStatsWidget.routeName,
          path: PublicStatsWidget.routePath,
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
          name: PublicPostsListWidget.routeName,
          path: PublicPostsListWidget.routePath,
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
          name: PublicProfilPageWidget.routeName,
          path: PublicProfilPageWidget.routePath,
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
          name: TheSTeamPageWidget.routeName,
          path: TheSTeamPageWidget.routePath,
          builder: (context, params) => TheSTeamPageWidget(),
        ),
        FFRoute(
          name: MemberEntryPageWidget.routeName,
          path: MemberEntryPageWidget.routePath,
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
          name: TeamPageWidget.routeName,
          path: TeamPageWidget.routePath,
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
          name: TeamListWidget.routeName,
          path: TeamListWidget.routePath,
          builder: (context, params) => TeamListWidget(),
        ),
        FFRoute(
          name: PostMessagePageWidget.routeName,
          path: PostMessagePageWidget.routePath,
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
          name: ListCommsPostComPageWidget.routeName,
          path: ListCommsPostComPageWidget.routePath,
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
          name: ListEventMessagesWidget.routeName,
          path: ListEventMessagesWidget.routePath,
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
          name: ListPostMessagesWidget.routeName,
          path: ListPostMessagesWidget.routePath,
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
          name: RedCardPostCommPageWidget.routeName,
          path: RedCardPostCommPageWidget.routePath,
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
          name: CartPageWidget.routeName,
          path: CartPageWidget.routePath,
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
          name: EventPageWidget.routeName,
          path: EventPageWidget.routePath,
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
          name: ListEventsWidget.routeName,
          path: ListEventsWidget.routePath,
          builder: (context, params) => ListEventsWidget(),
        ),
        FFRoute(
          name: TeamEventsListWidget.routeName,
          path: TeamEventsListWidget.routePath,
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
          name: AddPostPageWidget.routeName,
          path: AddPostPageWidget.routePath,
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
          name: ListPostsWidget.routeName,
          path: ListPostsWidget.routePath,
          builder: (context, params) => ListPostsWidget(),
        ),
        FFRoute(
          name: ListPostsMyTeamsWidget.routeName,
          path: ListPostsMyTeamsWidget.routePath,
          builder: (context, params) => ListPostsMyTeamsWidget(),
        ),
        FFRoute(
          name: PostPageWidget.routeName,
          path: PostPageWidget.routePath,
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
          name: RedCardPostPageWidget.routeName,
          path: RedCardPostPageWidget.routePath,
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
          name: ListPostsTeamWidget.routeName,
          path: ListPostsTeamWidget.routePath,
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
          name: AddBetPageWidget.routeName,
          path: AddBetPageWidget.routePath,
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
          name: AddEventPageWidget.routeName,
          path: AddEventPageWidget.routePath,
          builder: (context, params) => AddEventPageWidget(),
        ),
        FFRoute(
          name: ListEventsAdminWidget.routeName,
          path: ListEventsAdminWidget.routePath,
          builder: (context, params) => ListEventsAdminWidget(),
        ),
        FFRoute(
          name: ModifBetPageWidget.routeName,
          path: ModifBetPageWidget.routePath,
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
          name: ModifEventPageWidget.routeName,
          path: ModifEventPageWidget.routePath,
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
          name: AddTeamPageWidget.routeName,
          path: AddTeamPageWidget.routePath,
          builder: (context, params) => AddTeamPageWidget(),
        ),
        FFRoute(
          name: AdminMemberEntryPageWidget.routeName,
          path: AdminMemberEntryPageWidget.routePath,
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
          name: TeamUsersListWidget.routeName,
          path: TeamUsersListWidget.routePath,
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
          name: AdminUsersListWidget.routeName,
          path: AdminUsersListWidget.routePath,
          builder: (context, params) => AdminUsersListWidget(),
        ),
        FFRoute(
          name: ProfilPublicAdminWidget.routeName,
          path: ProfilPublicAdminWidget.routePath,
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
          name: SignalPostPageWidget.routeName,
          path: SignalPostPageWidget.routePath,
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
          name: AdminPageWidget.routeName,
          path: AdminPageWidget.routePath,
          builder: (context, params) => AdminPageWidget(),
        ),
        FFRoute(
          name: ModeratorPageWidget.routeName,
          path: ModeratorPageWidget.routePath,
          builder: (context, params) => ModeratorPageWidget(),
        ),
        FFRoute(
          name: AdminTeamsListWidget.routeName,
          path: AdminTeamsListWidget.routePath,
          builder: (context, params) => AdminTeamsListWidget(),
        ),
        FFRoute(
          name: MyBestsRankPageWidget.routeName,
          path: MyBestsRankPageWidget.routePath,
          builder: (context, params) => MyBestsRankPageWidget(),
        ),
        FFRoute(
          name: RankPageWidget.routeName,
          path: RankPageWidget.routePath,
          builder: (context, params) => RankPageWidget(),
        ),
        FFRoute(
          name: ConfidentialityPageWidget.routeName,
          path: ConfidentialityPageWidget.routePath,
          builder: (context, params) => ConfidentialityPageWidget(),
        ),
        FFRoute(
          name: GeneralsCondidtionsPageWidget.routeName,
          path: GeneralsCondidtionsPageWidget.routePath,
          builder: (context, params) => GeneralsCondidtionsPageWidget(),
        ),
        FFRoute(
          name: InfosRankPageWidget.routeName,
          path: InfosRankPageWidget.routePath,
          builder: (context, params) => InfosRankPageWidget(),
        ),
        FFRoute(
          name: ShoppingPageWidget.routeName,
          path: ShoppingPageWidget.routePath,
          builder: (context, params) => ShoppingPageWidget(),
        ),
        FFRoute(
          name: ModifETeamPageWidget.routeName,
          path: ModifETeamPageWidget.routePath,
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
          name: ModTeamsListWidget.routeName,
          path: ModTeamsListWidget.routePath,
          builder: (context, params) => ModTeamsListWidget(),
        ),
        FFRoute(
          name: ListEventsAdd2BetWidget.routeName,
          path: ListEventsAdd2BetWidget.routePath,
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
          name: EventPageAdd2BetWidget.routeName,
          path: EventPageAdd2BetWidget.routePath,
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
          name: CartPageAdd2BetWidget.routeName,
          path: CartPageAdd2BetWidget.routePath,
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
          name: PublicBetPageWidget.routeName,
          path: PublicBetPageWidget.routePath,
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
          name: ListCommsEventCommPageWidget.routeName,
          path: ListCommsEventCommPageWidget.routePath,
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
          name: EventMessagePageWidget.routeName,
          path: EventMessagePageWidget.routePath,
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
          name: RedCardEventCommPageWidget.routeName,
          path: RedCardEventCommPageWidget.routePath,
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
          name: SignalEventMessagePageWidget.routeName,
          path: SignalEventMessagePageWidget.routePath,
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
          name: ModNotifsListWidget.routeName,
          path: ModNotifsListWidget.routePath,
          builder: (context, params) => ModNotifsListWidget(),
        ),
        FFRoute(
          name: AdminRankPageWidget.routeName,
          path: AdminRankPageWidget.routePath,
          builder: (context, params) => AdminRankPageWidget(),
        ),
        FFRoute(
          name: SignalPostMessagePageWidget.routeName,
          path: SignalPostMessagePageWidget.routePath,
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
          name: CartPageAdd3BetWidget.routeName,
          path: CartPageAdd3BetWidget.routePath,
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
          name: ListEventsAdd3BetWidget.routeName,
          path: ListEventsAdd3BetWidget.routePath,
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
          name: EventPageAdd3BetWidget.routeName,
          path: EventPageAdd3BetWidget.routePath,
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
          name: ModTeamNotifsListWidget.routeName,
          path: ModTeamNotifsListWidget.routePath,
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
          name: MyTeamsListEventsWidget.routeName,
          path: MyTeamsListEventsWidget.routePath,
          builder: (context, params) => MyTeamsListEventsWidget(),
        ),
        FFRoute(
          name: SearchUsersListWidget.routeName,
          path: SearchUsersListWidget.routePath,
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
          name: AdminStAppUsersListWidget.routeName,
          path: AdminStAppUsersListWidget.routePath,
          builder: (context, params) => AdminStAppUsersListWidget(),
        ),
        FFRoute(
          name: AddETeamPageIUDAdminWidget.routeName,
          path: AddETeamPageIUDAdminWidget.routePath,
          builder: (context, params) => AddETeamPageIUDAdminWidget(),
        ),
        FFRoute(
          name: ModifTeamPageWidget.routeName,
          path: ModifTeamPageWidget.routePath,
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
          name: EEventPageWidget.routeName,
          path: EEventPageWidget.routePath,
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
          name: ETeamUsersListWidget.routeName,
          path: ETeamUsersListWidget.routePath,
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
          name: EMemberEntryPageWidget.routeName,
          path: EMemberEntryPageWidget.routePath,
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
          name: EUserRankPageWidget.routeName,
          path: EUserRankPageWidget.routePath,
          builder: (context, params) => EUserRankPageWidget(),
        ),
        FFRoute(
          name: ETeamRankPageWidget.routeName,
          path: ETeamRankPageWidget.routePath,
          builder: (context, params) => ETeamRankPageWidget(),
        ),
        FFRoute(
          name: MyBestsEUserRankPageWidget.routeName,
          path: MyBestsEUserRankPageWidget.routePath,
          builder: (context, params) => MyBestsEUserRankPageWidget(),
        ),
        FFRoute(
          name: AdminEUserRankPageWidget.routeName,
          path: AdminEUserRankPageWidget.routePath,
          builder: (context, params) => AdminEUserRankPageWidget(),
        ),
        FFRoute(
          name: AdminETeamRankPageWidget.routeName,
          path: AdminETeamRankPageWidget.routePath,
          builder: (context, params) => AdminETeamRankPageWidget(),
        ),
        FFRoute(
          name: MyBestsETeamRankPageWidget.routeName,
          path: MyBestsETeamRankPageWidget.routePath,
          builder: (context, params) => MyBestsETeamRankPageWidget(),
        ),
        FFRoute(
          name: BossEMemberEntryPageWidget.routeName,
          path: BossEMemberEntryPageWidget.routePath,
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
          name: DiscusionETeamPageWidget.routeName,
          path: DiscusionETeamPageWidget.routePath,
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
          name: ETeamEventsListWidget.routeName,
          path: ETeamEventsListWidget.routePath,
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
          name: ListMessagesBossEventWidget.routeName,
          path: ListMessagesBossEventWidget.routePath,
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
          name: AddPlayersEventPageWidget.routeName,
          path: AddPlayersEventPageWidget.routePath,
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
          name: ModifEndEEventPageWidget.routeName,
          path: ModifEndEEventPageWidget.routePath,
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
          name: TeamListForEventsWidget.routeName,
          path: TeamListForEventsWidget.routePath,
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
          name: BossNotifEEventPageIUDAdminWidget.routeName,
          path: BossNotifEEventPageIUDAdminWidget.routePath,
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
          name: ETeamEventsNoDateListWidget.routeName,
          path: ETeamEventsNoDateListWidget.routePath,
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
          name: PlayerNotifEEventStartPageWidget.routeName,
          path: PlayerNotifEEventStartPageWidget.routePath,
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
          name: BossNotifEEventEndPageWidget.routeName,
          path: BossNotifEEventEndPageWidget.routePath,
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
          name: SignalEEventPageWidget.routeName,
          path: SignalEEventPageWidget.routePath,
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
          name: AddDateForEEventWidget.routeName,
          path: AddDateForEEventWidget.routePath,
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
          name: EteamStatsWidget.routeName,
          path: EteamStatsWidget.routePath,
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
          name: LiguesRankPageWidget.routeName,
          path: LiguesRankPageWidget.routePath,
          builder: (context, params) => LiguesRankPageWidget(),
        ),
        FFRoute(
          name: TheSTeamPostPageWidget.routeName,
          path: TheSTeamPostPageWidget.routePath,
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
          name: ListSurveysNewsWidget.routeName,
          path: ListSurveysNewsWidget.routePath,
          builder: (context, params) => ListSurveysNewsWidget(
            teamRef: params.getParam(
              'teamRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['teams'],
            ),
          ),
        ),
        FFRoute(
          name: AddSurveyPageWidget.routeName,
          path: AddSurveyPageWidget.routePath,
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
          name: ListAdvicesWidget.routeName,
          path: ListAdvicesWidget.routePath,
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
          name: RatingPlayersPageWidget.routeName,
          path: RatingPlayersPageWidget.routePath,
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
          name: AddRatingPlayersPageWidget.routeName,
          path: AddRatingPlayersPageWidget.routePath,
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
          name: TeamListCupWidget.routeName,
          path: TeamListCupWidget.routePath,
          builder: (context, params) => TeamListCupWidget(),
        ),
        FFRoute(
          name: PublicStatsCompareWidget.routeName,
          path: PublicStatsCompareWidget.routePath,
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
          name: FullImagePageWidget.routeName,
          path: FullImagePageWidget.routePath,
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
        ),
        FFRoute(
          name: RefundPageWidget.routeName,
          path: RefundPageWidget.routePath,
          builder: (context, params) => RefundPageWidget(
            eventRef: params.getParam(
              'eventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
          ),
        ),
        FFRoute(
          name: MenuPagePubWidget.routeName,
          path: MenuPagePubWidget.routePath,
          builder: (context, params) => MenuPagePubWidget(),
        ),
        FFRoute(
          name: AddBetMecaPageWidget.routeName,
          path: AddBetMecaPageWidget.routePath,
          builder: (context, params) => AddBetMecaPageWidget(
            eventMecaRef: params.getParam(
              'eventMecaRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
          ),
        ),
        FFRoute(
          name: ModifRankPilotesWidget.routeName,
          path: ModifRankPilotesWidget.routePath,
          builder: (context, params) => ModifRankPilotesWidget(
            eventMecaRef: params.getParam(
              'eventMecaRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
          ),
        ),
        FFRoute(
          name: RankPageMyEnterpriseWidget.routeName,
          path: RankPageMyEnterpriseWidget.routePath,
          builder: (context, params) => RankPageMyEnterpriseWidget(),
        ),
        FFRoute(
          name: EventPageCompoWidget.routeName,
          path: EventPageCompoWidget.routePath,
          builder: (context, params) => EventPageCompoWidget(
            eventRef: params.getParam(
              'eventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
          ),
        ),
        FFRoute(
          name: LeaguEventsListWidget.routeName,
          path: LeaguEventsListWidget.routePath,
          builder: (context, params) => LeaguEventsListWidget(
            eventRef: params.getParam(
              'eventRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['events'],
            ),
          ),
        ),
        FFRoute(
          name: LeaguEventsListAdd2BetWidget.routeName,
          path: LeaguEventsListAdd2BetWidget.routePath,
          builder: (context, params) => LeaguEventsListAdd2BetWidget(
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
          name: LeaguEventsListAdd3BetWidget.routeName,
          path: LeaguEventsListAdd3BetWidget.routePath,
          builder: (context, params) => LeaguEventsListAdd3BetWidget(
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

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
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
