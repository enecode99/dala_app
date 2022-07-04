import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class RequestInfoWidget extends StatefulWidget {
  const RequestInfoWidget({
    Key key,
    this.homeReq,
  }) : super(key: key);

  final HomeRequestRecord homeReq;

  @override
  _RequestInfoWidgetState createState() => _RequestInfoWidgetState();
}

class _RequestInfoWidgetState extends State<RequestInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 290,
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
        padding: EdgeInsetsDirectional.fromSTEB(5, 20, 5, 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'j8fqjido' /* House Request */,
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
                      'iulghzox' /* Budget: */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Open Sans',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                  Text(
                    functions.formatPriceStr(widget.homeReq.budgetAmount),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Open Sans',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
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
                      'aan9llyf' /* Number of Rooms: */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Open Sans',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                  Text(
                    widget.homeReq.rooms,
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Open Sans',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
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
                      '1mq52evc' /* More Details: */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Open Sans',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(2, 1, 2, 1),
                  child: Text(
                    widget.homeReq.moreDetails,
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Open Sans',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 14,
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
