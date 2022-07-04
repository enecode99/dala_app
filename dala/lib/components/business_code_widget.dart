import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class BusinessCodeWidget extends StatefulWidget {
  const BusinessCodeWidget({
    Key key,
    this.bussiCode,
  }) : super(key: key);

  final HouseRecord bussiCode;

  @override
  _BusinessCodeWidgetState createState() => _BusinessCodeWidgetState();
}

class _BusinessCodeWidgetState extends State<BusinessCodeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
      child: Container(
        width: double.infinity,
        height: 200,
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
          padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 16),
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '0kzv7i8x' /* Lipa gharama yote uanze ujenzi... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Open Sans',
                        color: Color(0xFF57636C),
                        fontSize: 14,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 44),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('BUSINESS_CODE_COMP_SAWA_BTN_ON_TAP');
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
                    'igv8cz1i' /* SAWA */,
                  ),
                  options: FFButtonOptions(
                    width: 350,
                    height: 60,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.white,
                          fontSize: 18,
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
      ),
    );
  }
}
