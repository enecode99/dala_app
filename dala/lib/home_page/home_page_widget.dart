import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../card_page/card_page_widget.dart';
import '../change_language_page/change_language_page_widget.dart';
import '../components/admin_panel_widget.dart';
import '../components/home_req_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../house_page/house_page_widget.dart';
import '../house_type_page1/house_type_page1_widget.dart';
import '../house_type_page2/house_type_page2_widget.dart';
import '../house_type_page3/house_type_page3_widget.dart';
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

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'HomePage'});
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
        List<UsersRecord> homePageUsersRecordList = snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final homePageUsersRecord = homePageUsersRecordList.isNotEmpty
            ? homePageUsersRecordList.first
            : null;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            leading: InkWell(
              onTap: () async {
                logFirebaseEvent('HOME_PAGE_PAGE_Icon_tlnsw8kh_ON_TAP');
                logFirebaseEvent('Icon_Drawer');
                scaffoldKey.currentState.openDrawer();
              },
              child: Icon(
                Icons.menu,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 24,
              ),
            ),
            title: Text(
              FFLocalizations.of(context).getText(
                'oaj9qn5v' /* Dala */,
              ),
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Open Sans',
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            actions: [
              Visibility(
                visible:
                    valueOrDefault(currentUserDocument?.ownerAdmin, false) ??
                        true,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                  child: AuthUserStreamWidget(
                    child: InkWell(
                      onTap: () async {
                        logFirebaseEvent('HOME_PAGE_PAGE_Icon_plhgn785_ON_TAP');
                        logFirebaseEvent('Icon_Bottom-Sheet');
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.of(context).viewInsets,
                              child: AdminPanelWidget(),
                            );
                          },
                        );
                      },
                      child: Icon(
                        Icons.add_circle_sharp,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ],
            centerTitle: true,
          ),
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 30, 0, 0),
                              child: Text(
                                currentUserEmail,
                                style: FlutterFlowTheme.of(context)
                                    .title2
                                    .override(
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
                      logFirebaseEvent('HOME_PAGE_PAGE_Row_56t8owuy_ON_TAP');
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
                              'u5znnfcm' /* Huduma ya Ujenzi */,
                            ),
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Open Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
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
                      logFirebaseEvent('HOME_PAGE_PAGE_Row_0t1o3l2p_ON_TAP');
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
                              '11jcdddy' /* Huduma ya Ukarabati */,
                            ),
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Open Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
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
                      logFirebaseEvent('HOME_PAGE_PAGE_Row_8pkzymgt_ON_TAP');
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
                              '2oqza74j' /* Vigezo na Masharti */,
                            ),
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Open Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
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
                      logFirebaseEvent('HOME_PAGE_PAGE_Row_nwkgbut3_ON_TAP');
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
                              '56nf56eh' /* Badili Lugha */,
                            ),
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Open Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
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
                      logFirebaseEvent('HOME_PAGE_PAGE_Row_siqtuj7c_ON_TAP');
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
                              'twr5gdub' /* Kadi Yangu */,
                            ),
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Open Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
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
                      logFirebaseEvent('HOME_PAGE_PAGE_Row_jlg84vbs_ON_TAP');
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
                              '07o8t9jj' /* Taarifa za Kadi */,
                            ),
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Open Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
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
                      logFirebaseEvent('HOME_PAGE_PAGE_SIGN_OUT_BTN_ON_TAP');
                      logFirebaseEvent('Button_Auth');
                      await signOut();
                      logFirebaseEvent('Button_Navigate-To');
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                          reverseDuration: Duration(milliseconds: 0),
                          child: SignInPageWidget(),
                        ),
                      );
                    },
                    text: FFLocalizations.of(context).getText(
                      '7w2heh2d' /* Sign Out */,
                    ),
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
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
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'sdcj697o' /* Nyumba za bei 20mil - 50 mil */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        25, 3, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'HOME_PAGE_PAGE_FUNGUA_BTN_ON_TAP');
                                        logFirebaseEvent('Button_Navigate-To');
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                            reverseDuration:
                                                Duration(milliseconds: 0),
                                            child: HouseTypePage1Widget(),
                                          ),
                                        );
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'qns3u34s' /* Fungua */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 80,
                                        height: 30,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(3, 10, 3, 20),
                              child: StreamBuilder<List<HouseRecord>>(
                                stream: queryHouseRecord(
                                  queryBuilder: (houseRecord) =>
                                      houseRecord.where('house_price',
                                          isLessThanOrEqualTo: 50000000),
                                  limit: 5,
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
                                  List<HouseRecord> row1HouseRecordList =
                                      snapshot.data;
                                  return SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: List.generate(
                                          row1HouseRecordList.length,
                                          (row1Index) {
                                        final row1HouseRecord =
                                            row1HouseRecordList[row1Index];
                                        return Visibility(
                                          visible: (row1HouseRecord
                                                  .houseRenovation) !=
                                              true,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3, 0, 5, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'HOME_PAGE_PAGE_Container_s8ppvpwz_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_Navigate-To');
                                                await Navigator.push(
                                                  context,
                                                  PageTransition(
                                                    type:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 0),
                                                    reverseDuration: Duration(
                                                        milliseconds: 0),
                                                    child: HousePageWidget(
                                                      house: row1HouseRecord,
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
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
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 12),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        0),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        8),
                                                                topRight: Radius
                                                                    .circular(
                                                                        8),
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                valueOrDefault<
                                                                    String>(
                                                                  row1HouseRecord
                                                                      .housePhoto,
                                                                  'https://images.unsplash.com/photo-1491637639811-60e2756cc1c7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fHByb2R1Y3R8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
                                                                ),
                                                                width: 100,
                                                                height: 110,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 4, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'osuov6ka' /* BEI: */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                functions.formatPrice(
                                                                    row1HouseRecord
                                                                        .housePrice),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
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
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 2, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'uxxzcv6c' /* LIPA */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          4,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                functions.formatPrice15(
                                                                    row1HouseRecord
                                                                        .housePrice
                                                                        .toDouble()),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
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
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                  );
                                },
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
                                List<HouseRecord> stackHouseRecordList =
                                    snapshot.data;
                                // Return an empty Container when the document does not exist.
                                if (snapshot.data.isEmpty) {
                                  return Container();
                                }
                                final stackHouseRecord =
                                    stackHouseRecordList.isNotEmpty
                                        ? stackHouseRecordList.first
                                        : null;
                                return Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(35.83, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            3, 0, 3, 0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image.asset(
                                            'assets/images/20220621_160305_0000[1].png',
                                            width: double.infinity,
                                            height: 180,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.88, 0.66),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 135, 0, 5),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'HOME_PAGE_PAGE_FUNGUA_BTN_ON_TAP');
                                            logFirebaseEvent(
                                                'Button_Navigate-To');
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                                reverseDuration:
                                                    Duration(milliseconds: 0),
                                                child: CardPageWidget(),
                                              ),
                                            );
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'as5i6c7a' /* Fungua */,
                                          ),
                                          options: FFButtonOptions(
                                            width: 130,
                                            height: 40,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Open Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.73, -0.3),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          'assets/images/offer.gif',
                                          width: 100,
                                          height: 130,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 15, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '4ohutev4' /* Nyumba za bei 51mil - 100 mil */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        25, 0, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'HOME_PAGE_PAGE_FUNGUA_BTN_ON_TAP');
                                        logFirebaseEvent('Button_Navigate-To');
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                            reverseDuration:
                                                Duration(milliseconds: 0),
                                            child: HouseTypePage2Widget(),
                                          ),
                                        );
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'jml0h5qk' /* Fungua */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 80,
                                        height: 30,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(3, 10, 3, 20),
                              child: StreamBuilder<List<HouseRecord>>(
                                stream: queryHouseRecord(
                                  queryBuilder: (houseRecord) => houseRecord
                                      .where('house_price',
                                          isLessThanOrEqualTo: 100000000)
                                      .where('house_price',
                                          isGreaterThan: 50000000),
                                  limit: 5,
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
                                  List<HouseRecord> row1HouseRecordList =
                                      snapshot.data;
                                  return SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: List.generate(
                                          row1HouseRecordList.length,
                                          (row1Index) {
                                        final row1HouseRecord =
                                            row1HouseRecordList[row1Index];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  3, 0, 5, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'HOME_PAGE_PAGE_Container_8tm77kqk_ON_TAP');
                                              logFirebaseEvent(
                                                  'Container_Navigate-To');
                                              await Navigator.push(
                                                context,
                                                PageTransition(
                                                  type: PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                  reverseDuration:
                                                      Duration(milliseconds: 0),
                                                  child: HousePageWidget(
                                                    house: row1HouseRecord,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
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
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 12),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0),
                                                              topLeft: Radius
                                                                  .circular(8),
                                                              topRight: Radius
                                                                  .circular(8),
                                                            ),
                                                            child:
                                                                Image.network(
                                                              valueOrDefault<
                                                                  String>(
                                                                row1HouseRecord
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
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        4,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '50al009j' /* BEI: */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lexend Deca',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        4,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              functions.formatPrice(
                                                                  row1HouseRecord
                                                                      .housePrice),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lexend Deca',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
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
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 2, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        4,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'l4qo96qw' /* LIPA */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText2
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lexend Deca',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        4,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              functions.formatPrice15(
                                                                  row1HouseRecord
                                                                      .housePrice
                                                                      .toDouble()),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText2
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lexend Deca',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
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
                                          ),
                                        );
                                      }),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 15, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'otjuwbw1' /* Nyumba za bei 101mil - 1 bil */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        25, 0, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'HOME_PAGE_PAGE_FUNGUA_BTN_ON_TAP');
                                        logFirebaseEvent('Button_Navigate-To');
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                            reverseDuration:
                                                Duration(milliseconds: 0),
                                            child: HouseTypePage3Widget(),
                                          ),
                                        );
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'keqm8im7' /* Fungua */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 80,
                                        height: 30,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(3, 10, 3, 0),
                              child: StreamBuilder<List<HouseRecord>>(
                                stream: queryHouseRecord(
                                  queryBuilder: (houseRecord) =>
                                      houseRecord.where('house_price',
                                          isGreaterThan: 100000000),
                                  limit: 5,
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
                                  List<HouseRecord> row1HouseRecordList =
                                      snapshot.data;
                                  return SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: List.generate(
                                          row1HouseRecordList.length,
                                          (row1Index) {
                                        final row1HouseRecord =
                                            row1HouseRecordList[row1Index];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  3, 0, 5, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'HOME_PAGE_PAGE_Container_s5lcfsmm_ON_TAP');
                                              logFirebaseEvent(
                                                  'Container_Navigate-To');
                                              await Navigator.push(
                                                context,
                                                PageTransition(
                                                  type: PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                  reverseDuration:
                                                      Duration(milliseconds: 0),
                                                  child: HousePageWidget(
                                                    house: row1HouseRecord,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
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
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 12),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0),
                                                              topLeft: Radius
                                                                  .circular(8),
                                                              topRight: Radius
                                                                  .circular(8),
                                                            ),
                                                            child:
                                                                Image.network(
                                                              valueOrDefault<
                                                                  String>(
                                                                row1HouseRecord
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
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        4,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'yrqqb9r7' /* BEI: */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lexend Deca',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        4,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              functions.formatPrice(
                                                                  row1HouseRecord
                                                                      .housePrice),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lexend Deca',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
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
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 2, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        4,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'aqas41cm' /* LIPA */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText2
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lexend Deca',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        4,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              functions.formatPrice15(
                                                                  row1HouseRecord
                                                                      .housePrice
                                                                      .toDouble()),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText2
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lexend Deca',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
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
                                          ),
                                        );
                                      }),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
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
                          padding:
                              EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
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
                                      'egy9wt9i' /* Tukutengenezee michoro na
 baj... */
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'HOME_PAGE_PAGE_AGIZA_BTN_ON_TAP');
                                        logFirebaseEvent('Button_Bottom-Sheet');
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.of(context)
                                                  .viewInsets,
                                              child: HomeReqWidget(),
                                            );
                                          },
                                        );
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'nnrpk745' /* Agiza */,
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
                                              color:
                                                  FlutterFlowTheme.of(context)
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
            ),
          ),
        );
      },
    );
  }
}
