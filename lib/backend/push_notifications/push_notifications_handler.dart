import 'dart:async';

import 'serialization_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({super.key, required this.child});

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
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
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => const ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'AuthPage': ParameterData.none(),
  'MyBetPage': (data) async => ParameterData(
        allParams: {
          'myBetRef': getParameter<DocumentReference>(data, 'myBetRef'),
        },
      ),
  'MyBetsList': ParameterData.none(),
  'MyEditProfil': ParameterData.none(),
  'MyImagePage': ParameterData.none(),
  'MyNotifsList': ParameterData.none(),
  'MyPostsList': ParameterData.none(),
  'MyProfilStats': ParameterData.none(),
  'MyProfilPage': ParameterData.none(),
  'MyProfilSocial': ParameterData.none(),
  'MyTeamList': ParameterData.none(),
  'MenuPage': ParameterData.none(),
  'PublicBetsList': (data) async => ParameterData(
        allParams: {
          'userBetRef': getParameter<DocumentReference>(data, 'userBetRef'),
          'userRef': getParameter<DocumentReference>(data, 'userRef'),
        },
      ),
  'PublicStats': (data) async => ParameterData(
        allParams: {
          'userRef': getParameter<DocumentReference>(data, 'userRef'),
        },
      ),
  'PublicPostsList': (data) async => ParameterData(
        allParams: {
          'userPostRef': getParameter<DocumentReference>(data, 'userPostRef'),
        },
      ),
  'PublicProfilPage': (data) async => ParameterData(
        allParams: {
          'userRef': getParameter<DocumentReference>(data, 'userRef'),
        },
      ),
  'TheSTeamPage': ParameterData.none(),
  'MemberEntryPage': (data) async => ParameterData(
        allParams: {
          'teamRef': getParameter<DocumentReference>(data, 'teamRef'),
        },
      ),
  'TeamPage': (data) async => ParameterData(
        allParams: {
          'teamRef': getParameter<DocumentReference>(data, 'teamRef'),
        },
      ),
  'TeamList': ParameterData.none(),
  'PostMessagePage': (data) async => ParameterData(
        allParams: {
          'startedCommRef':
              getParameter<DocumentReference>(data, 'startedCommRef'),
        },
      ),
  'ListCommsPostComPage': (data) async => ParameterData(
        allParams: {
          'startedCommRef':
              getParameter<DocumentReference>(data, 'startedCommRef'),
        },
      ),
  'ListEventMessages': (data) async => ParameterData(
        allParams: {
          'eventRef': getParameter<DocumentReference>(data, 'eventRef'),
        },
      ),
  'ListPostMessages': (data) async => ParameterData(
        allParams: {
          'postRef': getParameter<DocumentReference>(data, 'postRef'),
        },
      ),
  'RedCardPostCommPage': (data) async => ParameterData(
        allParams: {
          'commRef': getParameter<DocumentReference>(data, 'commRef'),
        },
      ),
  'CartPage': (data) async => ParameterData(
        allParams: {
          'cartRef': getParameter<DocumentReference>(data, 'cartRef'),
          'eventRef': getParameter<DocumentReference>(data, 'eventRef'),
        },
      ),
  'EventPage': (data) async => ParameterData(
        allParams: {
          'eventRef': getParameter<DocumentReference>(data, 'eventRef'),
        },
      ),
  'ListEvents': ParameterData.none(),
  'TeamEventsList': (data) async => ParameterData(
        allParams: {
          'teamRef': getParameter<DocumentReference>(data, 'teamRef'),
        },
      ),
  'AddPostPage': (data) async => ParameterData(
        allParams: {
          'teamRef': getParameter<DocumentReference>(data, 'teamRef'),
        },
      ),
  'ListBestsPosts': ParameterData.none(),
  'ListPosts': ParameterData.none(),
  'ListPostsMyTeams': ParameterData.none(),
  'PostPage': (data) async => ParameterData(
        allParams: {
          'postRef': getParameter<DocumentReference>(data, 'postRef'),
        },
      ),
  'RedCardPostPage': (data) async => ParameterData(
        allParams: {
          'postRef': getParameter<DocumentReference>(data, 'postRef'),
        },
      ),
  'ListPostsTeam': (data) async => ParameterData(
        allParams: {
          'teamRef': getParameter<DocumentReference>(data, 'teamRef'),
        },
      ),
  'AddBetPage': (data) async => ParameterData(
        allParams: {
          'eventRef': getParameter<DocumentReference>(data, 'eventRef'),
        },
      ),
  'AddEventPage': ParameterData.none(),
  'ListEventsAdmin': ParameterData.none(),
  'ModifBetPage': (data) async => ParameterData(
        allParams: {
          'betRef': getParameter<DocumentReference>(data, 'betRef'),
        },
      ),
  'ModifEventPage': (data) async => ParameterData(
        allParams: {
          'eventRef': getParameter<DocumentReference>(data, 'eventRef'),
        },
      ),
  'AddTeamPage': ParameterData.none(),
  'AdminMemberEntryPage': (data) async => ParameterData(
        allParams: {
          'notifRef': getParameter<DocumentReference>(data, 'notifRef'),
        },
      ),
  'TeamUsersList': (data) async => ParameterData(
        allParams: {
          'teamRef': getParameter<DocumentReference>(data, 'teamRef'),
        },
      ),
  'AdminUsersList': ParameterData.none(),
  'ProfilPublicAdmin': (data) async => ParameterData(
        allParams: {
          'userRef': getParameter<DocumentReference>(data, 'userRef'),
        },
      ),
  'SignalPostPage': (data) async => ParameterData(
        allParams: {
          'notifRef': getParameter<DocumentReference>(data, 'notifRef'),
        },
      ),
  'AdminPage': ParameterData.none(),
  'ModeratorPage': ParameterData.none(),
  'AdminTeamsList': ParameterData.none(),
  'MyBestsRankPage': ParameterData.none(),
  'RankPage': ParameterData.none(),
  'ConfidentialityPage': ParameterData.none(),
  'GeneralsCondidtionsPage': ParameterData.none(),
  'InfosRankPage': ParameterData.none(),
  'ShoppingPage': ParameterData.none(),
  'ModifETeamPage': (data) async => ParameterData(
        allParams: {
          'teamRef': getParameter<DocumentReference>(data, 'teamRef'),
        },
      ),
  'ModTeamsList': ParameterData.none(),
  'ListEventsAdd2Bet': (data) async => ParameterData(
        allParams: {
          'myBetRef': getParameter<DocumentReference>(data, 'myBetRef'),
        },
      ),
  'EventPageAdd2Bet': (data) async => ParameterData(
        allParams: {
          'eventRef': getParameter<DocumentReference>(data, 'eventRef'),
          'myBetRef': getParameter<DocumentReference>(data, 'myBetRef'),
        },
      ),
  'CartPageAdd2Bet': (data) async => ParameterData(
        allParams: {
          'cartRef': getParameter<DocumentReference>(data, 'cartRef'),
          'myBetRef': getParameter<DocumentReference>(data, 'myBetRef'),
        },
      ),
  'PublicBetPage': (data) async => ParameterData(
        allParams: {
          'myBetRef': getParameter<DocumentReference>(data, 'myBetRef'),
          'userRef': getParameter<DocumentReference>(data, 'userRef'),
        },
      ),
  'ListCommsEventCommPage': (data) async => ParameterData(
        allParams: {
          'startedCommRef':
              getParameter<DocumentReference>(data, 'startedCommRef'),
        },
      ),
  'EventMessagePage': (data) async => ParameterData(
        allParams: {
          'startedCommRef':
              getParameter<DocumentReference>(data, 'startedCommRef'),
        },
      ),
  'RedCardEventCommPage': (data) async => ParameterData(
        allParams: {
          'commRef': getParameter<DocumentReference>(data, 'commRef'),
        },
      ),
  'SignalEventMessagePage': (data) async => ParameterData(
        allParams: {
          'notifRef': getParameter<DocumentReference>(data, 'notifRef'),
        },
      ),
  'ModNotifsList': ParameterData.none(),
  'AdminRankPage': ParameterData.none(),
  'SignalPostMessagePage': (data) async => ParameterData(
        allParams: {
          'notifRef': getParameter<DocumentReference>(data, 'notifRef'),
        },
      ),
  'CartPageAdd3Bet': (data) async => ParameterData(
        allParams: {
          'cartRef': getParameter<DocumentReference>(data, 'cartRef'),
          'myBetRef': getParameter<DocumentReference>(data, 'myBetRef'),
        },
      ),
  'ListEventsAdd3Bet': (data) async => ParameterData(
        allParams: {
          'myBetRef': getParameter<DocumentReference>(data, 'myBetRef'),
        },
      ),
  'EventPageAdd3Bet': (data) async => ParameterData(
        allParams: {
          'eventRef': getParameter<DocumentReference>(data, 'eventRef'),
          'myBetRef': getParameter<DocumentReference>(data, 'myBetRef'),
        },
      ),
  'ModTeamNotifsList': (data) async => ParameterData(
        allParams: {
          'teamRef': getParameter<DocumentReference>(data, 'teamRef'),
        },
      ),
  'RankTypstersPage': ParameterData.none(),
  'MyTeamsListEvents': ParameterData.none(),
  'SearchUsersList': (data) async => ParameterData(
        allParams: {
          'userRef': getParameter<DocumentReference>(data, 'userRef'),
        },
      ),
  'AdminStAppUsersList': ParameterData.none(),
  'AddETeamPageIUDAdmin': ParameterData.none(),
  'ModifTeamPage': (data) async => ParameterData(
        allParams: {
          'teamRef': getParameter<DocumentReference>(data, 'teamRef'),
        },
      ),
  'EEventPage': (data) async => ParameterData(
        allParams: {
          'eventRef': getParameter<DocumentReference>(data, 'eventRef'),
        },
      ),
  'ETeamUsersList': (data) async => ParameterData(
        allParams: {
          'teamRef': getParameter<DocumentReference>(data, 'teamRef'),
        },
      ),
  'EMemberEntryPage': (data) async => ParameterData(
        allParams: {
          'teamRef': getParameter<DocumentReference>(data, 'teamRef'),
        },
      ),
  'EUserRankPage': ParameterData.none(),
  'ETeamRankPage': ParameterData.none(),
  'MyBestsEUserRankPage': ParameterData.none(),
  'AdminEUserRankPage': ParameterData.none(),
  'AdminETeamRankPage': ParameterData.none(),
  'MyBestsETeamRankPage': ParameterData.none(),
  'BossEMemberEntryPage': (data) async => ParameterData(
        allParams: {
          'notifRef': getParameter<DocumentReference>(data, 'notifRef'),
          'eTeamRef': getParameter<DocumentReference>(data, 'eTeamRef'),
        },
      ),
  'DiscusionETeamPage': (data) async => ParameterData(
        allParams: {
          'eTeamRef': getParameter<DocumentReference>(data, 'eTeamRef'),
        },
      ),
  'ETeamEventsList': (data) async => ParameterData(
        allParams: {
          'teamRef': getParameter<DocumentReference>(data, 'teamRef'),
        },
      ),
  'ListMessagesBossEvent': (data) async => ParameterData(
        allParams: {
          'eventRef': getParameter<DocumentReference>(data, 'eventRef'),
          'eTeamRef': getParameter<DocumentReference>(data, 'eTeamRef'),
        },
      ),
  'AddPlayersEventPage': (data) async => ParameterData(
        allParams: {
          'eventRef': getParameter<DocumentReference>(data, 'eventRef'),
          'myETeamRef': getParameter<DocumentReference>(data, 'myETeamRef'),
        },
      ),
  'ModifEndEEventPage': (data) async => ParameterData(
        allParams: {
          'eventRef': getParameter<DocumentReference>(data, 'eventRef'),
          'myETeamRef': getParameter<DocumentReference>(data, 'myETeamRef'),
        },
      ),
  'TeamListForEvents': (data) async => ParameterData(
        allParams: {
          'eTeamRef': getParameter<DocumentReference>(data, 'eTeamRef'),
        },
      ),
  'BossNotifEEventPageIUDAdmin': (data) async => ParameterData(
        allParams: {
          'notifRef': getParameter<DocumentReference>(data, 'notifRef'),
          'eTeamRef': getParameter<DocumentReference>(data, 'eTeamRef'),
        },
      ),
  'ETeamEventsNoDateList': (data) async => ParameterData(
        allParams: {
          'teamRef': getParameter<DocumentReference>(data, 'teamRef'),
        },
      ),
  'PlayerNotifEEventStartPage': (data) async => ParameterData(
        allParams: {
          'notifRef': getParameter<DocumentReference>(data, 'notifRef'),
          'eEventRef': getParameter<DocumentReference>(data, 'eEventRef'),
        },
      ),
  'BossNotifEEventEndPage': (data) async => ParameterData(
        allParams: {
          'notifRef': getParameter<DocumentReference>(data, 'notifRef'),
          'eEventRef': getParameter<DocumentReference>(data, 'eEventRef'),
        },
      ),
  'SignalEEventPage': (data) async => ParameterData(
        allParams: {
          'notifRef': getParameter<DocumentReference>(data, 'notifRef'),
        },
      ),
  'AddDateForEEvent': (data) async => ParameterData(
        allParams: {
          'eventRef': getParameter<DocumentReference>(data, 'eventRef'),
          'eTeamRef': getParameter<DocumentReference>(data, 'eTeamRef'),
        },
      ),
  'EteamStats': (data) async => ParameterData(
        allParams: {
          'eTeamRef': getParameter<DocumentReference>(data, 'eTeamRef'),
        },
      ),
  'LiguesRankPage': ParameterData.none(),
  'TheSTeamPostPage': (data) async => ParameterData(
        allParams: {
          'postRef': getParameter<DocumentReference>(data, 'postRef'),
        },
      ),
  'ListSurveys': (data) async => ParameterData(
        allParams: {
          'teamRef': getParameter<DocumentReference>(data, 'teamRef'),
        },
      ),
  'AddSurveyPage': (data) async => ParameterData(
        allParams: {
          'teamRef': getParameter<DocumentReference>(data, 'teamRef'),
        },
      ),
  'ListAdvices': (data) async => ParameterData(
        allParams: {
          'teamRef': getParameter<DocumentReference>(data, 'teamRef'),
        },
      ),
  'AddAdvicePage': (data) async => ParameterData(
        allParams: {
          'teamRef': getParameter<DocumentReference>(data, 'teamRef'),
        },
      ),
  'RatingPlayersPage': (data) async => ParameterData(
        allParams: {
          'eventRef': getParameter<DocumentReference>(data, 'eventRef'),
          'notifRef': getParameter<DocumentReference>(data, 'notifRef'),
        },
      ),
  'AddRatingPlayersPage': (data) async => ParameterData(
        allParams: {
          'eventRef': getParameter<DocumentReference>(data, 'eventRef'),
        },
      ),
  'TeamListCup': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
