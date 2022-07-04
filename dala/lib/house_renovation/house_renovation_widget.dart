import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../policy/policy_widget.dart';
import '../renovation_service_page/renovation_service_page_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HouseRenovationWidget extends StatefulWidget {
  const HouseRenovationWidget({
    Key key,
    this.house,
  }) : super(key: key);

  final HouseRecord house;

  @override
  _HouseRenovationWidgetState createState() => _HouseRenovationWidgetState();
}

class _HouseRenovationWidgetState extends State<HouseRenovationWidget> {
  PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'HouseRenovation'});
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
            logFirebaseEvent('HOUSE_RENOVATION_Icon_ekxda3ye_ON_TAP');
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
            '9u7mibfu' /* Ukarabati wa Nyumba */,
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
                        child: Builder(
                          builder: (context) {
                            final housePic =
                                widget.house.houseImages.toList()?.toList() ??
                                    [];
                            return Container(
                              width: double.infinity,
                              height: 500,
                              child: Stack(
                                children: [
                                  PageView.builder(
                                    controller: pageViewController ??=
                                        PageController(
                                            initialPage:
                                                min(0, housePic.length - 1)),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: housePic.length,
                                    itemBuilder: (context, housePicIndex) {
                                      final housePicItem =
                                          housePic[housePicIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 5, 0),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'HOUSE_RENOVATION_Image_qwktppdz_ON_TAP');
                                            logFirebaseEvent(
                                                'Image_Expand-Image');
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                child:
                                                    FlutterFlowExpandedImageView(
                                                  image: Image.network(
                                                    valueOrDefault<String>(
                                                      housePicItem,
                                                      'https://picsum.photos/seed/47/600',
                                                    ),
                                                    fit: BoxFit.contain,
                                                  ),
                                                  allowRotation: false,
                                                  tag: valueOrDefault<String>(
                                                    housePicItem,
                                                    'https://picsum.photos/seed/47/600' +
                                                        '$housePicIndex',
                                                  ),
                                                  useHeroAnimation: true,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Hero(
                                            tag: valueOrDefault<String>(
                                              housePicItem,
                                              'https://picsum.photos/seed/47/600' +
                                                  '$housePicIndex',
                                            ),
                                            transitionOnUserGestures: true,
                                            child: Image.network(
                                              valueOrDefault<String>(
                                                housePicItem,
                                                'https://picsum.photos/seed/47/600',
                                              ),
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 1),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 10),
                                      child: SmoothPageIndicator(
                                        controller: pageViewController ??=
                                            PageController(
                                                initialPage: min(
                                                    0, housePic.length - 1)),
                                        count: housePic.length,
                                        axisDirection: Axis.horizontal,
                                        onDotClicked: (i) {
                                          pageViewController.animateToPage(
                                            i,
                                            duration:
                                                Duration(milliseconds: 500),
                                            curve: Curves.ease,
                                          );
                                        },
                                        effect: ExpandingDotsEffect(
                                          expansionFactor: 2,
                                          spacing: 8,
                                          radius: 16,
                                          dotWidth: 16,
                                          dotHeight: 16,
                                          dotColor: Color(0xFF9E9E9E),
                                          activeDotColor: Color(0xFF3F51B5),
                                          paintStyle: PaintingStyle.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
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
                                Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(23.11, 0.9),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 15, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.13, 0.78),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '63xsk8bk' /* GHARAMA: */,
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
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.13, 0.78),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 0, 0, 0),
                                                child: Text(
                                                  functions
                                                      .formatPrice(20000000),
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
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.13, 0.78),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(3, 0, 0, 0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'zdw3i3en' /* -  */,
                                                  ),
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
                                                        fontStyle:
                                                            FontStyle.italic,
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
                                                  functions
                                                      .formatPrice(1000000000),
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
                                                        decoration:
                                                            TextDecoration
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.13, 0.78),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'slioc9p2' /* LIPA: */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.13, 0.78),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 0, 0, 0),
                                          child: Text(
                                            functions.formatPrice(1000000),
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle1
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.13, 0.78),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  3, 0, 0, 0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '8ksd1r7r' /* Dar -  */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle1
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.13, 0.78),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 0, 0, 0),
                                          child: Text(
                                            functions.formatPrice(1500000),
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle1
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.13, 0.78),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  3, 0, 0, 0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'p9bprdlc' /* Mkoani */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle1
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 7, 0, 0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'v7my9aa5' /* Lipa kidogo kidogo kwa mpaka m... */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 14,
                                              fontStyle: FontStyle.italic,
                                              decoration:
                                                  TextDecoration.underline,
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
                                                  'HOUSE_RENOVATION_Icon_p9rrdywm_ON_TAP');
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
                                        'cqokg94o' /* Huduma  */,
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
                                        'ylfvzqza' /* Fahamu zaidi kwanini ulipe 1 m... */,
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
                                      'HOUSE_RENOVATION_PAGE_FUNGUA_BTN_ON_TAP');
                                  logFirebaseEvent('Button_Navigate-To');
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                      reverseDuration:
                                          Duration(milliseconds: 0),
                                      child: RenovationServicePageWidget(),
                                    ),
                                  );
                                },
                                text: FFLocalizations.of(context).getText(
                                  'pb6ui6g2' /* Fungua */,
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
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '4oyjumwr' /* Taarifa na Maelezo */,
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
                                FFLocalizations.of(context).getText(
                                  'wnzissa8' /* - Tunakarabati nyumba.
- Tunao... */
                                  ,
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
                                  'wun1m2gn' /* Vigezo na Masharti */,
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
                                  'vr3zjtq1' /* Vigezo na masharti ya kupata h... */,
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
                                      'HOUSE_RENOVATION_PAGE_FUNGUA_BTN_ON_TAP');
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
                                  '8bngkgyo' /* Fungua */,
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
              alignment: AlignmentDirectional(0, 1),
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
                                              'HOUSE_RENOVATION_WEKA_MPANGO_BTN_ON_TAP');
                                          logFirebaseEvent(
                                              'Button_Backend-Call');

                                          final housePlansCreateData =
                                              createHousePlansRecordData(
                                            planHouse: widget.house.reference,
                                            userPlan: currentUserReference,
                                            houseRenovation: true,
                                            planTime: getCurrentTimestamp,
                                          );
                                          await HousePlansRecord.collection
                                              .doc()
                                              .set(housePlansCreateData);
                                          logFirebaseEvent(
                                              'Button_Backend-Call');

                                          final usersUpdateData =
                                              createUsersRecordData(
                                            planAvailable: true,
                                          );
                                          await currentUserReference
                                              .update(usersUpdateData);
                                          logFirebaseEvent(
                                              'Button_Alert-Dialog');
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Hongera !!'),
                                                content: Text(
                                                    'Umefanikiwa kuanzisha mpango wa kukarabati nyumba yako. Utatakiwa kulipa kiasi cha 1,000,000/= ili kuanza ukarabati.'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('OK'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
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
                                          '0mw9zdm3' /* WEKA MPANGO */,
                                        ),
                                        icon: Icon(
                                          Icons.payment,
                                          size: 15,
                                        ),
                                        options: FFButtonOptions(
                                          width: 180,
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
