import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/flutter_flow_youtube_player.dart';
import '../main.dart';
import '../mortgage_service_page/mortgage_service_page_widget.dart';
import '../policy/policy_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HousePlanPageWidget extends StatefulWidget {
  const HousePlanPageWidget({
    Key key,
    this.house,
    this.updatePlan,
  }) : super(key: key);

  final HouseRecord house;
  final HousePlansRecord updatePlan;

  @override
  _HousePlanPageWidgetState createState() => _HousePlanPageWidgetState();
}

class _HousePlanPageWidgetState extends State<HousePlanPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'HousePlanPage'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            logFirebaseEvent('HOUSE_PLAN_Icon_nx2wky84_ON_TAP');
            logFirebaseEvent('Icon_Navigate-Back');
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_sharp,
            color: FlutterFlowTheme.of(context).primaryColor,
            size: 24,
          ),
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'zfj80lwl' /* Nyumba */,
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
        elevation: 2,
      ),
      backgroundColor: Color(0xFFF0D2FF),
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional(1, 1),
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).tertiaryColor,
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 350,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                          child: FlutterFlowYoutubePlayer(
                            url: widget.house.houseVideo,
                            height: 350,
                            autoPlay: false,
                            looping: false,
                            mute: true,
                            showControls: true,
                            showFullScreen: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 350, 5, 0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                            ),
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 110,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                              ),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: DefaultTabController(
                                    length: 3,
                                    initialIndex: 0,
                                    child: Column(
                                      children: [
                                        TabBar(
                                          labelColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Open Sans',
                                                    fontSize: 13,
                                                  ),
                                          indicatorColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryColor,
                                          tabs: [
                                            Tab(
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'l4h7fka4' /* Kiwango: Chini */,
                                              ),
                                            ),
                                            Tab(
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'f9rhsmrk' /* Kiwango: Kati */,
                                              ),
                                            ),
                                            Tab(
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'g30igxqy' /* Kiwango: Juu */,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                          child: TabBarView(
                                            children: [
                                              Card(
                                                clipBehavior:
                                                    Clip.antiAliasWithSaveLayer,
                                                color: Color(0xFFF5F5F5),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(15),
                                                    bottomRight:
                                                        Radius.circular(15),
                                                    topLeft: Radius.circular(0),
                                                    topRight:
                                                        Radius.circular(0),
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              6.62, 12.76),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(5, 10,
                                                                    0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.13,
                                                                      0.78),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'jzs488zq' /* GHARAMA: */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Open Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.13,
                                                                      0.78),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Text(
                                                                  functions.formatPrice(
                                                                      widget
                                                                          .house
                                                                          .housePrice),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Open Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryColor,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        decoration:
                                                                            TextDecoration.lineThrough,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5, 0, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.13, 0.78),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'n332stvj' /* LIPA: */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .subtitle1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Open Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.13, 0.78),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                functions.formatPrice15(widget
                                                                    .house
                                                                    .housePrice
                                                                    .toDouble()),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Open Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Card(
                                                clipBehavior:
                                                    Clip.antiAliasWithSaveLayer,
                                                color: Color(0xFFF5F5F5),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(15),
                                                    bottomRight:
                                                        Radius.circular(15),
                                                    topLeft: Radius.circular(0),
                                                    topRight:
                                                        Radius.circular(0),
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              6.62, 12.76),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(5, 10,
                                                                    0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.13,
                                                                      0.78),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'pvjdq10z' /* GHARAMA: */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Open Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.13,
                                                                      0.78),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Text(
                                                                  functions.formatPrice(
                                                                      functions.midPrice(widget
                                                                          .house
                                                                          .housePrice)),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Open Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryColor,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        decoration:
                                                                            TextDecoration.lineThrough,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5, 0, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.13, 0.78),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'a96ou12i' /* LIPA: */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .subtitle1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Open Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.13, 0.78),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                functions.formatPrice15M(widget
                                                                    .house
                                                                    .housePrice
                                                                    .toDouble()),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Open Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Card(
                                                clipBehavior:
                                                    Clip.antiAliasWithSaveLayer,
                                                color: Color(0xFFF5F5F5),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(15),
                                                    bottomRight:
                                                        Radius.circular(15),
                                                    topLeft: Radius.circular(0),
                                                    topRight:
                                                        Radius.circular(0),
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              6.62, 12.76),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(5, 10,
                                                                    0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.13,
                                                                      0.78),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'c7lmwuek' /* GHARAMA: */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Open Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.13,
                                                                      0.78),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Text(
                                                                  functions.formatPrice(
                                                                      functions.highPrice(widget
                                                                          .house
                                                                          .housePrice)),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Open Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryColor,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        decoration:
                                                                            TextDecoration.lineThrough,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5, 0, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.13, 0.78),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'nfodcsui' /* LIPA: */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .subtitle1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Open Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.13, 0.78),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                functions.formatPrice15H(widget
                                                                    .house
                                                                    .housePrice
                                                                    .toDouble()),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Open Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
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
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 320, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 300, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.9, -1),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 5,
                                      shape: const CircleBorder(),
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiaryColor,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.05, 0.2),
                                          child: InkWell(
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'HOUSE_PLAN_Icon_sx8vwvl9_ON_TAP');
                                              logFirebaseEvent(
                                                  'Icon_Launch-U-R-L');
                                              await launchURL(
                                                  'https://wa.me/c/255694004469');
                                            },
                                            child: FaIcon(
                                              FontAwesomeIcons.whatsapp,
                                              color: Color(0xFF149C0C),
                                              size: 35,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 0, 0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '19udppse' /* Huduma  */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 0, 5),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '1to1wsi5' /* Fahamu zaidi kwanini ulipe asi... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Open Sans',
                                            fontSize: 14,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(2, 0, 2, 5),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'HOUSE_PLAN_PAGE_PAGE_FUNGUA_BTN_ON_TAP');
                                  logFirebaseEvent('Button_Navigate-To');
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                      reverseDuration:
                                          Duration(milliseconds: 0),
                                      child: MortgageServicePageWidget(),
                                    ),
                                  );
                                },
                                text: FFLocalizations.of(context).getText(
                                  'cg0ii7i5' /* Fungua */,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
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
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
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
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'ea5qcfvg' /* Taarifa na Maelezo */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
                                child: Text(
                                  widget.house.houseInformation,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Open Sans',
                                        fontSize: 14,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 100,
                        height: 90,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '1fyqa0gh' /* Vigezo na Masharti */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '6thhkzli' /* Vigezo na masharti ya kupata h... */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'HOUSE_PLAN_PAGE_PAGE_FUNGUA_BTN_ON_TAP');
                                  logFirebaseEvent('Button_Navigate-To');
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                      reverseDuration:
                                          Duration(milliseconds: 0),
                                      child: PolicyWidget(),
                                    ),
                                  );
                                },
                                text: FFLocalizations.of(context).getText(
                                  '0zjpwr6a' /* Fungua */,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
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
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
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
                  ),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 1.05),
              child: Material(
                color: Colors.transparent,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'zusnpkd4' /* "Kila Mtu Kwake." */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontStyle: FontStyle.italic,
                                    ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'HOUSE_PLAN_PAGE_PAGE_BADILI_BTN_ON_TAP');
                                      logFirebaseEvent('Button_Backend-Call');

                                      final housePlansUpdateData =
                                          createHousePlansRecordData(
                                        planHouse: widget.house.reference,
                                        planPhoto: widget.house.housePhoto,
                                      );
                                      await widget.updatePlan.reference
                                          .update(housePlansUpdateData);
                                      logFirebaseEvent('Button_Navigate-To');
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                          reverseDuration:
                                              Duration(milliseconds: 0),
                                          child: NavBarPage(
                                              initialPage: 'MyAccountPage'),
                                        ),
                                      );
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'rwxeiy12' /* BADILI  */,
                                    ),
                                    icon: Icon(
                                      Icons.payment,
                                      size: 15,
                                    ),
                                    options: FFButtonOptions(
                                      width: 185,
                                      height: 40,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
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
                          ],
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
    );
  }
}
