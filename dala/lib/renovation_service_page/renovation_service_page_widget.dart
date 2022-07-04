import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class RenovationServicePageWidget extends StatefulWidget {
  const RenovationServicePageWidget({Key key}) : super(key: key);

  @override
  _RenovationServicePageWidgetState createState() =>
      _RenovationServicePageWidgetState();
}

class _RenovationServicePageWidgetState
    extends State<RenovationServicePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'RenovationServicePage'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            logFirebaseEvent('RENOVATION_SERVICE_Icon_r2j7dkbd_ON_TAP');
            logFirebaseEvent('Icon_Navigate-Back');
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: FlutterFlowTheme.of(context).primaryColor,
            size: 24,
          ),
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'yl0cxob3' /* Huduma */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Open Sans',
                color: FlutterFlowTheme.of(context).primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 15, 5, 0),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: FlutterFlowTheme.of(context).primaryBackground,
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Divider(
                        height: 1,
                        thickness: 2,
                        indent: 16,
                        endIndent: 16,
                        color: Color(0x250D9BF1),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24, 4, 0, 8),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '7zoyn02x' /* Lipa 1 mil mpaka 1.5 mil.  */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 0, 24, 0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'v46of8nc' /* Kiasi cha milioni 1 (Dar es Sa... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: Color(0xFF57636C),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 15, 5, 0),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: FlutterFlowTheme.of(context).primaryBackground,
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Divider(
                        height: 1,
                        thickness: 2,
                        indent: 16,
                        endIndent: 16,
                        color: Color(0x250D9BF1),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24, 4, 0, 8),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'cu7404rn' /* Lipa 1 mil/ 1.5 mil Kidogo kid... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 0, 24, 0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'ecrhgi6q' /* Lipa 1 mil/ 1.5 mil kidogo kid... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: Color(0xFF57636C),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 15, 5, 0),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: FlutterFlowTheme.of(context).primaryBackground,
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Divider(
                        height: 1,
                        thickness: 2,
                        indent: 16,
                        endIndent: 16,
                        color: Color(0x250D9BF1),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24, 4, 0, 8),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'wv4hpuwa' /* Nyongeza ya 20 mil mpaka 1 bil */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 0, 24, 0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '89lvetfe' /* Baada ya kufanya malipo ya 1 m... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: Color(0xFF57636C),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 15, 5, 0),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: FlutterFlowTheme.of(context).primaryBackground,
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Divider(
                        height: 1,
                        thickness: 2,
                        indent: 16,
                        endIndent: 16,
                        color: Color(0x250D9BF1),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24, 4, 0, 8),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'rfedkf2b' /* Lipa 20 mil mpaka 1 bil */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 0, 24, 0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'fvubr2f8' /* Baada ya ukarabati kukamilika,... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: Color(0xFF57636C),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
    );
  }
}
