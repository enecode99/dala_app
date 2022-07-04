import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class InterestReqWidget extends StatefulWidget {
  const InterestReqWidget({Key key}) : super(key: key);

  @override
  _InterestReqWidgetState createState() => _InterestReqWidgetState();
}

class _InterestReqWidgetState extends State<InterestReqWidget> {
  String dropDown1Value;
  String dropDown2Value1;
  String dropDown2Value2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
      child: Container(
        width: double.infinity,
        height: 400,
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
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'o4f5ozrq' /* Kipato cha mwezi */,
                          ),
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Open Sans',
                                    fontSize: 14,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                        child: FlutterFlowDropDown(
                          options: [
                            FFLocalizations.of(context).getText(
                              'vthowgg0' /* Chini ya 1,000,000/= */,
                            ),
                            FFLocalizations.of(context).getText(
                              '3vurm5su' /* Kati ya: 1,000,000/= mpaka 2,0... */,
                            ),
                            FFLocalizations.of(context).getText(
                              'dy8gp2xu' /* Kati ya:  2,000,000/= mpaka 3,... */,
                            ),
                            FFLocalizations.of(context).getText(
                              'obyx1fqc' /* Juu ya 3,000,000/=  */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => dropDown1Value = val),
                          width: 350,
                          height: 50,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.black,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            'c0yf5l7q' /* chagua... */,
                          ),
                          fillColor: Colors.white,
                          elevation: 2,
                          borderColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          borderWidth: 0,
                          borderRadius: 1,
                          margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                          hidesUnderline: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '566elrks' /* Mkopo wa miaka mingapi? */,
                          ),
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Open Sans',
                                    fontSize: 14,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                        child: FlutterFlowDropDown(
                          options: [
                            FFLocalizations.of(context).getText(
                              'zou3mao8' /* Miaka 5 au chini */,
                            ),
                            FFLocalizations.of(context).getText(
                              'fiwqi1tt' /* Kati ya: miaka 6 mpaka 10 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'y818lp8g' /* Kati ya: miaka 11 mpaka 15 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'hguvz1z6' /* Kati ya: miaka 16 mpaka 25 */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => dropDown2Value1 = val),
                          width: 350,
                          height: 50,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.black,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            'x28njvj9' /* Chagua... */,
                          ),
                          fillColor: Colors.white,
                          elevation: 2,
                          borderColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          borderWidth: 0,
                          borderRadius: 1,
                          margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                          hidesUnderline: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'p4x1xpr2' /* Kazi */,
                        ),
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Open Sans',
                              fontSize: 14,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                      child: FlutterFlowDropDown(
                        options: [
                          FFLocalizations.of(context).getText(
                            'qxhwyrqu' /* Mfanyakazi */,
                          ),
                          FFLocalizations.of(context).getText(
                            'i55j2sgy' /* Mfanyabiashara */,
                          )
                        ],
                        onChanged: (val) =>
                            setState(() => dropDown2Value2 = val),
                        width: 350,
                        height: 50,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                        hintText: FFLocalizations.of(context).getText(
                          'h8fcfyec' /* Chagua... */,
                        ),
                        fillColor: Colors.white,
                        elevation: 2,
                        borderColor: FlutterFlowTheme.of(context).secondaryText,
                        borderWidth: 0,
                        borderRadius: 1,
                        margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                        hidesUnderline: true,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('INTEREST_REQ_COMP_TUMA_BTN_ON_TAP');
                    logFirebaseEvent('Button_Backend-Call');

                    final mortgageRequestCreateData =
                        createMortgageRequestRecordData(
                      mortgageType: 'Interest',
                      monthlyIncome: dropDown1Value,
                      homeRent: dropDown2Value1,
                      requestUser: currentUserReference,
                      time: getCurrentTimestamp,
                      employmentStatus: dropDown2Value2,
                    );
                    await MortgageRequestRecord.collection
                        .doc()
                        .set(mortgageRequestCreateData);
                    logFirebaseEvent('Button_Alert-Dialog');
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('Anza Ujenzi'),
                          content: Text(
                              'Tumepokea ombi lako na tunalifanyia kazi haraka iwezekanavyo, kwa ndani ya masaa 12. '),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                    logFirebaseEvent('Button_Navigate-Back');
                    Navigator.pop(context);
                  },
                  text: FFLocalizations.of(context).getText(
                    'iyan7x2r' /* Tuma */,
                  ),
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Open Sans',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
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
