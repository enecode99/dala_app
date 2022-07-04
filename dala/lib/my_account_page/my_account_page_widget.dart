import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../change_language_page/change_language_page_widget.dart';
import '../components/interest_req_widget.dart';
import '../components/mortgage_req_widget.dart';
import '../components/payment_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../mortgage_service_page/mortgage_service_page_widget.dart';
import '../my_card_page/my_card_page_widget.dart';
import '../plan_house_page/plan_house_page_widget.dart';
import '../policy/policy_widget.dart';
import '../renovation_service_page/renovation_service_page_widget.dart';
import '../sign_in_page/sign_in_page_widget.dart';
import '../signature_page/signature_page_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAccountPageWidget extends StatefulWidget {
  const MyAccountPageWidget({Key key}) : super(key: key);

  @override
  _MyAccountPageWidgetState createState() => _MyAccountPageWidgetState();
}

class _MyAccountPageWidgetState extends State<MyAccountPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'MyAccountPage'});
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
            logFirebaseEvent('MY_ACCOUNT_PAGE_PAGE_menu_ICN_ON_TAP');
            logFirebaseEvent('IconButton_Drawer');
            scaffoldKey.currentState.openDrawer();
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'o1xs070m' /* Akaunti Yangu */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Open Sans',
                color: Colors.white,
                fontSize: 18,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
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
                  logFirebaseEvent('MY_ACCOUNT_PAGE_PAGE_Row_iy32rjz3_ON_TAP');
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
                          'jl9qtum4' /* Huduma ya Ujenzi */,
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
                  logFirebaseEvent('MY_ACCOUNT_PAGE_PAGE_Row_1m52it3f_ON_TAP');
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
                          'l3auocmc' /* Huduma ya Ukarabati */,
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
                  logFirebaseEvent('MY_ACCOUNT_PAGE_PAGE_Row_0zeatr8h_ON_TAP');
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
                          'vk0reddq' /* Vigezo na Masharti */,
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
                  logFirebaseEvent('MY_ACCOUNT_PAGE_PAGE_Row_a8zyy2xy_ON_TAP');
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
                          '47tcxheg' /* Badili Lugha */,
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
                  logFirebaseEvent('MY_ACCOUNT_PAGE_PAGE_Row_3dnhxrps_ON_TAP');
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
                          '0ftv93yh' /* Kadi Yangu */,
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
                  logFirebaseEvent('MY_ACCOUNT_PAGE_PAGE_Row_1aylc4ig_ON_TAP');
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
                          'ilft10dg' /* Taarifa za Kadi */,
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
                  logFirebaseEvent('MY_ACCOUNT_PAGE_PAGE_SIGN_OUT_BTN_ON_TAP');
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
                  'p79x56it' /* Sign Out */,
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                            child: Container(
                              width: 60,
                              height: 60,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/dalalogo.jpg',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'hk34cpo3' /* Karibu, */,
                                ),
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'h2ug4ujs' /* "Dala, Kila Mtu Kwake." */,
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.92,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6,
                            color: Color(0x4B1A1F24),
                            offset: Offset(0, 2),
                          )
                        ],
                        gradient: LinearGradient(
                          colors: [
                            FlutterFlowTheme.of(context).primaryColor,
                            FlutterFlowTheme.of(context).secondaryColor
                          ],
                          stops: [0, 1],
                          begin: AlignmentDirectional(0.94, -1),
                          end: AlignmentDirectional(-0.94, 1),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.96, 0.6),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 60, 15, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'MY_ACCOUNT_PAGE_PAGE_LIPA_BTN_ON_TAP');
                                  logFirebaseEvent('Button_Bottom-Sheet');
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: PaymentWidget(),
                                      );
                                    },
                                  );
                                },
                                text: FFLocalizations.of(context).getText(
                                  '1tcdj4g2' /* LIPA */,
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
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, -2.17),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 20, 20, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'xmhmdnf9' /* DALA  */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .title1
                                              .override(
                                                fontFamily: 'Lato',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 24, 20, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'stge8mmn' /* Lipa 15% ya gharama */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiaryColor,
                                                fontSize: 16,
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
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x39000000),
                        offset: Offset(0, -1),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'fbs18sbj' /* Huduma ya Haraka */,
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 110,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0x3B000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: InkWell(
                                onTap: () async {
                                  logFirebaseEvent(
                                      'MY_ACCOUNT_Card_s6i7hc95_ON_TAP');
                                  logFirebaseEvent('Card_Bottom-Sheet');
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: InterestReqWidget(),
                                      );
                                    },
                                  );
                                },
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4, 4, 4, 4),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.swap_horiz_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 40,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 8, 0, 0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'q1b6mw0t' /* Riba ya Mkopo */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  fontSize: 13,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                logFirebaseEvent(
                                    'MY_ACCOUNT_activityButton_ON_TAP');
                                logFirebaseEvent('activityButton_Bottom-Sheet');
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding:
                                          MediaQuery.of(context).viewInsets,
                                      child: MortgageReqWidget(),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                width: 110,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5,
                                      color: Color(0x3A000000),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4, 4, 4, 4),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.house_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 40,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 8, 0, 0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'exbqi9hq' /* Anza Ujenzi */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  fontSize: 13,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            StreamBuilder<List<HousePlansRecord>>(
                              stream: queryHousePlansRecord(
                                queryBuilder: (housePlansRecord) =>
                                    housePlansRecord.where('user_plan',
                                        isEqualTo: currentUserReference),
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
                                List<HousePlansRecord>
                                    bankButtonHousePlansRecordList =
                                    snapshot.data;
                                // Return an empty Container when the document does not exist.
                                if (snapshot.data.isEmpty) {
                                  return Container();
                                }
                                final bankButtonHousePlansRecord =
                                    bankButtonHousePlansRecordList.isNotEmpty
                                        ? bankButtonHousePlansRecordList.first
                                        : null;
                                return Container(
                                  width: 110,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5,
                                        color: Color(0x39000000),
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: StreamBuilder<HouseRecord>(
                                    stream: HouseRecord.getDocument(
                                        bankButtonHousePlansRecord.planHouse),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: SpinKitCircle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              size: 50,
                                            ),
                                          ),
                                        );
                                      }
                                      final cardHouseRecord = snapshot.data;
                                      return InkWell(
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'MY_ACCOUNT_Card_v8g3txz2_ON_TAP');
                                          logFirebaseEvent('Card_Navigate-To');
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  PlanHousePageWidget(
                                                house: cardHouseRecord,
                                                planTrack:
                                                    bankButtonHousePlansRecord,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFFF5F5F5),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4, 4, 4, 4),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons
                                                      .account_balance_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  size: 40,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 8, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'b7x1v9n2' /* Nyumba */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          fontSize: 13,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'm58o9o9i' /* Histolia ya Miamala */,
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ],
                        ),
                      ),
                      StreamBuilder<List<TransactionsRecord>>(
                        stream: queryTransactionsRecord(
                          queryBuilder: (transactionsRecord) =>
                              transactionsRecord
                                  .where('transaction_user',
                                      isEqualTo: currentUserReference)
                                  .orderBy('transaction_date'),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: SpinKitCircle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 50,
                                ),
                              ),
                            );
                          }
                          List<TransactionsRecord>
                              columnTransactionsRecordList = snapshot.data;
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                columnTransactionsRecordList.length,
                                (columnIndex) {
                              final columnTransactionsRecord =
                                  columnTransactionsRecordList[columnIndex];
                              return Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  4, 0, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 0, 12, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'p3jg588p' /* Dala Pay  */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                    if (columnTransactionsRecord
                                                            .refund ??
                                                        true)
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0oevanhm' /* rejesha */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                    Text(
                                                      dateTimeFormat(
                                                          'd/M H:mm',
                                                          columnTransactionsRecord
                                                              .transactionDate),
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 0, 12, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: Text(
                                                        functions.formatPriceStr(
                                                            columnTransactionsRecord
                                                                .transactionPrice),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF090F13),
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                    ),
                                                    if (!(columnTransactionsRecord
                                                            .completedTransaction) ??
                                                        true)
                                                      FFButtonWidget(
                                                        onPressed: () {
                                                          print(
                                                              'Button pressed ...');
                                                        },
                                                        text:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '0qjcmlqa' /* inasubiri */,
                                                        ),
                                                        options:
                                                            FFButtonOptions(
                                                          width: 100,
                                                          height: 30,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .subtitle2
                                                                  .override(
                                                                    fontFamily:
                                                                        'Open Sans',
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        14,
                                                                  ),
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1,
                                                          ),
                                                          borderRadius: 12,
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
                          );
                        },
                      ),
                    ],
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
