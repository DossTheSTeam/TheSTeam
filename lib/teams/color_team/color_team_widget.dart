import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'color_team_model.dart';
export 'color_team_model.dart';

class ColorTeamWidget extends StatefulWidget {
  const ColorTeamWidget({
    super.key,
    required this.teamRef,
  });

  final DocumentReference? teamRef;

  @override
  State<ColorTeamWidget> createState() => _ColorTeamWidgetState();
}

class _ColorTeamWidgetState extends State<ColorTeamWidget> {
  late ColorTeamModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ColorTeamModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 6.0,
          sigmaY: 8.0,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).alternate,
          ),
          alignment: AlignmentDirectional(0.0, 1.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 7.0,
                      color: Color(0x33000000),
                      offset: Offset(
                        0.0,
                        -2.0,
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 8.0, 5.0, 0.0),
                  child: StreamBuilder<TeamsRecord>(
                    stream: TeamsRecord.getDocument(widget.teamRef!),
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

                      final columnTeamsRecord = snapshot.data!;

                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 60.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 10.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.arrow_back_ios_new_rounded,
                                    color: valueOrDefault<Color>(
                                      columnTeamsRecord.color1,
                                      FlutterFlowTheme.of(context).primaryText,
                                    ),
                                    size: 30.0,
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                          'Changer la couleur',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmallIsCustom,
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
                                          'Change color',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmallIsCustom,
                                              ),
                                        ),
                                      ),
                                    if (valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        'deutsch')
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          'Farbe ändern',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmallIsCustom,
                                              ),
                                        ),
                                      ),
                                    if (valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        'espanol')
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          'Cambiar el color',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmallIsCustom,
                                              ),
                                        ),
                                      ),
                                    if (valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        'italiano')
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          'Cambiare colore',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmallIsCustom,
                                              ),
                                        ),
                                      ),
                                    if (valueOrDefault(
                                            currentUserDocument?.langage, '') ==
                                        'portugues')
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          'Mudar cor',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmallIsCustom,
                                              ),
                                        ),
                                      ),
                                    SizedBox(
                                      width: 250.0,
                                      child: Divider(
                                        thickness: 1.0,
                                        color: valueOrDefault<Color>(
                                          columnTeamsRecord.color2,
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      columnTeamsRecord.name,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmallFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .headlineSmallIsCustom,
                                          ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  size: 30.0,
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                            color: valueOrDefault<Color>(
                              columnTeamsRecord.color2,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
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
                                        'Couleur principale',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
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
                                        'Main color',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'deutsch')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Hauptfarbe',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'espanol')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'color principal',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'italiano')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Colore principale',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'portugues')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Cor principal',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropColor1ValueController ??=
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
                                      '#860038',
                                      '#000080'
                                    ]),
                                    optionLabels: [
                                      'Yellow',
                                      'Green 1',
                                      'Pink',
                                      'Cyan 1',
                                      'Sky blue',
                                      'Magenta',
                                      'Orange',
                                      'Red 1',
                                      'Purpple',
                                      'Blue 1',
                                      'Green 2',
                                      'Cyan 2',
                                      'Green 3',
                                      'Blue 2',
                                      'Magenta 2',
                                      'Red 2',
                                      'Brown',
                                      'Grey2',
                                      'Grey 1',
                                      'Gold',
                                      'Red 3',
                                      'Burgundy',
                                      'Blue 3'
                                    ],
                                    onChanged: (val) => safeSetState(
                                        () => _model.dropColor1Value = val),
                                    width: 150.0,
                                    height: 40.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    hintText: 'Colors',
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
                                ),
                                if (_model.dropColor1Value != null &&
                                    _model.dropColor1Value != '')
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await widget.teamRef!
                                          .update(createTeamsRecordData(
                                        color1: colorFromCssString(
                                          _model.dropColor1Value!,
                                          defaultColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                        ),
                                      ));
                                    },
                                    child: Icon(
                                      Icons.send_rounded,
                                      color: colorFromCssString(
                                        _model.dropColor1Value!,
                                        defaultColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                      ),
                                      size: 24.0,
                                    ),
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await widget.teamRef!.update({
                                        ...mapToFirestore(
                                          {
                                            'color1': FieldValue.delete(),
                                          },
                                        ),
                                      });
                                    },
                                    child: Icon(
                                      Icons.delete_forever_rounded,
                                      color: FlutterFlowTheme.of(context).error,
                                      size: 30.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 30.0, 0.0),
                                    child: Container(
                                      width: 150.0,
                                      child: TextFormField(
                                        controller: _model.textController1,
                                        focusNode: _model.textFieldFocusNode1,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelMediumIsCustom,
                                              ),
                                          hintText: 'hex.......',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelMediumIsCustom,
                                              ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        validator: _model
                                            .textController1Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                                if (_model.textController1.text != '')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 65.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await widget.teamRef!
                                            .update(createTeamsRecordData(
                                          color1: colorFromCssString(
                                            _model.textController1.text,
                                            defaultColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                          ),
                                        ));
                                      },
                                      child: Icon(
                                        Icons.send_rounded,
                                        color: colorFromCssString(
                                          _model.textController1.text,
                                          defaultColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                        ),
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                            color: valueOrDefault<Color>(
                              columnTeamsRecord.color2,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
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
                                        'Couleur secondaire',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
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
                                        'Secondary color',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'deutsch')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Sekundärfarbe',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'espanol')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'color secundario',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'italiano')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Colore secondario',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  if (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'portugues')
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Cor secundária',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 20.0, 0.0),
                                  child: FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropColor2ValueController ??=
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
                                      '#860038',
                                      '#000080'
                                    ]),
                                    optionLabels: [
                                      'Yellow',
                                      'Green 1',
                                      'Pink',
                                      'Cyan 1',
                                      'Sky Blue',
                                      'Magenta',
                                      'Orange',
                                      'Red 1',
                                      'Purpple',
                                      'Blue 1',
                                      'Green 2',
                                      'Cyan 2',
                                      'Green 3',
                                      'Blue 2',
                                      'Magenta 2',
                                      'Red 2',
                                      'Brown',
                                      'Grey 2',
                                      'Grey 1',
                                      'Gold',
                                      'Red 3',
                                      'Burgundy',
                                      'Blue 3'
                                    ],
                                    onChanged: (val) => safeSetState(
                                        () => _model.dropColor2Value = val),
                                    width: 150.0,
                                    height: 40.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    hintText: 'Colors',
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
                                ),
                                if (_model.dropColor2Value != null &&
                                    _model.dropColor2Value != '')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 15.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await widget.teamRef!
                                            .update(createTeamsRecordData(
                                          color2: colorFromCssString(
                                            _model.dropColor2Value!,
                                            defaultColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                        ));
                                      },
                                      child: Icon(
                                        Icons.send_rounded,
                                        color: colorFromCssString(
                                          _model.dropColor2Value!,
                                          defaultColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                        ),
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await widget.teamRef!.update({
                                        ...mapToFirestore(
                                          {
                                            'color2': FieldValue.delete(),
                                          },
                                        ),
                                      });
                                    },
                                    child: Icon(
                                      Icons.delete_forever_rounded,
                                      color: FlutterFlowTheme.of(context).error,
                                      size: 30.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 30.0, 0.0),
                                    child: Container(
                                      width: 150.0,
                                      child: TextFormField(
                                        controller: _model.textController2,
                                        focusNode: _model.textFieldFocusNode2,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelMediumIsCustom,
                                              ),
                                          hintText: 'hex.......',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelMediumIsCustom,
                                              ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        validator: _model
                                            .textController2Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                                if (_model.textController2.text != '')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 65.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await widget.teamRef!
                                            .update(createTeamsRecordData(
                                          color2: colorFromCssString(
                                            _model.textController2.text,
                                            defaultColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                        ));
                                      },
                                      child: Icon(
                                        Icons.send_rounded,
                                        color: colorFromCssString(
                                          _model.textController2.text,
                                          defaultColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                        ),
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 5.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 40.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        if ((valueOrDefault(
                                                        currentUserDocument
                                                            ?.langage,
                                                        '') ==
                                                    '') ||
                                            (valueOrDefault(
                                                    currentUserDocument
                                                        ?.langage,
                                                    '') ==
                                                'francais'))
                                          AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              'Changer la couleur',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                            ),
                                          ),
                                        if ((valueOrDefault(
                                                    currentUserDocument
                                                        ?.langage,
                                                    '') ==
                                                'english') ||
                                            (valueOrDefault(
                                                    currentUserDocument
                                                        ?.langage,
                                                    '') ==
                                                'american'))
                                          AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              'Change color',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                            ),
                                          ),
                                        if (valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            'deutsch')
                                          AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              'Farbe ändern',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                            ),
                                          ),
                                        if (valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            'espanol')
                                          AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              'Cambiar el color',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                            ),
                                          ),
                                        if (valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            'italiano')
                                          AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              'Cambiare colore',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                            ),
                                          ),
                                        if (valueOrDefault(
                                                currentUserDocument?.langage,
                                                '') ==
                                            'portugues')
                                          AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              'Mudar cor',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                            'Valider',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
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
                                            'to validate',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                      if (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'deutsch')
                                        AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            'zu validieren',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                      if (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'espanol')
                                        AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            'validar',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                      if (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'italiano')
                                        AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            'convalidare',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                      if (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'portugues')
                                        AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            'validar',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                    ],
                                  ),
                                  Column(
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
                                            'Enlever',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
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
                                            'To remove',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                      if (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'deutsch')
                                        AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            'Zum Entfernen',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                      if (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'espanol')
                                        AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            'para eliminar',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                      if (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'italiano')
                                        AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            'Per rimuovere',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                      if (valueOrDefault(
                                              currentUserDocument?.langage,
                                              '') ==
                                          'portugues')
                                        AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            'Para remover',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                            color: valueOrDefault<Color>(
                              columnTeamsRecord.color2,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 50.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  setDarkModeSetting(context, ThemeMode.light);
                                },
                                child: Container(
                                  width: 55.0,
                                  height: 55.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: valueOrDefault<Color>(
                                        columnTeamsRecord.color2,
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      width: 3.0,
                                    ),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(
                                      Icons.check_rounded,
                                      color: valueOrDefault<Color>(
                                        columnTeamsRecord.color1,
                                        FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                      size: 30.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
