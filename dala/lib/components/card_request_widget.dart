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
  String dropDownValue1;
  TextEditingController textController;
  String dropDownValue2;

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
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 5),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
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
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('CARD_REQUEST_COMP_TUMA_BTN_ON_TAP');
                  logFirebaseEvent('Button_Backend-Call');

                  final premiumCardCreateData = createPremiumCardRecordData(
                    cardUsername: textController.text,
                    cardName: 'Service Offer',
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
                            onPressed: () => Navigator.pop(alertDialogContext),
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
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'e62qltlv' /* Shughuli */,
                        ),
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Open Sans',
                              fontSize: 14,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                child: FlutterFlowDropDown(
                  initialOption: dropDownValue1 ??=
                      FFLocalizations.of(context).getText(
                    'xjpbfs5l' /* Mfanyabiashara */,
                  ),
                  options: [
                    FFLocalizations.of(context).getText(
                      'xc3zzq1e' /* Mfanyakazi */,
                    ),
                    FFLocalizations.of(context).getText(
                      '3b877ocd' /* Mfanyabiashara */,
                    )
                  ],
                  onChanged: (val) => setState(() => dropDownValue1 = val),
                  width: double.infinity,
                  height: 50,
                  textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Open Sans',
                        color: Colors.black,
                      ),
                  hintText: FFLocalizations.of(context).getText(
                    'aycpbe8u' /* Please select... */,
                  ),
                  fillColor: Colors.white,
                  elevation: 2,
                  borderColor: FlutterFlowTheme.of(context).primaryText,
                  borderWidth: 0,
                  borderRadius: 0,
                  margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                  hidesUnderline: true,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '8q116adn' /* Shughuli */,
                        ),
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Open Sans',
                              fontSize: 14,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                child: FlutterFlowDropDown(
                  initialOption: dropDownValue2 ??=
                      FFLocalizations.of(context).getText(
                    'y59rrgfm' /* Mfanyabiashara */,
                  ),
                  options: [
                    FFLocalizations.of(context).getText(
                      'ejgr3x5p' /* Mfanyakazi */,
                    ),
                    FFLocalizations.of(context).getText(
                      'lv9lolg8' /* Mfanyabiashara */,
                    )
                  ],
                  onChanged: (val) => setState(() => dropDownValue2 = val),
                  width: double.infinity,
                  height: 50,
                  textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Open Sans',
                        color: Colors.black,
                      ),
                  hintText: FFLocalizations.of(context).getText(
                    '0ugp4kbz' /* Please select... */,
                  ),
                  fillColor: Colors.white,
                  elevation: 2,
                  borderColor: FlutterFlowTheme.of(context).primaryText,
                  borderWidth: 0,
                  borderRadius: 0,
                  margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                  hidesUnderline: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
