import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../house_plan_page/house_plan_page_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HousesPlanPageWidget extends StatefulWidget {
  const HousesPlanPageWidget({
    Key key,
    this.trackHouse,
    this.trackPlan,
  }) : super(key: key);

  final HouseRecord trackHouse;
  final HousePlansRecord trackPlan;

  @override
  _HousesPlanPageWidgetState createState() => _HousesPlanPageWidgetState();
}

class _HousesPlanPageWidgetState extends State<HousesPlanPageWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'HousesPlanPage'});
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsersRecord>>(
      stream: queryUsersRecord(
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
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50,
              ),
            ),
          );
        }
        List<UsersRecord> housesPlanPageUsersRecordList = snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final housesPlanPageUsersRecord =
            housesPlanPageUsersRecordList.isNotEmpty
                ? housesPlanPageUsersRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
            automaticallyImplyLeading: false,
            leading: InkWell(
              onTap: () async {
                logFirebaseEvent('HOUSES_PLAN_Icon_62ru3xtw_ON_TAP');
                logFirebaseEvent('Icon_Navigate-Back');
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_outlined,
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 24,
              ),
            ),
            title: Text(
              FFLocalizations.of(context).getText(
                '6b0m7hrm' /* Chagua Nyumba */,
              ),
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Open Sans',
                    color: FlutterFlowTheme.of(context).primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            actions: [],
            centerTitle: true,
          ),
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                      shape: BoxShape.rectangle,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 5),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.95,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Color(0xFFF1F4F8),
                                width: 2,
                              ),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4, 0, 4, 0),
                                    child: Icon(
                                      Icons.search_rounded,
                                      color: Color(0xFF95A1AC),
                                      size: 24,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4, 0, 0, 0),
                                      child: TextFormField(
                                        controller: textController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'lylor9rr' /* Tafuta  gharama .. */,
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xFF95A1AC),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(0.95, 0),
                                      child: Icon(
                                        Icons.tune_rounded,
                                        color: Color(0xFF95A1AC),
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 75, 0, 0),
                        child: StreamBuilder<List<HouseRecord>>(
                          stream: queryHouseRecord(),
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
                            List<HouseRecord> wrapHouseRecordList =
                                snapshot.data;
                            return Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: List.generate(
                                  wrapHouseRecordList.length, (wrapIndex) {
                                final wrapHouseRecord =
                                    wrapHouseRecordList[wrapIndex];
                                return InkWell(
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'HOUSES_PLAN_Container_uvft1h1a_ON_TAP');
                                    logFirebaseEvent('Container_Navigate-To');
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                        reverseDuration:
                                            Duration(milliseconds: 0),
                                        child: HousePlanPageWidget(
                                          house: wrapHouseRecord,
                                          updatePlan: widget.trackPlan,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x3600000F),
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 12),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0),
                                                    bottomRight:
                                                        Radius.circular(0),
                                                    topLeft: Radius.circular(8),
                                                    topRight:
                                                        Radius.circular(8),
                                                  ),
                                                  child: Image.network(
                                                    valueOrDefault<String>(
                                                      wrapHouseRecord
                                                          .housePhoto,
                                                      'https://images.unsplash.com/photo-1491637639811-60e2756cc1c7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fHByb2R1Y3R8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
                                                    ),
                                                    width: 100,
                                                    height: 110,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 4, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 4, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zryd3k70' /* BEI: */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 4, 0, 0),
                                                  child: Text(
                                                    functions.formatPrice(
                                                        wrapHouseRecord
                                                            .housePrice),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 2, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 4, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4ya6itgx' /* LIPA */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 4, 0, 0),
                                                  child: Text(
                                                    functions.formatPrice15(
                                                        wrapHouseRecord
                                                            .housePrice
                                                            .toDouble()),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.normal,
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
                                );
                              }),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
