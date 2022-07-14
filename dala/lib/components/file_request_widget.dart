import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/payment_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class FileRequestWidget extends StatefulWidget {
  const FileRequestWidget({Key key}) : super(key: key);

  @override
  _FileRequestWidgetState createState() => _FileRequestWidgetState();
}

class _FileRequestWidgetState extends State<FileRequestWidget> {
  String employmentValue;
  TextEditingController textController;
  String titledeedValue;
  String tdurationValue;
  String incomeValue;

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
        height: 530,
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
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '85un8rtk' /* Majina yako kamili (jina la kw... */,
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
                      'fuy6bpxa' /* andika jina */,
                    ),
                    hintText: FFLocalizations.of(context).getText(
                      '0qek5ryv' /*  */,
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
                            '68pcuypi' /* Kuhusu Kiwanja */,
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
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                        child: FlutterFlowDropDown(
                          options: [
                            FFLocalizations.of(context).getText(
                              '712wviiq' /* Employee */,
                            ),
                            FFLocalizations.of(context).getText(
                              'gy6j1y0c' /* Mfanyabiashara */,
                            ),
                            FFLocalizations.of(context).getText(
                              '11ebhy35' /* Mfanyakazi na Mfanyabiashara */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => employmentValue = val),
                          width: 350,
                          height: 50,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.black,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            'iovnckvo' /* chagua... */,
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
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'pghz3upy' /* Una Kiwanja */,
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Open Sans',
                            fontSize: 14,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                    child: FlutterFlowDropDown(
                      options: [
                        FFLocalizations.of(context).getText(
                          '8vm7ela8' /* Una kiwanja chenye hati. */,
                        ),
                        FFLocalizations.of(context).getText(
                          '98vqytxg' /* Huna kiwanja */,
                        ),
                        FFLocalizations.of(context).getText(
                          '60d44eax' /* Una kiwanja kisicho na hati mi... */,
                        )
                      ],
                      onChanged: (val) => setState(() => titledeedValue = val),
                      width: 350,
                      height: 50,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Open Sans',
                                color: Colors.black,
                              ),
                      hintText: FFLocalizations.of(context).getText(
                        'lldhewaq' /* Chagua... */,
                      ),
                      fillColor: Colors.white,
                      elevation: 2,
                      borderColor: FlutterFlowTheme.of(context).secondaryText,
                      borderWidth: 0,
                      borderRadius: 1,
                      margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                      hidesUnderline: true,
                    ),
                  ),
                ],
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
                            'qkivm8pr' /* Mkopo wa miaka mingapi? */,
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
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                        child: FlutterFlowDropDown(
                          options: [
                            FFLocalizations.of(context).getText(
                              'o9p1iu9l' /* Miaka 5 au chini */,
                            ),
                            FFLocalizations.of(context).getText(
                              'n1blm65y' /* Kati ya: miaka 6 mpaka 10 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '0afiqs9s' /* Kati ya: miaka 11 mpaka 15 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '77jowa98' /* Kati ya: miaka 16 mpaka 25 */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => tdurationValue = val),
                          width: 350,
                          height: 50,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.black,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            '7jdc9tjn' /* Chagua... */,
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '38387ydd' /* Kipato cha Mwezi */,
                        ),
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Open Sans',
                              fontSize: 14,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                      child: FlutterFlowDropDown(
                        options: [
                          FFLocalizations.of(context).getText(
                            'xtrzkf80' /* Chini ya 1,000,000/= */,
                          ),
                          FFLocalizations.of(context).getText(
                            'g36tjsau' /* Kati ya: 1,000,000/= mpaka 2,0... */,
                          ),
                          FFLocalizations.of(context).getText(
                            'rbnacgc1' /* Kati ya:  2,000,000/= mpaka 3,... */,
                          ),
                          FFLocalizations.of(context).getText(
                            'go9gg9hb' /* Juu ya 3,000,000/=  */,
                          )
                        ],
                        onChanged: (val) => setState(() => incomeValue = val),
                        width: 350,
                        height: 50,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Open Sans',
                                  color: Colors.black,
                                ),
                        hintText: FFLocalizations.of(context).getText(
                          'bqdh3tmy' /* chagua... */,
                        ),
                        fillColor: Colors.white,
                        elevation: 2,
                        borderColor: FlutterFlowTheme.of(context).secondaryText,
                        borderWidth: 0,
                        borderRadius: 1,
                        margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                        hidesUnderline: true,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent(
                        'FILE_REQUEST_COMP_LIPIA_FAILI_BTN_ON_TAP');
                    logFirebaseEvent('Button_Backend-Call');

                    final userFilesCreateData = createUserFilesRecordData(
                      userName: textController.text,
                      employmentStatus: employmentValue,
                      user: currentUserReference,
                      monthlyIncome: incomeValue,
                      titleDeed: titledeedValue,
                      timeDuration: tdurationValue,
                      currentTime: getCurrentTimestamp,
                    );
                    await UserFilesRecord.collection
                        .doc()
                        .set(userFilesCreateData);
                    logFirebaseEvent('Button_Bottom-Sheet');
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: PaymentWidget(),
                        );
                      },
                    );
                  },
                  text: FFLocalizations.of(context).getText(
                    '0wpnp2bd' /* Lipia Faili */,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
