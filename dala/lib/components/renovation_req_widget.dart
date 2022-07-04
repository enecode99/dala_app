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

class RenovationReqWidget extends StatefulWidget {
  const RenovationReqWidget({
    Key key,
    this.planTrans,
    this.user,
  }) : super(key: key);

  final HousePlansRecord planTrans;
  final UsersRecord user;

  @override
  _RenovationReqWidgetState createState() => _RenovationReqWidgetState();
}

class _RenovationReqWidgetState extends State<RenovationReqWidget> {
  String dropDownValue1;
  String dropDownValue2;
  String dropDownValue3;
  String dropDownValue4;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
      child: Container(
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
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'io24anvl' /* Shughuli */,
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
                              '8w6s2py9' /* Mfanyakazi */,
                            ),
                            FFLocalizations.of(context).getText(
                              'u23pzt55' /* Mfanyabiashara */,
                            ),
                            FFLocalizations.of(context).getText(
                              '931zpzlc' /* Hakuna */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => dropDownValue1 = val),
                          width: 350,
                          height: 50,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.black,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            'v1cp1uk5' /* chagua... */,
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
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'ywa07344' /* Kipato cha mwezi */,
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
                              'or067tji' /* Chini ya 400,000 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'yjr0voyw' /* Kati ya: 400,000/= mpaka 750,0... */,
                            ),
                            FFLocalizations.of(context).getText(
                              'lsg64anr' /* Kati ya:  750,000/= mpaka 1,50... */,
                            ),
                            FFLocalizations.of(context).getText(
                              'e5y74si7' /* Juu ya 1,500,000/=  */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => dropDownValue2 = val),
                          width: 350,
                          height: 50,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.black,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            'a3i3ydy6' /* chagua... */,
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
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '41d9kvg3' /* Mahusiano */,
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
                              'tutkslu2' /* Upo kwenye ndoa */,
                            ),
                            FFLocalizations.of(context).getText(
                              '4yjyi0lz' /* Haupo kwenye ndoa  */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => dropDownValue3 = val),
                          width: 350,
                          height: 50,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.black,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            'smd9ffcm' /* Chagua... */,
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
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '0lp7oo3c' /* Makazi */,
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
                              'mv0p0kdp' /* Unahishi kwenye nyumba yako. */,
                            ),
                            FFLocalizations.of(context).getText(
                              '7i3db1dj' /* Umepanga. */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => dropDownValue4 = val),
                          width: 350,
                          height: 50,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.black,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            'u2owe6y8' /* Chagua... */,
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
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('RENOVATION_REQ_COMP_TUMA_BTN_ON_TAP');
                    logFirebaseEvent('Button_Backend-Call');

                    final mortgageRequestCreateData =
                        createMortgageRequestRecordData(
                      mortgageType: 'Renovation Mortgage',
                      employmentStatus: dropDownValue1,
                      monthlyIncome: dropDownValue2,
                      relationshipStatus: dropDownValue3,
                      homeRent: dropDownValue4,
                      requestUser: currentUserReference,
                      time: getCurrentTimestamp,
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
                              'Tumepokea ombi lako na tunalifanyia kazi haraka iwezekanavyo, ndani ya masaa 12.'),
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
                    'gxxms3wd' /* Tuma */,
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
