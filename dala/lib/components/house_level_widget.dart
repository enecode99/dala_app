import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HouseLevelWidget extends StatefulWidget {
  const HouseLevelWidget({
    Key key,
    this.bussiCode,
  }) : super(key: key);

  final HouseRecord bussiCode;

  @override
  _HouseLevelWidgetState createState() => _HouseLevelWidgetState();
}

class _HouseLevelWidgetState extends State<HouseLevelWidget> {
  String radioButtonValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
      child: Container(
        width: double.infinity,
        height: 300,
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
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 5),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 5),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'tmio4tyb' /* Chagua kiwango cha nyumba unac... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Open Sans',
                        fontSize: 14,
                      ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: FlutterFlowRadioButton(
                      options: [
                        FFLocalizations.of(context).getText(
                          'vp1a63my' /* Kiwnago Cha Chini */,
                        ),
                        FFLocalizations.of(context).getText(
                          '0ch12lms' /* Kiwango Cha Kati */,
                        ),
                        FFLocalizations.of(context).getText(
                          'qx6rsquv' /* Kiwango Cha Juu */,
                        )
                      ].toList(),
                      onChanged: (value) {
                        setState(() => radioButtonValue = value);
                      },
                      optionHeight: 25,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Open Sans',
                                color: Colors.black,
                              ),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.vertical,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.start,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent('HOUSE_LEVEL_COMP_TUMA_BTN_ON_TAP');
                        logFirebaseEvent('Button_Backend-Call');

                        final usersUpdateData = createUsersRecordData(
                          planAvailable: true,
                        );
                        await currentUserReference.update(usersUpdateData);
                        logFirebaseEvent('Button_Backend-Call');

                        final housePlansCreateData = createHousePlansRecordData(
                          planHouse: widget.bussiCode.reference,
                          userPlan: currentUserReference,
                          houseRenovation: false,
                          planTime: getCurrentTimestamp,
                        );
                        await HousePlansRecord.collection
                            .doc()
                            .set(housePlansCreateData);
                        logFirebaseEvent('Button_Navigate-To');
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                            reverseDuration: Duration(milliseconds: 0),
                            child: NavBarPage(initialPage: 'MyAccountPage'),
                          ),
                        );
                      },
                      text: FFLocalizations.of(context).getText(
                        'hszppbmd' /* Tuma */,
                      ),
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
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
            ],
          ),
        ),
      ),
    );
  }
}
