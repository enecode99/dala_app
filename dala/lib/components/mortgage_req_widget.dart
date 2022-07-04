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

class MortgageReqWidget extends StatefulWidget {
  const MortgageReqWidget({
    Key key,
    this.planTrans,
    this.user,
  }) : super(key: key);

  final HousePlansRecord planTrans;
  final UsersRecord user;

  @override
  _MortgageReqWidgetState createState() => _MortgageReqWidgetState();
}

class _MortgageReqWidgetState extends State<MortgageReqWidget> {
  String dropDown1Value;
  String dropDown2Value;
  String dropDown3Value;
  String dropDown4Value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
      child: Container(
        width: double.infinity,
        height: 470,
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
                            '155139e2' /* Kuhusu Kiwanja */,
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
                              'dnx0n2vv' /* Huna Kiwanja */,
                            ),
                            FFLocalizations.of(context).getText(
                              'ed8apdp6' /* Una kiwanja kisicho na hati mi... */,
                            ),
                            FFLocalizations.of(context).getText(
                              'u8vmay8u' /* Una kiwanja chenye hati miliki */,
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
                            'ppjuzdu3' /* chagua... */,
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
                            '1jvof5bb' /* Kuhusu malipo ya mwanzo */,
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
                              'r15mts9l' /* Una 15% ya gharama ya ujenzi */,
                            ),
                            FFLocalizations.of(context).getText(
                              'xd2o44el' /* Huna 15% ya gharama ya ujenzi */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => dropDown2Value = val),
                          width: 350,
                          height: 50,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.black,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            'hcjoc5u3' /* Chagua... */,
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
                            'k6ndprwx' /* Mkopo wa miaka mingapi? */,
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
                              '4mdqof05' /* Miaka 5 au chini */,
                            ),
                            FFLocalizations.of(context).getText(
                              'bcd0xjoe' /* Kati ya: miaka 6 mpaka 10 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '4tnf9jtg' /* Kati ya: miaka 11 mpaka 15 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '58kak51b' /* Kati ya: miaka 16 mpaka 25 */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => dropDown3Value = val),
                          width: 350,
                          height: 50,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.black,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            '2vkerk68' /* Chagua... */,
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'cvx1o86h' /* Kipato cha Mwezi */,
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
                            'pa8gl0mt' /* Chini ya 1,000,000/= */,
                          ),
                          FFLocalizations.of(context).getText(
                            'g9mazjao' /* Kati ya: 1,000,000/= mpaka 2,0... */,
                          ),
                          FFLocalizations.of(context).getText(
                            'pi8vab3t' /* Kati ya:  2,000,000/= mpaka 3,... */,
                          ),
                          FFLocalizations.of(context).getText(
                            'jfqpjxpa' /* Juu ya 3,000,000/=  */,
                          )
                        ],
                        onChanged: (val) =>
                            setState(() => dropDown4Value = val),
                        width: 350,
                        height: 50,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                        hintText: FFLocalizations.of(context).getText(
                          'roz3rqbu' /* chagua... */,
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
                    logFirebaseEvent('MORTGAGE_REQ_COMP_TUMA_BTN_ON_TAP');
                    logFirebaseEvent('Button_Backend-Call');

                    final mortgageRequestCreateData =
                        createMortgageRequestRecordData(
                      mortgageType: 'Construction Mortgage',
                      employmentStatus: dropDown1Value,
                      relationshipStatus: dropDown2Value,
                      homeRent: dropDown3Value,
                      requestUser: currentUserReference,
                      time: getCurrentTimestamp,
                      monthlyIncome: dropDown4Value,
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
                    'bztvt312' /* Tuma */,
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
