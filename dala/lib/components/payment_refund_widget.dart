import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentRefundWidget extends StatefulWidget {
  const PaymentRefundWidget({
    Key key,
    this.planTrans,
  }) : super(key: key);

  final HousePlansRecord planTrans;

  @override
  _PaymentRefundWidgetState createState() => _PaymentRefundWidgetState();
}

class _PaymentRefundWidgetState extends State<PaymentRefundWidget> {
  String radioButtonValue;
  TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
      child: Container(
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'hpj5z84c' /* Kiasi: */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF090F13),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Text(
                      functions.formatPrice(widget.planTrans.paidGoal),
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF090F13),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
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
                        's4x4e4sm' /* Namba ya Kupokea (Ya mtandao u... */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF090F13),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: TextFormField(
                  controller: textController,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      '1llr90la' /* weka namba */,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'ddxxt3e7' /* Pokea Kwa  */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF090F13),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowRadioButton(
                      options: [
                        FFLocalizations.of(context).getText(
                          'avujviqa' /* Tigo Pesa */,
                        ),
                        FFLocalizations.of(context).getText(
                          '89e3o7ak' /* M-PESA */,
                        ),
                        FFLocalizations.of(context).getText(
                          'esh48c37' /* Airtell Money */,
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
                      radioButtonColor:
                          FlutterFlowTheme.of(context).primaryColor,
                      inactiveRadioButtonColor: Color(0xFF57636C),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.start,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 44),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('PAYMENT_REFUND_COMP_REJESHA_BTN_ON_TAP');
                    logFirebaseEvent('Button_Backend-Call');

                    final transactionsCreateData = createTransactionsRecordData(
                      transactionDate: getCurrentTimestamp,
                      transactionUser: currentUserReference,
                      transactionPrice: widget.planTrans.paidGoal.toString(),
                      transactionPhone: textController.text,
                      mobileMoney: radioButtonValue,
                      refund: true,
                      completedTransaction: false,
                    );
                    await TransactionsRecord.collection
                        .doc()
                        .set(transactionsCreateData);
                    logFirebaseEvent('Button_Backend-Call');

                    final housePlansUpdateData = createHousePlansRecordData(
                      paidGoal: functions.deffPaid(
                          widget.planTrans.paidGoal.toString(),
                          widget.planTrans.paidGoal),
                    );
                    await widget.planTrans.reference
                        .update(housePlansUpdateData);
                    logFirebaseEvent('Button_Alert-Dialog');
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('Kurudisha Pesa'),
                          content: Text(
                              'Pesa yako itarudishwa ndani ya siku 5 za kazi.'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                    logFirebaseEvent('Button_Navigate-Back');
                    Navigator.pop(context);
                  },
                  text: FFLocalizations.of(context).getText(
                    'k7y2n40k' /* REJESHA */,
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
