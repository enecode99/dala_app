import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MortgageInfoWidget extends StatefulWidget {
  const MortgageInfoWidget({
    Key key,
    this.mortgage,
  }) : super(key: key);

  final MortgageRequestRecord mortgage;

  @override
  _MortgageInfoWidgetState createState() => _MortgageInfoWidgetState();
}

class _MortgageInfoWidgetState extends State<MortgageInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Color(0x3B1D2429),
            offset: Offset(0, -3),
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
        padding: EdgeInsetsDirectional.fromSTEB(3, 20, 20, 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'rnfydts5' /* Mortgage Information */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'm35kxaz9' /* Land: */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Open Sans',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Text(
                      widget.mortgage.employmentStatus,
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Open Sans',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'ga2ivzzk' /* Down-payment: */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Open Sans',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Text(
                      widget.mortgage.relationshipStatus,
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Open Sans',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'nhtwvasr' /* Duration: */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Open Sans',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Text(
                      widget.mortgage.homeRent,
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Open Sans',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      '10ndlska' /* Type: */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Open Sans',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Text(
                      widget.mortgage.mortgageType,
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Open Sans',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      '9k7e10xo' /* Monthly Income: */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Open Sans',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Text(
                      widget.mortgage.monthlyIncome,
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Open Sans',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
