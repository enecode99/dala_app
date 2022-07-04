import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DalaNMBWidget extends StatefulWidget {
  const DalaNMBWidget({
    Key key,
    this.payment,
  }) : super(key: key);

  final String payment;

  @override
  _DalaNMBWidgetState createState() => _DalaNMBWidgetState();
}

class _DalaNMBWidgetState extends State<DalaNMBWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 7,
            color: Color(0x32171717),
            offset: Offset(0, -4),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16, 50, 16, 16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 60,
              height: 4,
              decoration: BoxDecoration(
                color: Color(0xFFDBE2E7),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '9o0q4ap8' /* Jinsi ya Kulipa - NMB Bank
1. ... */
                          ,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      '7howkcyx' /* Namba ya kampuni: */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Open Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'p9s8op5f' /* 5351999 */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF57636C),
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    '3ok5p0bw' /* Jina la kampuni: */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Open Sans',
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'tv3olds8' /* Dala Ujenzi */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF57636C),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'a4k9y7je' /* Kiasi: */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Open Sans',
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Text(
                      widget.payment,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF57636C),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 44),
              child: FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('DALA_N_M_B_COMP_ANZA_BTN_ON_TAP');
                  logFirebaseEvent('Button_Launch-U-R-L');
                  await launchURL('tel: *150*66#');
                  logFirebaseEvent('Button_Navigate-To');
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          NavBarPage(initialPage: 'MyAccountPage'),
                    ),
                  );
                },
                text: FFLocalizations.of(context).getText(
                  'nef6iul7' /* Anza */,
                ),
                options: FFButtonOptions(
                  width: 350,
                  height: 50,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                  elevation: 2,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
