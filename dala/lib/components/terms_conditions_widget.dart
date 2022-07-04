import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsConditionsWidget extends StatefulWidget {
  const TermsConditionsWidget({Key key}) : super(key: key);

  @override
  _TermsConditionsWidgetState createState() => _TermsConditionsWidgetState();
}

class _TermsConditionsWidgetState extends State<TermsConditionsWidget> {
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
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      '1eyf8x5e' /* Premium Content */,
                    ),
                    style: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF090F13),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'ca54zsdc' /* In order to access thi content... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF57636C),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: Container(
                width: double.infinity,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      color: Color(0x32171717),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/featureCardPremium@2x.png',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 110,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF39D2C0),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 8, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.ticketAlt,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 0, 0, 0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'kr8d8i55' /* Pro Plan */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
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
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '6ev931v0' /* How to launch an NFT Collectio... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: Color(0xFF090F13),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                    child: Icon(
                      Icons.check_box_rounded,
                      color: Color(0xFF4B39EF),
                      size: 24,
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'z1eakjwn' /* Access to all premium content */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF090F13),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                    child: Icon(
                      Icons.check_box_rounded,
                      color: Color(0xFF4B39EF),
                      size: 24,
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'ulvsq4um' /* Unlimited access to all free c... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF090F13),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                    child: Icon(
                      Icons.check_box_rounded,
                      color: Color(0xFF4B39EF),
                      size: 24,
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'qn80yklp' /* Promos for in person lessons */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF090F13),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      '3olvkkn5' /* Premium Content */,
                    ),
                    style: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF090F13),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'c3ik0x2e' /* In order to access thi content... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF57636C),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 44),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: FFLocalizations.of(context).getText(
                  '24f4pge7' /* Subscribe $14.99/mo */,
                ),
                options: FFButtonOptions(
                  width: 350,
                  height: 60,
                  color: Color(0xFF4B39EF),
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
    );
  }
}
