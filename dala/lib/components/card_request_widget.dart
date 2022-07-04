import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CardRequestWidget extends StatefulWidget {
  const CardRequestWidget({
    Key key,
    this.user,
  }) : super(key: key);

  final UsersRecord user;

  @override
  _CardRequestWidgetState createState() => _CardRequestWidgetState();
}

class _CardRequestWidgetState extends State<CardRequestWidget> {
  String dropDownValue;
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
        height: 300,
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
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 5),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'rnhncw78' /* Majina yako kamili (jina la kw... */,
                                ),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Open Sans',
                                      fontSize: 14,
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                child: TextFormField(
                  controller: textController,
                  onChanged: (_) => EasyDebounce.debounce(
                    'textController',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      'b1c7qnoi' /* andika jina */,
                    ),
                    hintText: FFLocalizations.of(context).getText(
                      '9fggl17j' /*  */,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryText,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryText,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'diq7epsa' /* Aina ya Kadi. */,
                          ),
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Open Sans',
                                    fontSize: 14,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                        child: FlutterFlowDropDown(
                          initialOption: dropDownValue ??=
                              FFLocalizations.of(context).getText(
                            'lmuyk8h0' /* Living Room Furnishing */,
                          ),
                          options: [
                            FFLocalizations.of(context).getText(
                              '7cbltxk8' /* Room Furnishing */,
                            ),
                            FFLocalizations.of(context).getText(
                              'id9lf84t' /* Dinning Furnishing */,
                            ),
                            FFLocalizations.of(context).getText(
                              '0lh6nhg3' /* Living Room Furnishing */,
                            ),
                            FFLocalizations.of(context).getText(
                              'whyj7sut' /* Kitchen Furnishing */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => dropDownValue = val),
                          width: 350,
                          height: 50,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.black,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            'id690in7' /* chagua... */,
                          ),
                          fillColor: Colors.white,
                          elevation: 2,
                          borderColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          borderWidth: 0,
                          borderRadius: 1,
                          margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                          hidesUnderline: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('CARD_REQUEST_COMP_TUMA_BTN_ON_TAP');
                    logFirebaseEvent('Button_Backend-Call');

                    final premiumCardCreateData = createPremiumCardRecordData(
                      cardUsername: textController.text,
                      cardName: dropDownValue,
                      cardEmail: currentUserEmail,
                      cardPhone: currentPhoneNumber,
                      cardTime: getCurrentTimestamp,
                    );
                    await PremiumCardRecord.collection
                        .doc()
                        .set(premiumCardCreateData);
                    logFirebaseEvent('Button_Alert-Dialog');
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('Dala Taarifa'),
                          content: Text(
                              'Tumepokea ujumbe wako, tutakufikia hivi punde kukupa taarifa zaidi.'),
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
                    'v6k6vd58' /* Tuma */,
                  ),
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Open Sans',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
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
