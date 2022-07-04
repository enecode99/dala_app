import '../admin_page/admin_page_widget.dart';
import '../admin_page1/admin_page1_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminPanelWidget extends StatefulWidget {
  const AdminPanelWidget({Key key}) : super(key: key);

  @override
  _AdminPanelWidgetState createState() => _AdminPanelWidgetState();
}

class _AdminPanelWidgetState extends State<AdminPanelWidget> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.payments,
              color: FlutterFlowTheme.of(context).primaryColor,
              size: 50,
            ),
            Text(
              FFLocalizations.of(context).getText(
                'sy7nflh6' /* In admin panel you can view us... */,
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
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'ADMIN_PANEL_COMP_VIEW_LISTS_1_BTN_ON_TAP');
                      logFirebaseEvent('Button_Navigate-To');
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AdminPage1Widget(),
                        ),
                      );
                    },
                    text: FFLocalizations.of(context).getText(
                      'hqx1g23l' /* View Lists 1 */,
                    ),
                    options: FFButtonOptions(
                      width: 160,
                      height: 50,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      textStyle: FlutterFlowTheme.of(context)
                          .subtitle2
                          .override(
                            fontFamily: 'Lexend Deca',
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
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
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('ADMIN_PANEL_COMP_VIEW_LIST_BTN_ON_TAP');
                      logFirebaseEvent('Button_Navigate-To');
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                          reverseDuration: Duration(milliseconds: 0),
                          child: AdminPageWidget(),
                        ),
                      );
                    },
                    text: FFLocalizations.of(context).getText(
                      '1gedfti4' /* View List */,
                    ),
                    options: FFButtonOptions(
                      width: 160,
                      height: 50,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      textStyle: FlutterFlowTheme.of(context)
                          .subtitle2
                          .override(
                            fontFamily: 'Lexend Deca',
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
