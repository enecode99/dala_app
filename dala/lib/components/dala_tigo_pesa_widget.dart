import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DalaTigoPesaWidget extends StatefulWidget {
  const DalaTigoPesaWidget({
    Key key,
    this.payment,
  }) : super(key: key);

  final String payment;

  @override
  _DalaTigoPesaWidgetState createState() => _DalaTigoPesaWidgetState();
}

class _DalaTigoPesaWidgetState extends State<DalaTigoPesaWidget> {
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
        padding: EdgeInsetsDirectional.fromSTEB(16, 30, 16, 16),
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
                          'xdoj5btj' /* Jinsi ya Kulipa - TIGO PESA
1.... */
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
                      '4240mx98' /* Namba ya kampuni: */,
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
                          'm8ojtoos' /* 351999 */,
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
                    'tii17c7q' /* Jina la kampuni: */,
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
                        'o6wvpydi' /* Dala Ujenzi */,
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
                    'k9y7su3z' /* Kiasi: */,
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
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    '4yz8mun3' /* Ada: */,
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
                        'bjlj6l88' /* *** */,
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 44),
              child: FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('DALA_TIGO_PESA_COMP_ANZA_BTN_ON_TAP');
                  logFirebaseEvent('Button_Launch-U-R-L');
                  await launchURL('tel: *150*01#');
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
                  'tpydq07x' /* Anza */,
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
