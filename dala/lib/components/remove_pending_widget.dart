import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class RemovePendingWidget extends StatefulWidget {
  const RemovePendingWidget({
    Key key,
    this.transaction,
  }) : super(key: key);

  final TransactionsRecord transaction;

  @override
  _RemovePendingWidgetState createState() => _RemovePendingWidgetState();
}

class _RemovePendingWidgetState extends State<RemovePendingWidget> {
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
                'fgsg53vr' /* Add or remove pending from a t... */,
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
                          'REMOVE_PENDING_REMOVE_PENDING_BTN_ON_TAP');
                      logFirebaseEvent('Button_Backend-Call');

                      final transactionsUpdateData =
                          createTransactionsRecordData(
                        completedTransaction: true,
                      );
                      await widget.transaction.reference
                          .update(transactionsUpdateData);
                      logFirebaseEvent('Button_Navigate-Back');
                      Navigator.pop(context);
                    },
                    text: FFLocalizations.of(context).getText(
                      '66g6zug5' /* Remove Pending */,
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
                      logFirebaseEvent('REMOVE_PENDING_ADD_PENDING_BTN_ON_TAP');
                      logFirebaseEvent('Button_Backend-Call');

                      final transactionsUpdateData =
                          createTransactionsRecordData(
                        completedTransaction: false,
                      );
                      await widget.transaction.reference
                          .update(transactionsUpdateData);
                      logFirebaseEvent('Button_Navigate-Back');
                      Navigator.pop(context);
                    },
                    text: FFLocalizations.of(context).getText(
                      'rotzyrsi' /* Add Pending */,
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
