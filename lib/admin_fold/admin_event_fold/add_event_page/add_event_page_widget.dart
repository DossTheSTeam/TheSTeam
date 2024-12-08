import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'add_event_page_model.dart';
export 'add_event_page_model.dart';

class AddEventPageWidget extends StatefulWidget {
  const AddEventPageWidget({super.key});

  @override
  State<AddEventPageWidget> createState() => _AddEventPageWidgetState();
}

class _AddEventPageWidgetState extends State<AddEventPageWidget> {
  late AddEventPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddEventPageModel());

    _model.numWeekFieldTextController ??= TextEditingController();
    _model.numWeekFieldFocusNode ??= FocusNode();
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
          child: Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
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
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'MenuPage',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
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
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 30.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 30.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Créer une rencontre',
                            maxLines: 1,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                    FlutterFlowCalendar(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      iconColor: FlutterFlowTheme.of(context).primaryBackground,
                      weekFormat: true,
                      weekStartsMonday: true,
                      rowHeight: 40.0,
                      onChange: (DateTimeRange? newSelectedDate) {
                        safeSetState(
                            () => _model.calendarSelectedDay = newSelectedDate);
                      },
                      titleStyle:
                          FlutterFlowTheme.of(context).labelSmall.override(
                                fontFamily: 'Poppins',
                                letterSpacing: 0.0,
                              ),
                      dayOfWeekStyle:
                          FlutterFlowTheme.of(context).labelSmall.override(
                                fontFamily: 'Poppins',
                                letterSpacing: 0.0,
                              ),
                      dateStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Poppins',
                                letterSpacing: 0.0,
                              ),
                      selectedDateStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).success,
                                letterSpacing: 0.0,
                              ),
                      inactiveDateStyle:
                          FlutterFlowTheme.of(context).labelSmall.override(
                                fontFamily: 'Poppins',
                                letterSpacing: 0.0,
                              ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Heure',
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        Text(
                          'Minute',
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 160.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 2.0,
                            ),
                          ),
                          child: FlutterFlowCountController(
                            decrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.minus,
                              color: enabled
                                  ? FlutterFlowTheme.of(context).secondaryText
                                  : FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                            incrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.plus,
                              color: enabled
                                  ? FlutterFlowTheme.of(context).primaryText
                                  : FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                            countBuilder: (count) => Text(
                              count.toString(),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            count: _model.countHourValue ??= 19,
                            updateCount: (count) => safeSetState(
                                () => _model.countHourValue = count),
                            stepSize: 1,
                            minimum: 0,
                            maximum: 23,
                          ),
                        ),
                        Text(
                          'H',
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        Container(
                          width: 160.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 2.0,
                            ),
                          ),
                          child: FlutterFlowCountController(
                            decrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.minus,
                              color: enabled
                                  ? FlutterFlowTheme.of(context).secondaryText
                                  : FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                            incrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.plus,
                              color: enabled
                                  ? FlutterFlowTheme.of(context).primaryText
                                  : FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                            countBuilder: (count) => Text(
                              count.toString(),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            count: _model.countMinuteValue ??= 0,
                            updateCount: (count) => safeSetState(
                                () => _model.countMinuteValue = count),
                            stepSize: 5,
                            minimum: 0,
                            maximum: 55,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Text(
                              'Journée',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                30.0, 0.0, 0.0, 0.0),
                            child: Container(
                              width: 70.0,
                              height: 35.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: TextFormField(
                                    controller:
                                        _model.numWeekFieldTextController,
                                    focusNode: _model.numWeekFieldFocusNode,
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: '#',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    validator: _model
                                        .numWeekFieldTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Text(
                              '(facultatif)',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    if (valueOrDefault(currentUserDocument?.stsocialapp, '') ==
                        'administrateur')
                      AuthUserStreamWidget(
                        builder: (context) => Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 5.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropSportValueController ??=
                                            FormFieldController<String>(
                                      _model.dropSportValue ??= '',
                                    ),
                                    options: List<String>.from([
                                      'football',
                                      'basketball',
                                      'tennis',
                                      'sports.combat',
                                      'hockey'
                                    ]),
                                    optionLabels: const [
                                      'Football',
                                      'Basketball',
                                      'Tennis',
                                      'Sports combat',
                                      ''
                                    ],
                                    onChanged: (val) => safeSetState(
                                        () => _model.dropSportValue = val),
                                    width: 180.0,
                                    height: 40.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
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
                                    margin: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 5.0),
                                    child: FlutterFlowDropDown<String>(
                                      controller:
                                          _model.dropLigueValueController ??=
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
                                        'boxe',
                                        'mma',
                                        'glace.nhl',
                                        'gazon.elite.h',
                                        'gazon.elite.f',
                                        'salle.elite.h',
                                        'salle.elite.f'
                                      ]),
                                      optionLabels: const [
                                        'Premier League',
                                        'LaLiga',
                                        'Bundesliga',
                                        'Serie A',
                                        'Ligue 1',
                                        'Autres',
                                        'Pays Football',
                                        'NBA',
                                        'ATP',
                                        'WTA',
                                        'Champions League',
                                        'Europa League',
                                        'Conference League',
                                        'Boxe',
                                        'MMA',
                                        '',
                                        '',
                                        '',
                                        '',
                                        ''
                                      ],
                                      onChanged: (val) => safeSetState(
                                          () => _model.dropLigueValue = val),
                                      width: 180.0,
                                      height: 40.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
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
                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 5.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  StreamBuilder<List<TeamsRecord>>(
                                    stream: queryTeamsRecord(
                                      queryBuilder: (teamsRecord) =>
                                          teamsRecord.where(Filter.or(
                                        Filter(
                                          'league_value',
                                          isEqualTo: _model.dropLigueValue,
                                        ),
                                        Filter(
                                          'additional_league',
                                          isEqualTo: _model.dropLigueValue,
                                        ),
                                      )),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .accent4,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<TeamsRecord>
                                          dropTeamDomTeamsRecordList =
                                          snapshot.data!;

                                      return FlutterFlowDropDown<String>(
                                        controller: _model
                                                .dropTeamDomValueController ??=
                                            FormFieldController<String>(
                                          _model.dropTeamDomValue ??= '',
                                        ),
                                        options: List<String>.from(
                                            dropTeamDomTeamsRecordList
                                                .map((e) => e.value)
                                                .toList()),
                                        optionLabels: dropTeamDomTeamsRecordList
                                            .map((e) => e.name)
                                            .toList(),
                                        onChanged: (val) => safeSetState(() =>
                                            _model.dropTeamDomValue = val),
                                        width: 200.0,
                                        height: 40.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                        hintText: 'Teams',
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
                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: false,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      );
                                    },
                                  ),
                                  if (_model.dropTeamDomValue != null &&
                                      _model.dropTeamDomValue != '')
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: StreamBuilder<List<TeamsRecord>>(
                                        stream: queryTeamsRecord(
                                          queryBuilder: (teamsRecord) =>
                                              teamsRecord.where(
                                            'value',
                                            isEqualTo: _model.dropTeamDomValue,
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
                                                    FlutterFlowTheme.of(context)
                                                        .accent4,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<TeamsRecord>
                                              columnTeamDomRefTeamsRecordList =
                                              snapshot.data!;
                                          // Return an empty Container when the item does not exist.
                                          if (snapshot.data!.isEmpty) {
                                            return Container();
                                          }
                                          final columnTeamDomRefTeamsRecord =
                                              columnTeamDomRefTeamsRecordList
                                                      .isNotEmpty
                                                  ? columnTeamDomRefTeamsRecordList
                                                      .first
                                                  : null;

                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  columnTeamDomRefTeamsRecord
                                                      ?.name,
                                                  'teamdom',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 0.0, 0.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      var eventsRecordReference =
                                                          EventsRecord
                                                              .collection
                                                              .doc();
                                                      await eventsRecordReference
                                                          .set(
                                                              createEventsRecordData(
                                                        date: _model
                                                            .calendarSelectedDay
                                                            ?.start,
                                                        hour: _model
                                                            .countHourValue,
                                                        minute: _model
                                                            .countMinuteValue,
                                                        teamdom:
                                                            columnTeamDomRefTeamsRecord
                                                                ?.value,
                                                        draw: valueOrDefault<
                                                            String>(
                                                          'Match nul',
                                                          'draw',
                                                        ),
                                                        l2myes: valueOrDefault<
                                                            String>(
                                                          'Les 2 équipes marquent - Oui',
                                                          'l2myes',
                                                        ),
                                                        l2mno: valueOrDefault<
                                                            String>(
                                                          'Les 2 équipes marquent - Non',
                                                          'l2mno',
                                                        ),
                                                        adminUser:
                                                            currentUserReference,
                                                        statut: false,
                                                        sportValue: _model
                                                            .dropSportValue,
                                                        teamdomRef:
                                                            columnTeamDomRefTeamsRecord
                                                                ?.reference,
                                                        leagueValue: _model
                                                            .dropLigueValue,
                                                        week: _model
                                                            .numWeekFieldTextController
                                                            .text,
                                                        esport: false,
                                                      ));
                                                      _model.eventRef = EventsRecord
                                                          .getDocumentFromData(
                                                              createEventsRecordData(
                                                                date: _model
                                                                    .calendarSelectedDay
                                                                    ?.start,
                                                                hour: _model
                                                                    .countHourValue,
                                                                minute: _model
                                                                    .countMinuteValue,
                                                                teamdom:
                                                                    columnTeamDomRefTeamsRecord
                                                                        ?.value,
                                                                draw:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  'Match nul',
                                                                  'draw',
                                                                ),
                                                                l2myes:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  'Les 2 équipes marquent - Oui',
                                                                  'l2myes',
                                                                ),
                                                                l2mno:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  'Les 2 équipes marquent - Non',
                                                                  'l2mno',
                                                                ),
                                                                adminUser:
                                                                    currentUserReference,
                                                                statut: false,
                                                                sportValue: _model
                                                                    .dropSportValue,
                                                                teamdomRef:
                                                                    columnTeamDomRefTeamsRecord
                                                                        ?.reference,
                                                                leagueValue: _model
                                                                    .dropLigueValue,
                                                                week: _model
                                                                    .numWeekFieldTextController
                                                                    .text,
                                                                esport: false,
                                                              ),
                                                              eventsRecordReference);

                                                      await TeamEventsRecord
                                                              .createDoc(
                                                                  columnTeamDomRefTeamsRecord!
                                                                      .reference)
                                                          .set(
                                                              createTeamEventsRecordData(
                                                        startedTime: _model
                                                            .calendarSelectedDay
                                                            ?.start,
                                                        events: _model.eventRef
                                                            ?.reference,
                                                      ));

                                                      safeSetState(() {});
                                                    },
                                                    text: 'Valider Domicile',
                                                    options: FFButtonOptions(
                                                      width: 130.0,
                                                      height: 40.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40.0),
                                                      hoverColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .success,
                                                      hoverTextColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                StreamBuilder<List<TeamsRecord>>(
                                  stream: queryTeamsRecord(
                                    queryBuilder: (teamsRecord) =>
                                        teamsRecord.where(Filter.or(
                                      Filter(
                                        'league_value',
                                        isEqualTo: _model.dropLigueValue,
                                      ),
                                      Filter(
                                        'additional_league',
                                        isEqualTo: _model.dropLigueValue,
                                      ),
                                    )),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .accent4,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<TeamsRecord>
                                        dropTeamExtTeamsRecordList =
                                        snapshot.data!;

                                    return FlutterFlowDropDown<String>(
                                      controller:
                                          _model.dropTeamExtValueController ??=
                                              FormFieldController<String>(
                                        _model.dropTeamExtValue ??= '',
                                      ),
                                      options: List<String>.from(
                                          dropTeamExtTeamsRecordList
                                              .map((e) => e.value)
                                              .toList()),
                                      optionLabels: dropTeamExtTeamsRecordList
                                          .map((e) => e.name)
                                          .toList(),
                                      onChanged: (val) => safeSetState(
                                          () => _model.dropTeamExtValue = val),
                                      width: 200.0,
                                      height: 40.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'Teams',
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
                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    );
                                  },
                                ),
                                if (_model.dropTeamExtValue != null &&
                                    _model.dropTeamExtValue != '')
                                  StreamBuilder<List<TeamsRecord>>(
                                    stream: queryTeamsRecord(
                                      queryBuilder: (teamsRecord) =>
                                          teamsRecord.where(
                                        'value',
                                        isEqualTo: _model.dropTeamExtValue,
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
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .accent4,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<TeamsRecord>
                                          columnTeamExtRefTeamsRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final columnTeamExtRefTeamsRecord =
                                          columnTeamExtRefTeamsRecordList
                                                  .isNotEmpty
                                              ? columnTeamExtRefTeamsRecordList
                                                  .first
                                              : null;

                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              columnTeamExtRefTeamsRecord?.name,
                                              'teamext',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  await _model
                                                      .eventRef!.reference
                                                      .update(
                                                          createEventsRecordData(
                                                    teamextRef:
                                                        columnTeamExtRefTeamsRecord
                                                            ?.reference,
                                                    teamext:
                                                        _model.dropTeamExtValue,
                                                  ));

                                                  await TeamEventsRecord.createDoc(
                                                          columnTeamExtRefTeamsRecord!
                                                              .reference)
                                                      .set(
                                                          createTeamEventsRecordData(
                                                    startedTime: _model
                                                        .calendarSelectedDay
                                                        ?.start,
                                                    events: _model
                                                        .eventRef?.reference,
                                                  ));

                                                  context.pushNamed(
                                                    'AddBetPage',
                                                    queryParameters: {
                                                      'eventRef':
                                                          serializeParam(
                                                        _model.eventRef
                                                            ?.reference,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                text: 'Créer l\'évennement',
                                                options: FFButtonOptions(
                                                  width: 130.0,
                                                  height: 40.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  elevation: 3.0,
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40.0),
                                                  hoverColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .success,
                                                  hoverTextColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    if (valueOrDefault<bool>(
                            currentUserDocument?.adminSport, false) ==
                        true)
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 30.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          valueOrDefault(
                                              currentUserDocument
                                                  ?.adminSportvalue,
                                              ''),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (valueOrDefault(
                                                    currentUserDocument
                                                        ?.adminSportvalue,
                                                    '') ==
                                                'basketball')
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 5.0),
                                                child:
                                                    FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .dropLigueBasketValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropLigueBasketValue ??=
                                                        '',
                                                  ),
                                                  options: List<String>.from([
                                                    'nba',
                                                    'pays.basketball'
                                                  ]),
                                                  optionLabels: const [
                                                    'NBA',
                                                    'Pays Basketball'
                                                  ],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropLigueBasketValue =
                                                          val),
                                                  width: 180.0,
                                                  height: 40.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText: 'Ligues',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ),
                                            if (valueOrDefault(
                                                    currentUserDocument
                                                        ?.adminSportvalue,
                                                    '') ==
                                                'tennis')
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 5.0),
                                                child:
                                                    FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .dropLigueTennisValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropLigueTennisValue ??=
                                                        '',
                                                  ),
                                                  options: List<String>.from(
                                                      ['atp', 'wta']),
                                                  optionLabels: const ['ATP', 'WTA'],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropLigueTennisValue =
                                                          val),
                                                  width: 180.0,
                                                  height: 40.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText: 'Ligues',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ),
                                            if (valueOrDefault(
                                                    currentUserDocument
                                                        ?.adminSportvalue,
                                                    '') ==
                                                'sports.combat')
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 5.0),
                                                child:
                                                    FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .dropLigueFightValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropLigueFightValue ??=
                                                        '',
                                                  ),
                                                  options: List<String>.from(
                                                      ['boxe', 'mma']),
                                                  optionLabels: const ['Boxe', 'MMA'],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropLigueFightValue =
                                                          val),
                                                  width: 180.0,
                                                  height: 40.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText: 'Ligues',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ),
                                            if (valueOrDefault(
                                                    currentUserDocument
                                                        ?.adminSportvalue,
                                                    '') ==
                                                'hockey')
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 5.0),
                                                child:
                                                    FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .dropLigueHockeyValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropLigueHockeyValue ??=
                                                        '',
                                                  ),
                                                  options: List<String>.from([
                                                    'glace.nhl',
                                                    'gazon.elite.h',
                                                    'gazon.elite.f',
                                                    'salle.elite.h',
                                                    'salle.elite.f'
                                                  ]),
                                                  optionLabels: const [
                                                    'Glace NHL',
                                                    'Gazon Elite H',
                                                    'Gazon Elite F',
                                                    'Salle Elite H',
                                                    'Salle Elite F'
                                                  ],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropLigueHockeyValue =
                                                          val),
                                                  width: 180.0,
                                                  height: 40.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText: 'Ligues',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
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
                                ],
                              ),
                              Divider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (_model.dropLigueBasketValue != null &&
                                      _model.dropLigueBasketValue != '')
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 8.0),
                                            child: StreamBuilder<
                                                List<TeamsRecord>>(
                                              stream: queryTeamsRecord(
                                                queryBuilder: (teamsRecord) =>
                                                    teamsRecord.where(
                                                  'league_value',
                                                  isEqualTo: _model
                                                      .dropLigueBasketValue,
                                                ),
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
                                                List<TeamsRecord>
                                                    dropTeamDomBasketTeamsRecordList =
                                                    snapshot.data!;

                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .dropTeamDomBasketValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropTeamDomBasketValue ??=
                                                        '',
                                                  ),
                                                  options: List<String>.from(
                                                      dropTeamDomBasketTeamsRecordList
                                                          .map((e) => e.value)
                                                          .toList()),
                                                  optionLabels:
                                                      dropTeamDomBasketTeamsRecordList
                                                          .map((e) => e.name)
                                                          .toList(),
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropTeamDomBasketValue =
                                                          val),
                                                  width: 200.0,
                                                  height: 40.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText: 'Teams',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                          ),
                                          StreamBuilder<List<TeamsRecord>>(
                                            stream: queryTeamsRecord(
                                              queryBuilder: (teamsRecord) =>
                                                  teamsRecord.where(
                                                'value',
                                                isEqualTo: _model
                                                    .dropTeamDomBasketValue,
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
                                              List<TeamsRecord>
                                                  columnTeamsRecordList =
                                                  snapshot.data!;
                                              // Return an empty Container when the item does not exist.
                                              if (snapshot.data!.isEmpty) {
                                                return Container();
                                              }
                                              final columnTeamsRecord =
                                                  columnTeamsRecordList
                                                          .isNotEmpty
                                                      ? columnTeamsRecordList
                                                          .first
                                                      : null;

                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      columnTeamsRecord?.name,
                                                      'teamdom',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  5.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          var eventsRecordReference =
                                                              EventsRecord
                                                                  .collection
                                                                  .doc();
                                                          await eventsRecordReference
                                                              .set(
                                                                  createEventsRecordData(
                                                            date: _model
                                                                .calendarSelectedDay
                                                                ?.start,
                                                            hour: _model
                                                                .countHourValue,
                                                            minute: _model
                                                                .countMinuteValue,
                                                            teamdom:
                                                                columnTeamsRecord
                                                                    ?.value,
                                                            draw:
                                                                valueOrDefault<
                                                                    String>(
                                                              'Match nul',
                                                              'draw',
                                                            ),
                                                            l2myes:
                                                                valueOrDefault<
                                                                    String>(
                                                              'Les 2 équipes marquent - Oui',
                                                              'l2myes',
                                                            ),
                                                            l2mno:
                                                                valueOrDefault<
                                                                    String>(
                                                              'Les 2 équipes marquent - Non',
                                                              'l2mno',
                                                            ),
                                                            adminUser:
                                                                currentUserReference,
                                                            statut: false,
                                                            sportValue:
                                                                'basketball',
                                                            teamdomRef:
                                                                columnTeamsRecord
                                                                    ?.reference,
                                                            leagueValue: _model
                                                                .dropLigueBasketValue,
                                                            week: _model
                                                                .numWeekFieldTextController
                                                                .text,
                                                            esport: false,
                                                          ));
                                                          _model.eventBasketRef =
                                                              EventsRecord
                                                                  .getDocumentFromData(
                                                                      createEventsRecordData(
                                                                        date: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                        hour: _model
                                                                            .countHourValue,
                                                                        minute:
                                                                            _model.countMinuteValue,
                                                                        teamdom:
                                                                            columnTeamsRecord?.value,
                                                                        draw: valueOrDefault<
                                                                            String>(
                                                                          'Match nul',
                                                                          'draw',
                                                                        ),
                                                                        l2myes:
                                                                            valueOrDefault<String>(
                                                                          'Les 2 équipes marquent - Oui',
                                                                          'l2myes',
                                                                        ),
                                                                        l2mno: valueOrDefault<
                                                                            String>(
                                                                          'Les 2 équipes marquent - Non',
                                                                          'l2mno',
                                                                        ),
                                                                        adminUser:
                                                                            currentUserReference,
                                                                        statut:
                                                                            false,
                                                                        sportValue:
                                                                            'basketball',
                                                                        teamdomRef:
                                                                            columnTeamsRecord?.reference,
                                                                        leagueValue:
                                                                            _model.dropLigueBasketValue,
                                                                        week: _model
                                                                            .numWeekFieldTextController
                                                                            .text,
                                                                        esport:
                                                                            false,
                                                                      ),
                                                                      eventsRecordReference);

                                                          await TeamEventsRecord
                                                                  .createDoc(
                                                                      columnTeamsRecord!
                                                                          .reference)
                                                              .set(
                                                                  createTeamEventsRecordData(
                                                            startedTime: _model
                                                                .calendarSelectedDay
                                                                ?.start,
                                                            events: _model
                                                                .eventBasketRef
                                                                ?.reference,
                                                          ));

                                                          safeSetState(() {});
                                                        },
                                                        text:
                                                            'Valider Domicile',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 130.0,
                                                          height: 40.0,
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          iconPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          elevation: 3.0,
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      40.0),
                                                          hoverColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .success,
                                                          hoverTextColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryBackground,
                                                        ),
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
                                  if (_model.dropLigueTennisValue != null &&
                                      _model.dropLigueTennisValue != '')
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 8.0),
                                            child: StreamBuilder<
                                                List<TeamsRecord>>(
                                              stream: queryTeamsRecord(
                                                queryBuilder: (teamsRecord) =>
                                                    teamsRecord.where(
                                                  'league_value',
                                                  isEqualTo: _model
                                                      .dropLigueTennisValue,
                                                ),
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
                                                List<TeamsRecord>
                                                    dropTeamDomTennisTeamsRecordList =
                                                    snapshot.data!;

                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .dropTeamDomTennisValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropTeamDomTennisValue ??=
                                                        '',
                                                  ),
                                                  options: List<String>.from(
                                                      dropTeamDomTennisTeamsRecordList
                                                          .map((e) => e.value)
                                                          .toList()),
                                                  optionLabels:
                                                      dropTeamDomTennisTeamsRecordList
                                                          .map((e) => e.name)
                                                          .toList(),
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropTeamDomTennisValue =
                                                          val),
                                                  width: 200.0,
                                                  height: 40.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText: 'Teams',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                          ),
                                          StreamBuilder<List<TeamsRecord>>(
                                            stream: queryTeamsRecord(
                                              queryBuilder: (teamsRecord) =>
                                                  teamsRecord.where(
                                                'value',
                                                isEqualTo: _model
                                                    .dropTeamDomTennisValue,
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
                                              List<TeamsRecord>
                                                  columnTeamsRecordList =
                                                  snapshot.data!;
                                              // Return an empty Container when the item does not exist.
                                              if (snapshot.data!.isEmpty) {
                                                return Container();
                                              }
                                              final columnTeamsRecord =
                                                  columnTeamsRecordList
                                                          .isNotEmpty
                                                      ? columnTeamsRecordList
                                                          .first
                                                      : null;

                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      columnTeamsRecord?.name,
                                                      'teamdom',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  5.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          var eventsRecordReference =
                                                              EventsRecord
                                                                  .collection
                                                                  .doc();
                                                          await eventsRecordReference
                                                              .set(
                                                                  createEventsRecordData(
                                                            date: _model
                                                                .calendarSelectedDay
                                                                ?.start,
                                                            hour: _model
                                                                .countHourValue,
                                                            minute: _model
                                                                .countMinuteValue,
                                                            teamdom:
                                                                columnTeamsRecord
                                                                    ?.value,
                                                            draw:
                                                                valueOrDefault<
                                                                    String>(
                                                              'Match nul',
                                                              'draw',
                                                            ),
                                                            l2myes:
                                                                valueOrDefault<
                                                                    String>(
                                                              'Les 2 équipes marquent - Oui',
                                                              'l2myes',
                                                            ),
                                                            l2mno:
                                                                valueOrDefault<
                                                                    String>(
                                                              'Les 2 équipes marquent - Non',
                                                              'l2mno',
                                                            ),
                                                            adminUser:
                                                                currentUserReference,
                                                            statut: false,
                                                            sportValue:
                                                                'tennis',
                                                            teamdomRef:
                                                                columnTeamsRecord
                                                                    ?.reference,
                                                            leagueValue: _model
                                                                .dropLigueTennisValue,
                                                            week: _model
                                                                .numWeekFieldTextController
                                                                .text,
                                                            esport: false,
                                                          ));
                                                          _model.eventTennisRef =
                                                              EventsRecord
                                                                  .getDocumentFromData(
                                                                      createEventsRecordData(
                                                                        date: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                        hour: _model
                                                                            .countHourValue,
                                                                        minute:
                                                                            _model.countMinuteValue,
                                                                        teamdom:
                                                                            columnTeamsRecord?.value,
                                                                        draw: valueOrDefault<
                                                                            String>(
                                                                          'Match nul',
                                                                          'draw',
                                                                        ),
                                                                        l2myes:
                                                                            valueOrDefault<String>(
                                                                          'Les 2 équipes marquent - Oui',
                                                                          'l2myes',
                                                                        ),
                                                                        l2mno: valueOrDefault<
                                                                            String>(
                                                                          'Les 2 équipes marquent - Non',
                                                                          'l2mno',
                                                                        ),
                                                                        adminUser:
                                                                            currentUserReference,
                                                                        statut:
                                                                            false,
                                                                        sportValue:
                                                                            'tennis',
                                                                        teamdomRef:
                                                                            columnTeamsRecord?.reference,
                                                                        leagueValue:
                                                                            _model.dropLigueTennisValue,
                                                                        week: _model
                                                                            .numWeekFieldTextController
                                                                            .text,
                                                                        esport:
                                                                            false,
                                                                      ),
                                                                      eventsRecordReference);

                                                          await TeamEventsRecord
                                                                  .createDoc(
                                                                      columnTeamsRecord!
                                                                          .reference)
                                                              .set(
                                                                  createTeamEventsRecordData(
                                                            startedTime: _model
                                                                .calendarSelectedDay
                                                                ?.start,
                                                            events: _model
                                                                .eventTennisRef
                                                                ?.reference,
                                                          ));

                                                          safeSetState(() {});
                                                        },
                                                        text:
                                                            'Valider Domicile',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 130.0,
                                                          height: 40.0,
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          iconPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          elevation: 3.0,
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      40.0),
                                                          hoverColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .success,
                                                          hoverTextColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryBackground,
                                                        ),
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
                                  if (_model.dropLigueFightValue != null &&
                                      _model.dropLigueFightValue != '')
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 8.0),
                                            child: StreamBuilder<
                                                List<TeamsRecord>>(
                                              stream: queryTeamsRecord(
                                                queryBuilder: (teamsRecord) =>
                                                    teamsRecord.where(
                                                  'league_value',
                                                  isEqualTo: _model
                                                      .dropLigueFightValue,
                                                ),
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
                                                List<TeamsRecord>
                                                    dropTeamDomFightTeamsRecordList =
                                                    snapshot.data!;

                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .dropTeamDomFightValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropTeamDomFightValue ??=
                                                        '',
                                                  ),
                                                  options: List<String>.from(
                                                      dropTeamDomFightTeamsRecordList
                                                          .map((e) => e.value)
                                                          .toList()),
                                                  optionLabels:
                                                      dropTeamDomFightTeamsRecordList
                                                          .map((e) => e.name)
                                                          .toList(),
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropTeamDomFightValue =
                                                          val),
                                                  width: 200.0,
                                                  height: 40.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText: 'Teams',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                          ),
                                          StreamBuilder<List<TeamsRecord>>(
                                            stream: queryTeamsRecord(
                                              queryBuilder: (teamsRecord) =>
                                                  teamsRecord.where(
                                                'value',
                                                isEqualTo: _model
                                                    .dropTeamDomFightValue,
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
                                              List<TeamsRecord>
                                                  columnTeamsRecordList =
                                                  snapshot.data!;
                                              // Return an empty Container when the item does not exist.
                                              if (snapshot.data!.isEmpty) {
                                                return Container();
                                              }
                                              final columnTeamsRecord =
                                                  columnTeamsRecordList
                                                          .isNotEmpty
                                                      ? columnTeamsRecordList
                                                          .first
                                                      : null;

                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      columnTeamsRecord?.name,
                                                      'teamdom',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  5.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          var eventsRecordReference =
                                                              EventsRecord
                                                                  .collection
                                                                  .doc();
                                                          await eventsRecordReference
                                                              .set(
                                                                  createEventsRecordData(
                                                            date: _model
                                                                .calendarSelectedDay
                                                                ?.start,
                                                            hour: _model
                                                                .countHourValue,
                                                            minute: _model
                                                                .countMinuteValue,
                                                            teamdom:
                                                                columnTeamsRecord
                                                                    ?.value,
                                                            draw:
                                                                valueOrDefault<
                                                                    String>(
                                                              'Match nul',
                                                              'draw',
                                                            ),
                                                            l2myes:
                                                                valueOrDefault<
                                                                    String>(
                                                              'Les 2 équipes marquent - Oui',
                                                              'l2myes',
                                                            ),
                                                            l2mno:
                                                                valueOrDefault<
                                                                    String>(
                                                              'Les 2 équipes marquent - Non',
                                                              'l2mno',
                                                            ),
                                                            adminUser:
                                                                currentUserReference,
                                                            statut: false,
                                                            sportValue:
                                                                'sports.combat',
                                                            teamdomRef:
                                                                columnTeamsRecord
                                                                    ?.reference,
                                                            leagueValue: _model
                                                                .dropLigueFightValue,
                                                            week: _model
                                                                .numWeekFieldTextController
                                                                .text,
                                                            esport: false,
                                                          ));
                                                          _model.eventFightRef =
                                                              EventsRecord
                                                                  .getDocumentFromData(
                                                                      createEventsRecordData(
                                                                        date: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                        hour: _model
                                                                            .countHourValue,
                                                                        minute:
                                                                            _model.countMinuteValue,
                                                                        teamdom:
                                                                            columnTeamsRecord?.value,
                                                                        draw: valueOrDefault<
                                                                            String>(
                                                                          'Match nul',
                                                                          'draw',
                                                                        ),
                                                                        l2myes:
                                                                            valueOrDefault<String>(
                                                                          'Les 2 équipes marquent - Oui',
                                                                          'l2myes',
                                                                        ),
                                                                        l2mno: valueOrDefault<
                                                                            String>(
                                                                          'Les 2 équipes marquent - Non',
                                                                          'l2mno',
                                                                        ),
                                                                        adminUser:
                                                                            currentUserReference,
                                                                        statut:
                                                                            false,
                                                                        sportValue:
                                                                            'sports.combat',
                                                                        teamdomRef:
                                                                            columnTeamsRecord?.reference,
                                                                        leagueValue:
                                                                            _model.dropLigueFightValue,
                                                                        week: _model
                                                                            .numWeekFieldTextController
                                                                            .text,
                                                                        esport:
                                                                            false,
                                                                      ),
                                                                      eventsRecordReference);

                                                          await TeamEventsRecord
                                                                  .createDoc(
                                                                      columnTeamsRecord!
                                                                          .reference)
                                                              .set(
                                                                  createTeamEventsRecordData(
                                                            startedTime: _model
                                                                .calendarSelectedDay
                                                                ?.start,
                                                            events: _model
                                                                .eventFightRef
                                                                ?.reference,
                                                          ));

                                                          safeSetState(() {});
                                                        },
                                                        text:
                                                            'Valider Domicile',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 130.0,
                                                          height: 40.0,
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          iconPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          elevation: 3.0,
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      40.0),
                                                          hoverColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .success,
                                                          hoverTextColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryBackground,
                                                        ),
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
                                  if (_model.dropLigueHockeyValue != null &&
                                      _model.dropLigueHockeyValue != '')
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 8.0),
                                            child: StreamBuilder<
                                                List<TeamsRecord>>(
                                              stream: queryTeamsRecord(
                                                queryBuilder: (teamsRecord) =>
                                                    teamsRecord.where(
                                                  'league_value',
                                                  isEqualTo: _model
                                                      .dropLigueHockeyValue,
                                                ),
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
                                                List<TeamsRecord>
                                                    dropTeamDomHockeyTeamsRecordList =
                                                    snapshot.data!;

                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .dropTeamDomHockeyValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropTeamDomHockeyValue ??=
                                                        '',
                                                  ),
                                                  options: List<String>.from(
                                                      dropTeamDomHockeyTeamsRecordList
                                                          .map((e) => e.value)
                                                          .toList()),
                                                  optionLabels:
                                                      dropTeamDomHockeyTeamsRecordList
                                                          .map((e) => e.name)
                                                          .toList(),
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropTeamDomHockeyValue =
                                                          val),
                                                  width: 200.0,
                                                  height: 40.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText: 'Teams',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                          ),
                                          StreamBuilder<List<TeamsRecord>>(
                                            stream: queryTeamsRecord(
                                              queryBuilder: (teamsRecord) =>
                                                  teamsRecord.where(
                                                'value',
                                                isEqualTo: _model
                                                    .dropTeamDomHockeyValue,
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
                                              List<TeamsRecord>
                                                  columnTeamsRecordList =
                                                  snapshot.data!;
                                              // Return an empty Container when the item does not exist.
                                              if (snapshot.data!.isEmpty) {
                                                return Container();
                                              }
                                              final columnTeamsRecord =
                                                  columnTeamsRecordList
                                                          .isNotEmpty
                                                      ? columnTeamsRecordList
                                                          .first
                                                      : null;

                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      columnTeamsRecord?.name,
                                                      'teamdom',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  5.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          var eventsRecordReference =
                                                              EventsRecord
                                                                  .collection
                                                                  .doc();
                                                          await eventsRecordReference
                                                              .set(
                                                                  createEventsRecordData(
                                                            date: _model
                                                                .calendarSelectedDay
                                                                ?.start,
                                                            hour: _model
                                                                .countHourValue,
                                                            minute: _model
                                                                .countMinuteValue,
                                                            teamdom:
                                                                columnTeamsRecord
                                                                    ?.value,
                                                            draw:
                                                                valueOrDefault<
                                                                    String>(
                                                              'Match nul',
                                                              'draw',
                                                            ),
                                                            l2myes:
                                                                valueOrDefault<
                                                                    String>(
                                                              'Les 2 équipes marquent - Oui',
                                                              'l2myes',
                                                            ),
                                                            l2mno:
                                                                valueOrDefault<
                                                                    String>(
                                                              'Les 2 équipes marquent - Non',
                                                              'l2mno',
                                                            ),
                                                            adminUser:
                                                                currentUserReference,
                                                            statut: false,
                                                            sportValue:
                                                                'hockey',
                                                            teamdomRef:
                                                                columnTeamsRecord
                                                                    ?.reference,
                                                            leagueValue: _model
                                                                .dropTeamDomHockeyValue,
                                                            week: _model
                                                                .numWeekFieldTextController
                                                                .text,
                                                            esport: false,
                                                          ));
                                                          _model.eventHockeyRef =
                                                              EventsRecord
                                                                  .getDocumentFromData(
                                                                      createEventsRecordData(
                                                                        date: _model
                                                                            .calendarSelectedDay
                                                                            ?.start,
                                                                        hour: _model
                                                                            .countHourValue,
                                                                        minute:
                                                                            _model.countMinuteValue,
                                                                        teamdom:
                                                                            columnTeamsRecord?.value,
                                                                        draw: valueOrDefault<
                                                                            String>(
                                                                          'Match nul',
                                                                          'draw',
                                                                        ),
                                                                        l2myes:
                                                                            valueOrDefault<String>(
                                                                          'Les 2 équipes marquent - Oui',
                                                                          'l2myes',
                                                                        ),
                                                                        l2mno: valueOrDefault<
                                                                            String>(
                                                                          'Les 2 équipes marquent - Non',
                                                                          'l2mno',
                                                                        ),
                                                                        adminUser:
                                                                            currentUserReference,
                                                                        statut:
                                                                            false,
                                                                        sportValue:
                                                                            'hockey',
                                                                        teamdomRef:
                                                                            columnTeamsRecord?.reference,
                                                                        leagueValue:
                                                                            _model.dropTeamDomHockeyValue,
                                                                        week: _model
                                                                            .numWeekFieldTextController
                                                                            .text,
                                                                        esport:
                                                                            false,
                                                                      ),
                                                                      eventsRecordReference);

                                                          await TeamEventsRecord
                                                                  .createDoc(
                                                                      columnTeamsRecord!
                                                                          .reference)
                                                              .set(
                                                                  createTeamEventsRecordData(
                                                            startedTime: _model
                                                                .calendarSelectedDay
                                                                ?.start,
                                                            events: _model
                                                                .eventHockeyRef
                                                                ?.reference,
                                                          ));

                                                          safeSetState(() {});
                                                        },
                                                        text:
                                                            'Valider Domicile',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 130.0,
                                                          height: 40.0,
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          iconPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          elevation: 3.0,
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      40.0),
                                                          hoverColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .success,
                                                          hoverTextColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryBackground,
                                                        ),
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
                                ],
                              ),
                              Divider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (_model.dropLigueBasketValue != null &&
                                      _model.dropLigueBasketValue != '')
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          StreamBuilder<List<TeamsRecord>>(
                                            stream: queryTeamsRecord(
                                              queryBuilder: (teamsRecord) =>
                                                  teamsRecord.where(
                                                'league_value',
                                                isEqualTo:
                                                    _model.dropLigueBasketValue,
                                              ),
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
                                              List<TeamsRecord>
                                                  dropTeamExtBasketTeamsRecordList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .dropTeamExtBasketValueController ??=
                                                    FormFieldController<String>(
                                                  _model.dropTeamExtBasketValue ??=
                                                      '',
                                                ),
                                                options: List<String>.from(
                                                    dropTeamExtBasketTeamsRecordList
                                                        .map((e) => e.value)
                                                        .toList()),
                                                optionLabels:
                                                    dropTeamExtBasketTeamsRecordList
                                                        .map((e) => e.name)
                                                        .toList(),
                                                onChanged: (val) =>
                                                    safeSetState(() => _model
                                                            .dropTeamExtBasketValue =
                                                        val),
                                                width: 200.0,
                                                height: 40.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Teams',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                          if (_model.dropTeamExtBasketValue !=
                                                  null &&
                                              _model.dropTeamExtBasketValue !=
                                                  '')
                                            StreamBuilder<List<TeamsRecord>>(
                                              stream: queryTeamsRecord(
                                                queryBuilder: (teamsRecord) =>
                                                    teamsRecord.where(
                                                  'value',
                                                  isEqualTo: _model
                                                      .dropTeamExtBasketValue,
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
                                                List<TeamsRecord>
                                                    columnTeamExtRefTeamsRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final columnTeamExtRefTeamsRecord =
                                                    columnTeamExtRefTeamsRecordList
                                                            .isNotEmpty
                                                        ? columnTeamExtRefTeamsRecordList
                                                            .first
                                                        : null;

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            columnTeamExtRefTeamsRecord
                                                                ?.name,
                                                            'teamext',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                await _model
                                                                    .eventBasketRef!
                                                                    .reference
                                                                    .update(
                                                                        createEventsRecordData(
                                                                  teamextRef:
                                                                      columnTeamExtRefTeamsRecord
                                                                          ?.reference,
                                                                  teamext:
                                                                      columnTeamExtRefTeamsRecord
                                                                          ?.value,
                                                                ));

                                                                await TeamEventsRecord.createDoc(
                                                                        columnTeamExtRefTeamsRecord!
                                                                            .reference)
                                                                    .set(
                                                                        createTeamEventsRecordData(
                                                                  startedTime: _model
                                                                      .calendarSelectedDay
                                                                      ?.start,
                                                                  events: _model
                                                                      .eventBasketRef
                                                                      ?.reference,
                                                                ));

                                                                context
                                                                    .pushNamed(
                                                                  'AddBetPage',
                                                                  queryParameters:
                                                                      {
                                                                    'eventRef':
                                                                        serializeParam(
                                                                      _model
                                                                          .eventBasketRef
                                                                          ?.reference,
                                                                      ParamType
                                                                          .DocumentReference,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              text:
                                                                  'Créer l\'évennement',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 130.0,
                                                                height: 40.0,
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                iconPadding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            40.0),
                                                                hoverColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .success,
                                                                hoverTextColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                              ),
                                                            ),
                                                          ),
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
                                  if (_model.dropLigueTennisValue != null &&
                                      _model.dropLigueTennisValue != '')
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          StreamBuilder<List<TeamsRecord>>(
                                            stream: queryTeamsRecord(
                                              queryBuilder: (teamsRecord) =>
                                                  teamsRecord.where(
                                                'league_value',
                                                isEqualTo:
                                                    _model.dropLigueTennisValue,
                                              ),
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
                                              List<TeamsRecord>
                                                  dropTeamExtTennisTeamsRecordList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .dropTeamExtTennisValueController ??=
                                                    FormFieldController<String>(
                                                  _model.dropTeamExtTennisValue ??=
                                                      '',
                                                ),
                                                options: List<String>.from(
                                                    dropTeamExtTennisTeamsRecordList
                                                        .map((e) => e.value)
                                                        .toList()),
                                                optionLabels:
                                                    dropTeamExtTennisTeamsRecordList
                                                        .map((e) => e.name)
                                                        .toList(),
                                                onChanged: (val) =>
                                                    safeSetState(() => _model
                                                            .dropTeamExtTennisValue =
                                                        val),
                                                width: 200.0,
                                                height: 40.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Teams',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                          if (_model.dropTeamExtTennisValue !=
                                                  null &&
                                              _model.dropTeamExtTennisValue !=
                                                  '')
                                            StreamBuilder<List<TeamsRecord>>(
                                              stream: queryTeamsRecord(
                                                queryBuilder: (teamsRecord) =>
                                                    teamsRecord.where(
                                                  'value',
                                                  isEqualTo: _model
                                                      .dropTeamExtTennisValue,
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
                                                List<TeamsRecord>
                                                    columnTeamExtRefTeamsRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final columnTeamExtRefTeamsRecord =
                                                    columnTeamExtRefTeamsRecordList
                                                            .isNotEmpty
                                                        ? columnTeamExtRefTeamsRecordList
                                                            .first
                                                        : null;

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            columnTeamExtRefTeamsRecord
                                                                ?.name,
                                                            'teamext',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                await _model
                                                                    .eventTennisRef!
                                                                    .reference
                                                                    .update(
                                                                        createEventsRecordData(
                                                                  teamextRef:
                                                                      columnTeamExtRefTeamsRecord
                                                                          ?.reference,
                                                                  teamext:
                                                                      columnTeamExtRefTeamsRecord
                                                                          ?.value,
                                                                ));

                                                                await TeamEventsRecord.createDoc(
                                                                        columnTeamExtRefTeamsRecord!
                                                                            .reference)
                                                                    .set(
                                                                        createTeamEventsRecordData(
                                                                  startedTime: _model
                                                                      .calendarSelectedDay
                                                                      ?.start,
                                                                  events: _model
                                                                      .eventTennisRef
                                                                      ?.reference,
                                                                ));

                                                                context
                                                                    .pushNamed(
                                                                  'AddBetPage',
                                                                  queryParameters:
                                                                      {
                                                                    'eventRef':
                                                                        serializeParam(
                                                                      _model
                                                                          .eventTennisRef
                                                                          ?.reference,
                                                                      ParamType
                                                                          .DocumentReference,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              text:
                                                                  'Créer l\'évennement',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 130.0,
                                                                height: 40.0,
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                iconPadding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            40.0),
                                                                hoverColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .success,
                                                                hoverTextColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                              ),
                                                            ),
                                                          ),
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
                                  if (_model.dropLigueFightValue != null &&
                                      _model.dropLigueFightValue != '')
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          StreamBuilder<List<TeamsRecord>>(
                                            stream: queryTeamsRecord(
                                              queryBuilder: (teamsRecord) =>
                                                  teamsRecord.where(
                                                'league_value',
                                                isEqualTo:
                                                    _model.dropLigueFightValue,
                                              ),
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
                                              List<TeamsRecord>
                                                  dropTeamExtFightTeamsRecordList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .dropTeamExtFightValueController ??=
                                                    FormFieldController<String>(
                                                  _model.dropTeamExtFightValue ??=
                                                      '',
                                                ),
                                                options: List<String>.from(
                                                    dropTeamExtFightTeamsRecordList
                                                        .map((e) => e.value)
                                                        .toList()),
                                                optionLabels:
                                                    dropTeamExtFightTeamsRecordList
                                                        .map((e) => e.name)
                                                        .toList(),
                                                onChanged: (val) =>
                                                    safeSetState(() => _model
                                                            .dropTeamExtFightValue =
                                                        val),
                                                width: 200.0,
                                                height: 40.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Teams',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                          if (_model.dropTeamExtFightValue !=
                                                  null &&
                                              _model.dropTeamExtFightValue !=
                                                  '')
                                            StreamBuilder<List<TeamsRecord>>(
                                              stream: queryTeamsRecord(
                                                queryBuilder: (teamsRecord) =>
                                                    teamsRecord.where(
                                                  'value',
                                                  isEqualTo: _model
                                                      .dropTeamExtFightValue,
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
                                                List<TeamsRecord>
                                                    columnTeamExtRefTeamsRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final columnTeamExtRefTeamsRecord =
                                                    columnTeamExtRefTeamsRecordList
                                                            .isNotEmpty
                                                        ? columnTeamExtRefTeamsRecordList
                                                            .first
                                                        : null;

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            columnTeamExtRefTeamsRecord
                                                                ?.name,
                                                            'teamext',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                await _model
                                                                    .eventFightRef!
                                                                    .reference
                                                                    .update(
                                                                        createEventsRecordData(
                                                                  teamextRef:
                                                                      columnTeamExtRefTeamsRecord
                                                                          ?.reference,
                                                                  teamext:
                                                                      columnTeamExtRefTeamsRecord
                                                                          ?.value,
                                                                ));

                                                                await TeamEventsRecord.createDoc(
                                                                        columnTeamExtRefTeamsRecord!
                                                                            .reference)
                                                                    .set(
                                                                        createTeamEventsRecordData(
                                                                  startedTime: _model
                                                                      .calendarSelectedDay
                                                                      ?.start,
                                                                  events: _model
                                                                      .eventFightRef
                                                                      ?.reference,
                                                                ));

                                                                context
                                                                    .pushNamed(
                                                                  'AddBetPage',
                                                                  queryParameters:
                                                                      {
                                                                    'eventRef':
                                                                        serializeParam(
                                                                      _model
                                                                          .eventFightRef
                                                                          ?.reference,
                                                                      ParamType
                                                                          .DocumentReference,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              text:
                                                                  'Créer l\'évennement',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 130.0,
                                                                height: 40.0,
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                iconPadding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            40.0),
                                                                hoverColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .success,
                                                                hoverTextColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                              ),
                                                            ),
                                                          ),
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
                                  if (_model.dropLigueHockeyValue != null &&
                                      _model.dropLigueHockeyValue != '')
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          StreamBuilder<List<TeamsRecord>>(
                                            stream: queryTeamsRecord(
                                              queryBuilder: (teamsRecord) =>
                                                  teamsRecord.where(
                                                'league_value',
                                                isEqualTo:
                                                    _model.dropLigueHockeyValue,
                                              ),
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
                                              List<TeamsRecord>
                                                  dropTeamExtHockeyTeamsRecordList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .dropTeamExtHockeyValueController ??=
                                                    FormFieldController<String>(
                                                  _model.dropTeamExtHockeyValue ??=
                                                      '',
                                                ),
                                                options: List<String>.from(
                                                    dropTeamExtHockeyTeamsRecordList
                                                        .map((e) => e.value)
                                                        .toList()),
                                                optionLabels:
                                                    dropTeamExtHockeyTeamsRecordList
                                                        .map((e) => e.name)
                                                        .toList(),
                                                onChanged: (val) =>
                                                    safeSetState(() => _model
                                                            .dropTeamExtHockeyValue =
                                                        val),
                                                width: 200.0,
                                                height: 40.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Teams',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                          if (_model.dropTeamExtHockeyValue !=
                                                  null &&
                                              _model.dropTeamExtHockeyValue !=
                                                  '')
                                            StreamBuilder<List<TeamsRecord>>(
                                              stream: queryTeamsRecord(
                                                queryBuilder: (teamsRecord) =>
                                                    teamsRecord.where(
                                                  'value',
                                                  isEqualTo: _model
                                                      .dropTeamExtHockeyValue,
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
                                                List<TeamsRecord>
                                                    columnTeamExtRefTeamsRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final columnTeamExtRefTeamsRecord =
                                                    columnTeamExtRefTeamsRecordList
                                                            .isNotEmpty
                                                        ? columnTeamExtRefTeamsRecordList
                                                            .first
                                                        : null;

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            columnTeamExtRefTeamsRecord
                                                                ?.name,
                                                            'teamext',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                await _model
                                                                    .eventHockeyRef!
                                                                    .reference
                                                                    .update(
                                                                        createEventsRecordData(
                                                                  teamextRef:
                                                                      columnTeamExtRefTeamsRecord
                                                                          ?.reference,
                                                                  teamext:
                                                                      columnTeamExtRefTeamsRecord
                                                                          ?.value,
                                                                ));

                                                                await TeamEventsRecord.createDoc(
                                                                        columnTeamExtRefTeamsRecord!
                                                                            .reference)
                                                                    .set(
                                                                        createTeamEventsRecordData(
                                                                  startedTime: _model
                                                                      .calendarSelectedDay
                                                                      ?.start,
                                                                  events: _model
                                                                      .eventHockeyRef
                                                                      ?.reference,
                                                                ));

                                                                context
                                                                    .pushNamed(
                                                                  'AddBetPage',
                                                                  queryParameters:
                                                                      {
                                                                    'eventRef':
                                                                        serializeParam(
                                                                      _model
                                                                          .eventHockeyRef
                                                                          ?.reference,
                                                                      ParamType
                                                                          .DocumentReference,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              text:
                                                                  'Créer l\'évennement',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 130.0,
                                                                height: 40.0,
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                iconPadding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            40.0),
                                                                hoverColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .success,
                                                                hoverTextColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                              ),
                                                            ),
                                                          ),
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
                                ],
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
      ),
    );
  }
}
