import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'copy_text_model.dart';
export 'copy_text_model.dart';

class CopyTextWidget extends StatefulWidget {
  const CopyTextWidget({super.key});

  @override
  State<CopyTextWidget> createState() => _CopyTextWidgetState();
}

class _CopyTextWidgetState extends State<CopyTextWidget> {
  late CopyTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CopyTextModel());
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
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              Navigator.pop(context);
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  height: 500.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiary,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          2.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Column(
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
                              15.0, 0.0, 10.0, 200.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (valueOrDefault(
                                      currentUserDocument?.langage, '') ==
                                  'francais')
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      'Texte copié',
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
                                  ),
                                ),
                              if ((valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'english') ||
                                  (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'american'))
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      'Copied text',
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
                                  ),
                                ),
                              if (valueOrDefault(
                                      currentUserDocument?.langage, '') ==
                                  'deutsch')
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      'Kopierter text',
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
                                  ),
                                ),
                              if ((valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'portugues') ||
                                  (valueOrDefault(
                                          currentUserDocument?.langage, '') ==
                                      'espanol'))
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      'Texto copiado',
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
                                  ),
                                ),
                              if (valueOrDefault(
                                      currentUserDocument?.langage, '') ==
                                  'italiano')
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      'Testo copiato',
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
                                  ),
                                ),
                            ],
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
    );
  }
}
