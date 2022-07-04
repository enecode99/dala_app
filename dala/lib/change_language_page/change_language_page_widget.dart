import '../flutter_flow/flutter_flow_language_selector.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangeLanguagePageWidget extends StatefulWidget {
  const ChangeLanguagePageWidget({Key key}) : super(key: key);

  @override
  _ChangeLanguagePageWidgetState createState() =>
      _ChangeLanguagePageWidgetState();
}

class _ChangeLanguagePageWidgetState extends State<ChangeLanguagePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ChangeLanguagePage'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).tertiaryColor,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    '1rdhe8k9' /* Badili Lugha */,
                  ),
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).primaryColor,
                        fontSize: 18,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 50),
                  child: FlutterFlowLanguageSelector(
                    width: 300,
                    height: 50,
                    backgroundColor:
                        FlutterFlowTheme.of(context).primaryBackground,
                    borderColor: Color(0xFF262D34),
                    dropdownIconColor: Color(0xFF14181B),
                    borderRadius: 8,
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                    hideFlags: false,
                    flagSize: 24,
                    flagTextGap: 8,
                    currentLanguage: FFLocalizations.of(context).languageCode,
                    languages: FFLocalizations.languages(),
                    onChanged: (lang) => setAppLanguage(context, lang),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('CHANGE_LANGUAGE_SAWA_BTN_ON_TAP');
                    logFirebaseEvent('Button_Navigate-Back');
                    Navigator.pop(context);
                  },
                  text: FFLocalizations.of(context).getText(
                    'tpv7ba2b' /* SAWA */,
                  ),
                  options: FFButtonOptions(
                    width: 140,
                    height: 50,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Open Sans',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
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
