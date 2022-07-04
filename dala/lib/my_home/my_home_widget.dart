import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../change_language_page/change_language_page_widget.dart';
import '../components/home_req_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../house_page/house_page_widget.dart';
import '../mortgage_service_page/mortgage_service_page_widget.dart';
import '../my_card_page/my_card_page_widget.dart';
import '../policy/policy_widget.dart';
import '../renovation_service_page/renovation_service_page_widget.dart';
import '../sign_in_page/sign_in_page_widget.dart';
import '../signature_page/signature_page_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomeWidget extends StatefulWidget {
  const MyHomeWidget({Key key}) : super(key: key);

  @override
  _MyHomeWidgetState createState() => _MyHomeWidgetState();
}

class _MyHomeWidgetState extends State<MyHomeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'MyHome'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.menu,
            color: FlutterFlowTheme.of(context).primaryBackground,
            size: 30,
          ),
          onPressed: () async {
            logFirebaseEvent('MY_HOME_PAGE_menu_ICN_ON_TAP');
            logFirebaseEvent('IconButton_Drawer');
            scaffoldKey.currentState.openDrawer();
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            '229dck26' /* Nyumba yangu */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Open Sans',
                color: FlutterFlowTheme.of(context).primaryBackground,
                fontSize: 18,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: Color(0xFFF1F4F8),
      drawer: Drawer(
        elevation: 16,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 305,
                  height: 150,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryColor,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                          child: Container(
                            width: 50,
                            height: 50,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/profile.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 30, 0, 0),
                          child: Text(
                            currentUserEmail,
                            style: FlutterFlowTheme.of(context).title2.override(
                                  fontFamily: 'Open Sans',
                                  fontSize: 20,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
              child: InkWell(
                onTap: () async {
                  logFirebaseEvent('MY_HOME_PAGE_Row_niokblew_ON_TAP');
                  logFirebaseEvent('Row_Navigate-To');
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                      reverseDuration: Duration(milliseconds: 0),
                      child: MortgageServicePageWidget(),
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.house_outlined,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 35,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '3zgd4ykj' /* Huduma ya Ujenzi */,
                        ),
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 15,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
              child: InkWell(
                onTap: () async {
                  logFirebaseEvent('MY_HOME_PAGE_Row_cy9zkas3_ON_TAP');
                  logFirebaseEvent('Row_Navigate-To');
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                      reverseDuration: Duration(milliseconds: 0),
                      child: RenovationServicePageWidget(),
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.house_siding_rounded,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 35,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'nnni833j' /* Huduma ya Ukarabati */,
                        ),
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 15,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
              child: InkWell(
                onTap: () async {
                  logFirebaseEvent('MY_HOME_PAGE_Row_1bkesaxe_ON_TAP');
                  logFirebaseEvent('Row_Navigate-To');
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                      reverseDuration: Duration(milliseconds: 0),
                      child: PolicyWidget(),
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.policy,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 35,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'j78576xn' /* Vigezo na Masharti */,
                        ),
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 15,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
              child: InkWell(
                onTap: () async {
                  logFirebaseEvent('MY_HOME_PAGE_Row_7r8bxt86_ON_TAP');
                  logFirebaseEvent('Row_Navigate-To');
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                      reverseDuration: Duration(milliseconds: 0),
                      child: ChangeLanguagePageWidget(),
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.language_rounded,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 35,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'bw7jq0mf' /* Badili Lugha */,
                        ),
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 15,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
              child: InkWell(
                onTap: () async {
                  logFirebaseEvent('MY_HOME_PAGE_Row_3nrudq07_ON_TAP');
                  logFirebaseEvent('Row_Navigate-To');
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                      reverseDuration: Duration(milliseconds: 0),
                      child: MyCardPageWidget(),
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.card_giftcard,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 35,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'wyowrz2m' /* Kadi Yangu */,
                        ),
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 15,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
              child: InkWell(
                onTap: () async {
                  logFirebaseEvent('MY_HOME_PAGE_Row_2est84yn_ON_TAP');
                  logFirebaseEvent('Row_Navigate-To');
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                      reverseDuration: Duration(milliseconds: 0),
                      child: SignaturePageWidget(),
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 35,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'tvkwbino' /* Taarifa za Kadi */,
                        ),
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 15,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('MY_HOME_PAGE_SIGN_OUT_BTN_ON_TAP');
                  logFirebaseEvent('Button_Auth');
                  await signOut();
                  logFirebaseEvent('Button_Navigate-To');
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 500),
                      reverseDuration: Duration(milliseconds: 500),
                      child: SignInPageWidget(),
                    ),
                  );
                },
                text: FFLocalizations.of(context).getText(
                  'hyergxpe' /* Sign Out */,
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
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(3, 10, 3, 12),
                child: Material(
                  color: Colors.transparent,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 75,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'i7yxlppb' /* Tukutengenezee michoro 
bajeti... */
                                  ,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'MY_HOME_PAGE_AGIZA_BTN_ON_TAP');
                                    logFirebaseEvent('Button_Bottom-Sheet');
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.of(context).viewInsets,
                                          child: HomeReqWidget(),
                                        );
                                      },
                                    );
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'rvv3aqq9' /* Agiza */,
                                  ),
                                  options: FFButtonOptions(
                                    width: 130,
                                    height: 40,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
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
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: StreamBuilder<List<HouseRecord>>(
              stream: queryHouseRecord(
                queryBuilder: (houseRecord) => houseRecord.where('house_buyer',
                    arrayContains: currentUserReference),
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
                List<HouseRecord> listViewHouseRecordList = snapshot.data;
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemCount: listViewHouseRecordList.length,
                  itemBuilder: (context, listViewIndex) {
                    final listViewHouseRecord =
                        listViewHouseRecordList[listViewIndex];
                    return Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                      child: InkWell(
                        onTap: () async {
                          logFirebaseEvent(
                              'MY_HOME_PAGE_Container_z950xnys_ON_TAP');
                          logFirebaseEvent('Container_Navigate-To');
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                              reverseDuration: Duration(milliseconds: 0),
                              child: HousePageWidget(
                                house: listViewHouseRecord,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
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
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(0),
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8),
                                      ),
                                      child: Image.network(
                                        listViewHouseRecord.housePhoto,
                                        width: 100,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.2,
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.13, 0.78),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 0, 0, 0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'euojpbe5' /* BEI : */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .subtitle1
                                                    .override(
                                                      fontFamily: 'Open Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.13, 0.78),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 0, 0, 0),
                                              child: Text(
                                                functions.formatPrice(
                                                    listViewHouseRecord
                                                        .housePrice),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .subtitle1
                                                    .override(
                                                      fontFamily: 'Open Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-0.41, 0.87),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 5),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'cnpvu8zn' /* LIPA : */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-0.41, 0.87),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 5),
                                      child: Text(
                                        functions.formatPrice15(
                                            listViewHouseRecord.housePrice
                                                .toDouble()),
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              fontSize: 16,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 3),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          3, 3, 3, 3),
                                      child: AuthUserStreamWidget(
                                        child: Text(
                                          valueOrDefault(
                                              currentUserDocument?.tipInfo, ''),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
