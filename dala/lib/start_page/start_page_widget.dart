import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../house_renovation/house_renovation_widget.dart';
import '../main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPageWidget extends StatefulWidget {
  const StartPageWidget({Key key}) : super(key: key);

  @override
  _StartPageWidgetState createState() => _StartPageWidgetState();
}

class _StartPageWidgetState extends State<StartPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'StartPage'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 20),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: Image.asset(
                    'assets/images/Screenshot_20220430_115604.jpg',
                  ).image,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    color: Color(0x33000000),
                    offset: Offset(0, 2),
                  )
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 160, 0, 0),
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  alignment: AlignmentDirectional(0, -0.25),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'y3eqks23' /* Jenga Nyumba */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF090F13),
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'w0kgn48g' /* Ukilipa 12.5% ya gharama ya uj... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF57636C),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'START_PAGE_PAGE_Button-Reserve_ON_TAP');
                                  logFirebaseEvent(
                                      'Button-Reserve_Navigate-To');
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                      reverseDuration:
                                          Duration(milliseconds: 0),
                                      child:
                                          NavBarPage(initialPage: 'HomePage'),
                                    ),
                                  );
                                  logFirebaseEvent(
                                      'Button-Reserve_Backend-Call');

                                  final usersUpdateData = createUsersRecordData(
                                    renovation: false,
                                  );
                                  await currentUserReference
                                      .update(usersUpdateData);
                                },
                                text: FFLocalizations.of(context).getText(
                                  '5cdkstic' /* Fungua */,
                                ),
                                options: FFButtonOptions(
                                  width: 120,
                                  height: 40,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  textStyle: GoogleFonts.getFont(
                                    'Lexend Deca',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 14,
                                  ),
                                  elevation: 3,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: 8,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
            child: Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: Image.asset(
                    'assets/images/images_(22)[1].jpeg',
                  ).image,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    color: Color(0x33000000),
                    offset: Offset(0, 2),
                  )
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 160, 0, 0),
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  alignment: AlignmentDirectional(0, 0.050000000000000044),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'l9qlefr1' /* Karabati Nyumba */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF090F13),
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Expanded(
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'mtmusb1r' /* Fanya ukarabati, ongeza vyumba... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF57636C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        StreamBuilder<List<HouseRecord>>(
                          stream: queryHouseRecord(
                            queryBuilder: (houseRecord) => houseRecord
                                .where('house_renovation', isEqualTo: true),
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: SpinKitCircle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    size: 50,
                                  ),
                                ),
                              );
                            }
                            List<HouseRecord> columnHouseRecordList =
                                snapshot.data;
                            // Return an empty Container when the document does not exist.
                            if (snapshot.data.isEmpty) {
                              return Container();
                            }
                            final columnHouseRecord =
                                columnHouseRecordList.isNotEmpty
                                    ? columnHouseRecordList.first
                                    : null;
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'START_PAGE_PAGE_Button-Reserve_ON_TAP');
                                      logFirebaseEvent(
                                          'Button-Reserve_Navigate-To');
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                          reverseDuration:
                                              Duration(milliseconds: 0),
                                          child: HouseRenovationWidget(
                                            house: columnHouseRecord,
                                          ),
                                        ),
                                      );
                                      logFirebaseEvent(
                                          'Button-Reserve_Backend-Call');

                                      final usersUpdateData =
                                          createUsersRecordData(
                                        renovation: true,
                                      );
                                      await currentUserReference
                                          .update(usersUpdateData);
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'fc6shd4g' /* Fungua */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 120,
                                      height: 40,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: GoogleFonts.getFont(
                                        'Lexend Deca',
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                      elevation: 3,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 8,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
