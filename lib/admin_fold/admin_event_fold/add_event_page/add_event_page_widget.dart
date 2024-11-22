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
                      iconColor: FlutterFlowTheme.of(context).secondaryText,
                      weekFormat: true,
                      weekStartsMonday: false,
                      rowHeight: 50.0,
                      onChange: (DateTimeRange? newSelectedDate) {
                        safeSetState(
                            () => _model.calendarSelectedDay = newSelectedDate);
                      },
                      titleStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
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
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlutterFlowDropDown<String>(
                          controller: _model.dropSportValueController ??=
                              FormFieldController<String>(
                            _model.dropSportValue ??= '',
                          ),
                          options: List<String>.from(
                              ['football', 'basketball', 'tennis']),
                          optionLabels: const ['Football', 'Basketball', 'Tennis'],
                          onChanged: (val) =>
                              safeSetState(() => _model.dropSportValue = val),
                          width: 180.0,
                          height: 40.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Sports',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
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
                              'conference.league'
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
                              'Conference League'
                            ],
                            onChanged: (val) =>
                                safeSetState(() => _model.dropLigueValue = val),
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
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
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
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
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
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).accent4,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<TeamsRecord> dropTeamDomTeamsRecordList =
                                snapshot.data!;

                            return FlutterFlowDropDown<String>(
                              controller: _model.dropTeamDomValueController ??=
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
                              onChanged: (val) => safeSetState(
                                  () => _model.dropTeamDomValue = val),
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
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).accent4,
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
                                    columnTeamDomRefTeamsRecordList.isNotEmpty
                                        ? columnTeamDomRefTeamsRecordList.first
                                        : null;

                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      valueOrDefault<String>(
                                        columnTeamDomRefTeamsRecord?.name,
                                        'teamdom',
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
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            var eventsRecordReference =
                                                EventsRecord.collection.doc();
                                            await eventsRecordReference
                                                .set(createEventsRecordData(
                                              date: _model
                                                  .calendarSelectedDay?.start,
                                              hour: _model.countHourValue,
                                              minute: _model.countMinuteValue,
                                              teamdom:
                                                  columnTeamDomRefTeamsRecord
                                                      ?.value,
                                              draw: valueOrDefault<String>(
                                                'Match nul',
                                                'draw',
                                              ),
                                              l2myes: valueOrDefault<String>(
                                                'Les 2 équipes marquent - Oui',
                                                'l2myes',
                                              ),
                                              l2mno: valueOrDefault<String>(
                                                'Les 2 équipes marquent - Non',
                                                'l2mno',
                                              ),
                                              adminUser: currentUserReference,
                                              statut: false,
                                              sportValue: _model.dropSportValue,
                                              teamdomRef:
                                                  columnTeamDomRefTeamsRecord
                                                      ?.reference,
                                              leagueValue:
                                                  _model.dropLigueValue,
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
                                                      hour:
                                                          _model.countHourValue,
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
                                                      sportValue:
                                                          _model.dropSportValue,
                                                      teamdomRef:
                                                          columnTeamDomRefTeamsRecord
                                                              ?.reference,
                                                      leagueValue:
                                                          _model.dropLigueValue,
                                                      week: _model
                                                          .numWeekFieldTextController
                                                          .text,
                                                      esport: false,
                                                    ),
                                                    eventsRecordReference);

                                            await TeamEventsRecord.createDoc(
                                                    columnTeamDomRefTeamsRecord!
                                                        .reference)
                                                .set(createTeamEventsRecordData(
                                              startedTime: _model
                                                  .calendarSelectedDay?.start,
                                              events:
                                                  _model.eventRef?.reference,
                                            ));

                                            safeSetState(() {});
                                          },
                                          text: 'Valider Domicile',
                                          options: FFButtonOptions(
                                            width: 130.0,
                                            height: 40.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
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
                                                BorderRadius.circular(40.0),
                                            hoverColor:
                                                FlutterFlowTheme.of(context)
                                                    .success,
                                            hoverTextColor:
                                                FlutterFlowTheme.of(context)
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
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
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
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).accent4,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<TeamsRecord> dropTeamExtTeamsRecordList =
                                snapshot.data!;

                            return FlutterFlowDropDown<String>(
                              controller: _model.dropTeamExtValueController ??=
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
                              queryBuilder: (teamsRecord) => teamsRecord.where(
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
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).accent4,
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
                                  columnTeamExtRefTeamsRecordList.isNotEmpty
                                      ? columnTeamExtRefTeamsRecordList.first
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
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          await _model.eventRef!.reference
                                              .update(createEventsRecordData(
                                            teamextRef:
                                                columnTeamExtRefTeamsRecord
                                                    ?.reference,
                                            teamext: _model.dropTeamExtValue,
                                          ));

                                          await TeamEventsRecord.createDoc(
                                                  columnTeamExtRefTeamsRecord!
                                                      .reference)
                                              .set(createTeamEventsRecordData(
                                            startedTime: _model
                                                .calendarSelectedDay?.start,
                                            events: _model.eventRef?.reference,
                                          ));

                                          context.pushNamed(
                                            'AddBetPage',
                                            queryParameters: {
                                              'eventRef': serializeParam(
                                                _model.eventRef?.reference,
                                                ParamType.DocumentReference,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        text: 'Créer l\'évennement',
                                        options: FFButtonOptions(
                                          width: 130.0,
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                              BorderRadius.circular(40.0),
                                          hoverColor:
                                              FlutterFlowTheme.of(context)
                                                  .success,
                                          hoverTextColor:
                                              FlutterFlowTheme.of(context)
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
            ),
          ),
        ),
      ),
    );
  }
}
