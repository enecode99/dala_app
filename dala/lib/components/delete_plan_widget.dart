import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DeletePlanWidget extends StatefulWidget {
  const DeletePlanWidget({
    Key key,
    this.plan,
  }) : super(key: key);

  final HousePlansRecord plan;

  @override
  _DeletePlanWidgetState createState() => _DeletePlanWidgetState();
}

class _DeletePlanWidgetState extends State<DeletePlanWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: AlignmentDirectional(0.95, 0.45),
            child: InkWell(
              onTap: () async {
                logFirebaseEvent('DELETE_PLAN_COMP_Icon_fxnivlea_ON_TAP');
                logFirebaseEvent('Icon_Navigate-Back');
                Navigator.pop(context);
              },
              child: Icon(
                Icons.close_outlined,
                color: Color(0xFF8B97A2),
                size: 30,
              ),
            ),
          ),
          Icon(
            Icons.delete_forever,
            color: Color(0xFF8B97A2),
            size: 90,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'w3z20sl9' /* Futa Mpango */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title3.override(
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
            padding: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'adlk8xh3' /* Una uhakika unataka kufuta mpa... */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF8B97A2),
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
            child: FFButtonWidget(
              onPressed: () async {
                logFirebaseEvent('DELETE_PLAN_COMP_NDIO_BTN_ON_TAP');
                logFirebaseEvent('Button_Backend-Call');
                await widget.plan.reference.delete();
                logFirebaseEvent('Button_Backend-Call');

                final usersUpdateData = createUsersRecordData(
                  planAvailable: false,
                );
                await currentUserReference.update(usersUpdateData);
                logFirebaseEvent('Button_Navigate-Back');
                Navigator.pop(context);
              },
              text: FFLocalizations.of(context).getText(
                'wkh7j1bd' /* NDIO */,
              ),
              options: FFButtonOptions(
                width: 170,
                height: 50,
                color: FlutterFlowTheme.of(context).primaryColor,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Lexend Deca',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                elevation: 2,
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
    );
  }
}
