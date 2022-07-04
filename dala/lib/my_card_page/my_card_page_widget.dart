import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyCardPageWidget extends StatefulWidget {
  const MyCardPageWidget({Key key}) : super(key: key);

  @override
  _MyCardPageWidgetState createState() => _MyCardPageWidgetState();
}

class _MyCardPageWidgetState extends State<MyCardPageWidget> {
  PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'MyCardPage'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            logFirebaseEvent('MY_CARD_PAGE_PAGE_Icon_3p0tnvxo_ON_TAP');
            logFirebaseEvent('Icon_Navigate-Back');
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: FlutterFlowTheme.of(context).primaryBackground,
            size: 30,
          ),
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            '8n3nnne5' /* Kadi Yangu */,
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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: StreamBuilder<List<PremiumCardRecord>>(
            stream: queryPremiumCardRecord(
              queryBuilder: (premiumCardRecord) => premiumCardRecord
                  .where('card_user', isEqualTo: currentUserReference),
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
              List<PremiumCardRecord> columnPremiumCardRecordList =
                  snapshot.data;
              // Return an empty Container when the document does not exist.
              if (snapshot.data.isEmpty) {
                return Container();
              }
              final columnPremiumCardRecord =
                  columnPremiumCardRecordList.isNotEmpty
                      ? columnPremiumCardRecordList.first
                      : null;
              return Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Builder(
                      builder: (context) {
                        final cardImages = columnPremiumCardRecord.cardImages
                                .toList()
                                ?.toList() ??
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
                                            min(0, cardImages.length - 1)),
                                scrollDirection: Axis.horizontal,
                                itemCount: cardImages.length,
                                itemBuilder: (context, cardImagesIndex) {
                                  final cardImagesItem =
                                      cardImages[cardImagesIndex];
                                  return Image.asset(
                                    'assets/images/dalalogoa.jpg',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.fitWidth,
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
                                            initialPage:
                                                min(0, cardImages.length - 1)),
                                    count: cardImages.length,
                                    axisDirection: Axis.horizontal,
                                    onDotClicked: (i) {
                                      pageViewController.animateToPage(
                                        i,
                                        duration: Duration(milliseconds: 500),
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
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
