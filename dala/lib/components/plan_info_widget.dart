import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/remove_pending_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PlanInfoWidget extends StatefulWidget {
  const PlanInfoWidget({
    Key key,
    this.planUser,
    this.plan,
  }) : super(key: key);

  final UsersRecord planUser;
  final HousePlansRecord plan;

  @override
  _PlanInfoWidgetState createState() => _PlanInfoWidgetState();
}

class _PlanInfoWidgetState extends State<PlanInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
        padding: EdgeInsetsDirectional.fromSTEB(3, 0, 20, 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      '90fy4tq2' /* House Plan Information */,
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
            ),
            StreamBuilder<List<TransactionsRecord>>(
              stream: queryTransactionsRecord(
                queryBuilder: (transactionsRecord) => transactionsRecord
                    .where('transaction_user',
                        isEqualTo: widget.planUser.reference)
                    .orderBy('transaction_date', descending: true),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: SpinKitCircle(
                        color: FlutterFlowTheme.of(context).primaryColor,
                        size: 50,
                      ),
                    ),
                  );
                }
                List<TransactionsRecord> columnTransactionsRecordList =
                    snapshot.data;
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(columnTransactionsRecordList.length,
                        (columnIndex) {
                      final columnTransactionsRecord =
                          columnTransactionsRecordList[columnIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                color: Color(0x28000000),
                                offset: Offset(0, 1),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFDBE2E7),
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/images/Dala_(3).png',
                                        width: 40,
                                        height: 40,
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4, 0, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 12, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 4, 0, 0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'c4lo4jww' /* Amount: */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF090F13),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 4, 0, 0),
                                              child: Text(
                                                functions.formatPriceStr(
                                                    columnTransactionsRecord
                                                        .transactionPrice),
                                                textAlign: TextAlign.end,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF8B97A2),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 4, 0, 0),
                                              child: Text(
                                                dateTimeFormat(
                                                    'd/M h:mm a',
                                                    columnTransactionsRecord
                                                        .transactionDate),
                                                textAlign: TextAlign.end,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF8B97A2),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 12, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 4, 0, 0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ksmq6fst' /* Transaction Status */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF090F13),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 4, 0, 0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'etui13ys' /* PENDING */,
                                                ),
                                                textAlign: TextAlign.end,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFFDE0A0A),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 0, 0, 0),
                                              child: InkWell(
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'PLAN_INFO_COMP_Icon_s959f011_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Icon_Bottom-Sheet');
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    context: context,
                                                    builder: (context) {
                                                      return Padding(
                                                        padding: MediaQuery.of(
                                                                context)
                                                            .viewInsets,
                                                        child:
                                                            RemovePendingWidget(
                                                          transaction:
                                                              columnTransactionsRecord,
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Icon(
                                                  Icons.expand_more_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  size: 30,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 0, 0, 0),
                                              child: InkWell(
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'PLAN_INFO_COMP_Icon_wp54qkth_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Icon_Backend-Call');
                                                  await columnTransactionsRecord
                                                      .reference
                                                      .delete();
                                                  logFirebaseEvent(
                                                      'Icon_Backend-Call');

                                                  final housePlansUpdateData =
                                                      createHousePlansRecordData(
                                                    paidGoal: functions.deffPaid(
                                                        columnTransactionsRecord
                                                            .transactionPrice,
                                                        widget.plan.paidGoal),
                                                  );
                                                  await widget.plan.reference
                                                      .update(
                                                          housePlansUpdateData);
                                                },
                                                child: Icon(
                                                  Icons.delete_forever,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  size: 30,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
