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

class HousePageWidget extends StatefulWidget {
  const HousePageWidget({
    Key key,
    this.house,
  }) : super(key: key);

  final HouseRecord house;

  @override
  _HousePageWidgetState createState() => _HousePageWidgetState();
}

class _HousePageWidgetState extends State<HousePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'HousePage'});
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
            logFirebaseEvent('HOUSE_PAGE_PAGE_Icon_tblb1awe_ON_TAP');
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
            'd96187xj' /* Nyumba */,
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
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
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
                        padding: EdgeInsetsDirectional.fromSTEB(5, 351, 5, 0),
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
                                                '9capem0p' /* Kiwango: Chini */,
                                              ),
                                            ),
                                            Tab(
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                '9274fmss' /* Kiwango: Kati */,
                                              ),
                                            ),
                                            Tab(
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                '1npucdxy' /* Kiwango: Juu */,
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
                                                                  'blwzie6g' /* GHARAMA: */,
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
                                                                'wjrlaiuz' /* LIPA: */,
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
                                                                  'tw496qve' /* GHARAMA: */,
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
                                                                '8r09udth' /* LIPA: */,
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
                                                                  'b71a1cob' /* GHARAMA: */,
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
                                                                'ru94ae7j' /* LIPA: */,
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
                      Align(
                        alignment: AlignmentDirectional(0, 0.71),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 320, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 300, 0),
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
                                                    'HOUSE_PAGE_PAGE_Icon_l5usovz7_ON_TAP');
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
                                        'skmk7lnh' /* Huduma */,
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
                                        'o3vf80t0' /* Fahamu zaidi kwanini ulipe asi... */,
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
                                      'HOUSE_PAGE_PAGE_FUNGUA_BTN_ON_TAP');
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
                                  'uzen24k8' /* Fungua */,
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
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(3, 5, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'jfyu495a' /* Taarifa na Maelezo */,
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
                                  EdgeInsetsDirectional.fromSTEB(5, 5, 0, 5),
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
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '0kpv3cz0' /* Vigezo na Masharti */,
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
                                  'hjw8ityb' /* Vigezo na masharti ya kupata h... */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(2, 0, 2, 5),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'HOUSE_PAGE_PAGE_FUNGUA_BTN_ON_TAP');
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
                                  'h9obozam' /* Fungua */,
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
                    decoration: BoxDecoration(),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 1.11),
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
                                  'nj3s6sh1' /* "Kila Mtu Kwake." */,
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
                                if (!(valueOrDefault(
                                        currentUserDocument?.planAvailable,
                                        false)) ??
                                    true)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 0, 0),
                                    child: AuthUserStreamWidget(
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'HOUSE_PAGE_PAGE_CHAGUA_NYUMBA_BTN_ON_TAP');
                                          logFirebaseEvent(
                                              'Button_Backend-Call');

                                          final usersUpdateData =
                                              createUsersRecordData(
                                            planAvailable: true,
                                          );
                                          await currentUserReference
                                              .update(usersUpdateData);
                                          logFirebaseEvent(
                                              'Button_Backend-Call');

                                          final housePlansCreateData =
                                              createHousePlansRecordData(
                                            planHouse: widget.house.reference,
                                            userPlan: currentUserReference,
                                            houseRenovation: false,
                                            planTime: getCurrentTimestamp,
                                          );
                                          await HousePlansRecord.collection
                                              .doc()
                                              .set(housePlansCreateData);
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
                                              child: NavBarPage(
                                                  initialPage: 'MyAccountPage'),
                                            ),
                                          );
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          '6ag8ad9t' /* CHAGUA NYUMBA */,
                                        ),
                                        icon: Icon(
                                          Icons.payment,
                                          size: 15,
                                        ),
                                        options: FFButtonOptions(
                                          width: 200,
                                          height: 50,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
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
                                  ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: StreamBuilder<List<HousePlansRecord>>(
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
                                      buttonHousePlansRecordList =
                                      snapshot.data;
                                  // Return an empty Container when the document does not exist.
                                  if (snapshot.data.isEmpty) {
                                    return Container();
                                  }
                                  final buttonHousePlansRecord =
                                      buttonHousePlansRecordList.isNotEmpty
                                          ? buttonHousePlansRecordList.first
                                          : null;
                                  return FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'HOUSE_PAGE_PAGE_BADILI_BTN_ON_TAP');
                                      logFirebaseEvent('Button_Backend-Call');

                                      final housePlansUpdateData =
                                          createHousePlansRecordData(
                                        planPhoto: widget.house.housePhoto,
                                        planHouse: widget.house.reference,
                                      );
                                      await buttonHousePlansRecord.reference
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
                                      'mx0wk3cn' /* BADILI  */,
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
                                  );
                                },
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
          ],
        ),
      ),
    );
  }
}
