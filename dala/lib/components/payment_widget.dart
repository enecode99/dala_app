import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/dala_airtel_money_widget.dart';
import '../components/dala_banks_widget.dart';
import '../components/dala_c_r_d_b_widget.dart';
import '../components/dala_m_p_e_s_a_widget.dart';
import '../components/dala_n_m_b_widget.dart';
import '../components/dala_tigo_pesa_widget.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentWidget extends StatefulWidget {
  const PaymentWidget({
    Key key,
    this.planTrans,
  }) : super(key: key);

  final HousePlansRecord planTrans;

  @override
  _PaymentWidgetState createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget> {
  String radioButtonValue;
  TextEditingController textController1;
  TextEditingController textController2;

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'ryrqbmm5' /* Namba ya Kutuma (Ya mtandao ul... */,
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
                  controller: textController1,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      '5wzuf4ah' /* weka namba */,
                    ),
                    hintText: FFLocalizations.of(context).getText(
                      'pnx32sgc' /*  */,
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
                        'l4amvwjf' /* Kiasi */,
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
                  controller: textController2,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      'cn4r7k69' /* weka kiasi */,
                    ),
                    hintText: FFLocalizations.of(context).getText(
                      '0si0aovf' /*  */,
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
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '2gfct5pp' /* Lipa Kwa  */,
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
                          '9510hvp4' /* Tigo Pesa */,
                        ),
                        FFLocalizations.of(context).getText(
                          'icgobz49' /* M-PESA */,
                        ),
                        FFLocalizations.of(context).getText(
                          '3nx91jln' /* Airtel Money */,
                        ),
                        FFLocalizations.of(context).getText(
                          'dwcwy5co' /* CRDB Bank */,
                        ),
                        FFLocalizations.of(context).getText(
                          'l6scgmjb' /* NMB Bank */,
                        ),
                        FFLocalizations.of(context).getText(
                          'swzxrctn' /* Other Banks */,
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
                    logFirebaseEvent('PAYMENT_COMP_LIPA_BTN_ON_TAP');
                    if (functions.minTrans(int.parse(textController2.text))) {
                      if ((radioButtonValue) == 'Tigo Pesa') {
                        logFirebaseEvent('Button_Backend-Call');

                        final transactionsCreateData =
                            createTransactionsRecordData(
                          transactionDate: getCurrentTimestamp,
                          transactionUser: currentUserReference,
                          transactionPrice: textController2.text,
                          transactionPhone: textController1.text,
                          mobileMoney: radioButtonValue,
                          refund: false,
                          completedTransaction: false,
                        );
                        await TransactionsRecord.collection
                            .doc()
                            .set(transactionsCreateData);
                        logFirebaseEvent('Button_Backend-Call');

                        final housePlansUpdateData = createHousePlansRecordData(
                          paidGoal: functions.sumPaid(
                              textController2.text, widget.planTrans.paidGoal),
                        );
                        await widget.planTrans.reference
                            .update(housePlansUpdateData);
                        logFirebaseEvent('Button_Bottom-Sheet');
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.of(context).viewInsets,
                              child: DalaTigoPesaWidget(
                                payment: textController2.text,
                              ),
                            );
                          },
                        );
                        logFirebaseEvent('Button_Navigate-Back');
                        Navigator.pop(context);
                      } else {
                        if ((radioButtonValue) == 'M-PESA') {
                          logFirebaseEvent('Button_Backend-Call');

                          final transactionsCreateData =
                              createTransactionsRecordData(
                            transactionDate: getCurrentTimestamp,
                            transactionUser: currentUserReference,
                            transactionPrice: textController2.text,
                            transactionPhone: textController1.text,
                            mobileMoney: radioButtonValue,
                            refund: false,
                            completedTransaction: false,
                          );
                          await TransactionsRecord.collection
                              .doc()
                              .set(transactionsCreateData);
                          logFirebaseEvent('Button_Backend-Call');

                          final housePlansUpdateData =
                              createHousePlansRecordData(
                            paidGoal: functions.sumPaid(textController2.text,
                                widget.planTrans.paidGoal),
                          );
                          await widget.planTrans.reference
                              .update(housePlansUpdateData);
                          logFirebaseEvent('Button_Bottom-Sheet');
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.of(context).viewInsets,
                                child: DalaMPESAWidget(
                                  payment: textController2.text,
                                ),
                              );
                            },
                          );
                          logFirebaseEvent('Button_Navigate-Back');
                          Navigator.pop(context);
                        } else {
                          if ((radioButtonValue) == 'Airtel Money') {
                            logFirebaseEvent('Button_Backend-Call');

                            final transactionsCreateData =
                                createTransactionsRecordData(
                              transactionDate: getCurrentTimestamp,
                              transactionUser: currentUserReference,
                              transactionPrice: textController2.text,
                              transactionPhone: textController1.text,
                              mobileMoney: radioButtonValue,
                              refund: false,
                              completedTransaction: false,
                            );
                            await TransactionsRecord.collection
                                .doc()
                                .set(transactionsCreateData);
                            logFirebaseEvent('Button_Backend-Call');

                            final housePlansUpdateData =
                                createHousePlansRecordData(
                              paidGoal: functions.sumPaid(textController2.text,
                                  widget.planTrans.paidGoal),
                            );
                            await widget.planTrans.reference
                                .update(housePlansUpdateData);
                            logFirebaseEvent('Button_Bottom-Sheet');
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: DalaAirtelMoneyWidget(
                                    payment: textController2.text,
                                  ),
                                );
                              },
                            );
                            logFirebaseEvent('Button_Navigate-Back');
                            Navigator.pop(context);
                          } else {
                            if ((radioButtonValue) == 'CRDB Bank') {
                              logFirebaseEvent('Button_Backend-Call');

                              final transactionsCreateData =
                                  createTransactionsRecordData(
                                transactionDate: getCurrentTimestamp,
                                transactionUser: currentUserReference,
                                transactionPrice: textController2.text,
                                transactionPhone: textController1.text,
                                mobileMoney: radioButtonValue,
                                refund: false,
                                completedTransaction: false,
                              );
                              await TransactionsRecord.collection
                                  .doc()
                                  .set(transactionsCreateData);
                              logFirebaseEvent('Button_Backend-Call');

                              final housePlansUpdateData =
                                  createHousePlansRecordData(
                                paidGoal: functions.sumPaid(
                                    textController2.text,
                                    widget.planTrans.paidGoal),
                              );
                              await widget.planTrans.reference
                                  .update(housePlansUpdateData);
                              logFirebaseEvent('Button_Bottom-Sheet');
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.of(context).viewInsets,
                                    child: DalaCRDBWidget(
                                      payment: textController2.text,
                                    ),
                                  );
                                },
                              );
                              logFirebaseEvent('Button_Navigate-Back');
                              Navigator.pop(context);
                            } else {
                              if ((radioButtonValue) == 'NMB Bank') {
                                logFirebaseEvent('Button_Backend-Call');

                                final transactionsCreateData =
                                    createTransactionsRecordData(
                                  transactionDate: getCurrentTimestamp,
                                  transactionUser: currentUserReference,
                                  transactionPrice: textController2.text,
                                  transactionPhone: textController1.text,
                                  mobileMoney: radioButtonValue,
                                  refund: false,
                                  completedTransaction: false,
                                );
                                await TransactionsRecord.collection
                                    .doc()
                                    .set(transactionsCreateData);
                                logFirebaseEvent('Button_Backend-Call');

                                final housePlansUpdateData =
                                    createHousePlansRecordData(
                                  paidGoal: functions.sumPaid(
                                      textController2.text,
                                      widget.planTrans.paidGoal),
                                );
                                await widget.planTrans.reference
                                    .update(housePlansUpdateData);
                                logFirebaseEvent('Button_Bottom-Sheet');
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding:
                                          MediaQuery.of(context).viewInsets,
                                      child: DalaNMBWidget(
                                        payment: textController2.text,
                                      ),
                                    );
                                  },
                                );
                                logFirebaseEvent('Button_Navigate-Back');
                                Navigator.pop(context);
                              } else {
                                if ((radioButtonValue) == 'Other Banks') {
                                  logFirebaseEvent('Button_Backend-Call');

                                  final transactionsCreateData =
                                      createTransactionsRecordData(
                                    transactionDate: getCurrentTimestamp,
                                    transactionUser: currentUserReference,
                                    transactionPrice: textController2.text,
                                    transactionPhone: textController1.text,
                                    mobileMoney: radioButtonValue,
                                    refund: false,
                                    completedTransaction: false,
                                  );
                                  await TransactionsRecord.collection
                                      .doc()
                                      .set(transactionsCreateData);
                                  logFirebaseEvent('Button_Backend-Call');

                                  final housePlansUpdateData =
                                      createHousePlansRecordData(
                                    paidGoal: functions.sumPaid(
                                        textController2.text,
                                        widget.planTrans.paidGoal),
                                  );
                                  await widget.planTrans.reference
                                      .update(housePlansUpdateData);
                                  logFirebaseEvent('Button_Bottom-Sheet');
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: DalaBanksWidget(
                                          payment: textController2.text,
                                        ),
                                      );
                                    },
                                  );
                                  logFirebaseEvent('Button_Navigate-Back');
                                  Navigator.pop(context);
                                } else {
                                  logFirebaseEvent('Button_Alert-Dialog');
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert!'),
                                        content: Text(
                                            'Chagua njia ya malipo ili ufanye malipo.'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                              }
                            }
                          }
                        }
                      }
                    } else {
                      logFirebaseEvent('Button_Alert-Dialog');
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('Samahani'),
                            content: Text(
                                'Uwezi kuweka chini ya kiasi cha 100,000/='),
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
                    }
                  },
                  text: FFLocalizations.of(context).getText(
                    'wwvtf18z' /* LIPA */,
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
