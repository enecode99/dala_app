import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class FinnishHouseWidget extends StatefulWidget {
  const FinnishHouseWidget({Key key}) : super(key: key);

  @override
  _FinnishHouseWidgetState createState() => _FinnishHouseWidgetState();
}

class _FinnishHouseWidgetState extends State<FinnishHouseWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240,
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
        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.house_siding,
              color: FlutterFlowTheme.of(context).primaryColor,
              size: 50,
            ),
            Text(
              FFLocalizations.of(context).getText(
                'yydnytub' /* Weka kidogo kidogo mpaka 12.5%... */,
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
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: FFLocalizations.of(context).getText(
                  '8wx1kiqi' /* Malizia Ujenzi wa Nyumba Yako */,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
