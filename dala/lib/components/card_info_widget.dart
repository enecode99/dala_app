import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CardInfoWidget extends StatefulWidget {
  const CardInfoWidget({
    Key key,
    this.card,
  }) : super(key: key);

  final PremiumCardRecord card;

  @override
  _CardInfoWidgetState createState() => _CardInfoWidgetState();
}

class _CardInfoWidgetState extends State<CardInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Color(0x3B1D2429),
            offset: Offset(0, -3),
          )
        ],
        borderRadius: BorderRadius.circular(0),
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
                    've6htmpi' /* Card  Information */,
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
                      'akg0izhd' /* Card Name: */,
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
                      widget.card.cardName,
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
                      '0we5i54u' /* Username: */,
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
                      widget.card.cardUsername,
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
                      'i4ydwn9d' /* Request Time: */,
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
                      dateTimeFormat('d/M h:mm a', widget.card.cardTime),
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
