import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../policy/policy_widget.dart';
import '../sign_in_page/sign_in_page_widget.dart';
import '../start_page/start_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPageWidget extends StatefulWidget {
  const SignUpPageWidget({Key key}) : super(key: key);

  @override
  _SignUpPageWidgetState createState() => _SignUpPageWidgetState();
}

class _SignUpPageWidgetState extends State<SignUpPageWidget> {
  TextEditingController confirmPasswordController;
  bool confirmPasswordVisibility;
  TextEditingController emailAddressController;
  TextEditingController phoneNumberController;
  TextEditingController passwordController;
  bool passwordVisibility;
  bool checkboxListTileValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confirmPasswordController = TextEditingController();
    confirmPasswordVisibility = false;
    emailAddressController = TextEditingController();
    phoneNumberController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'SignUpPage'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          fillColor: FlutterFlowTheme.of(context).tertiaryColor,
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: FlutterFlowTheme.of(context).primaryColor,
            size: 30,
          ),
          onPressed: () async {
            logFirebaseEvent('SIGN_UP_arrow_back_ios_outlined_ICN_ON_T');
            logFirebaseEvent('IconButton_Navigate-Back');
            Navigator.pop(context);
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            '8enewza1' /* Fungua Akaunti */,
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).tertiaryColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Colors.purple,
              offset: Offset(5, 8),
              spreadRadius: 3,
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Dalaphoto.png',
                        width: 300,
                        height: 100,
                        fit: BoxFit.scaleDown,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: emailAddressController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'p8uthdz0' /* Barua Pepe */,
                            ),
                            labelStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                            hintText: FFLocalizations.of(context).getText(
                              '55p0fxjp' /* Weka namba ya simu apa... */,
                            ),
                            hintStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFDBE2E7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFDBE2E7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF2B343A),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: phoneNumberController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'm36y5j6a' /* Namba ya Simu */,
                            ),
                            labelStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                            hintText: FFLocalizations.of(context).getText(
                              'h0uaoz7i' /* Weka namba ya simu apa... */,
                            ),
                            hintStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFDBE2E7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFDBE2E7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF2B343A),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: !passwordVisibility,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'c0j6tyug' /* Nywila */,
                            ),
                            labelStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                            hintText: FFLocalizations.of(context).getText(
                              'mcq0nrg2' /* Weka barua pepe apa... */,
                            ),
                            hintStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFDBE2E7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFDBE2E7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(16, 24, 24, 24),
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => passwordVisibility = !passwordVisibility,
                              ),
                              focusNode: FocusNode(skipTraversal: true),
                              child: Icon(
                                passwordVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: Color(0xFF95A1AC),
                                size: 22,
                              ),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF2B343A),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: confirmPasswordController,
                          obscureText: !confirmPasswordVisibility,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'npsyi6id' /* Rudia  Nywila */,
                            ),
                            labelStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                            hintText: FFLocalizations.of(context).getText(
                              'jxcq83tx' /* Weka barua pepe apa... */,
                            ),
                            hintStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF95A1AC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFDBE2E7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFDBE2E7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(16, 24, 24, 24),
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => confirmPasswordVisibility =
                                    !confirmPasswordVisibility,
                              ),
                              focusNode: FocusNode(skipTraversal: true),
                              child: Icon(
                                confirmPasswordVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: Color(0xFF95A1AC),
                                size: 22,
                              ),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF2B343A),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Theme(
                          data: ThemeData(
                            unselectedWidgetColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: CheckboxListTile(
                            value: checkboxListTileValue ??= false,
                            onChanged: (newValue) => setState(
                                () => checkboxListTileValue = newValue),
                            title: Text(
                              FFLocalizations.of(context).getText(
                                'syiv5iui' /* Vigezo na Masharti */,
                              ),
                              style:
                                  FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'Open Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                            ),
                            tileColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            activeColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            checkColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      logFirebaseEvent('SIGN_UP_PAGE_PAGE_Row_rt6w2lej_ON_TAP');
                      logFirebaseEvent('Row_Navigate-To');
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PolicyWidget(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () async {
                            logFirebaseEvent(
                                'SIGN_UP_PAGE_PAGE_Text_rrc3g6hf_ON_TAP');
                            logFirebaseEvent('Text_Navigate-To');
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
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '5xzqisfs' /* Soma vigezo na masharti */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Lato',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 24, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if ((checkboxListTileValue) == true)
                        FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'SIGN_UP_TENGENEZA_AKAUNTI_BTN_ON_TAP');
                            logFirebaseEvent('Button_Auth');
                            if (passwordController?.text !=
                                confirmPasswordController?.text) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Passwords don\'t match!',
                                  ),
                                ),
                              );
                              return;
                            }

                            final user = await createAccountWithEmail(
                              context,
                              emailAddressController.text,
                              passwordController.text,
                            );
                            if (user == null) {
                              return;
                            }

                            final usersCreateData = createUsersRecordData(
                              email: emailAddressController.text,
                              phoneNumber: phoneNumberController.text,
                              time: getCurrentTimestamp,
                            );
                            await UsersRecord.collection
                                .doc(user.uid)
                                .update(usersCreateData);

                            logFirebaseEvent('Button_Navigate-To');
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                                reverseDuration: Duration(milliseconds: 0),
                                child: StartPageWidget(),
                              ),
                            );
                          },
                          text: FFLocalizations.of(context).getText(
                            'jd9htreb' /* Tengeneza Akaunti */,
                          ),
                          options: FFButtonOptions(
                            width: 210,
                            height: 60,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              width: 1,
                            ),
                            borderRadius: 8,
                          ),
                        ),
                      if ((checkboxListTileValue) == false)
                        FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'SIGN_UP_TENGENEZA_AKAUNTI_BTN_ON_TAP');
                            logFirebaseEvent('Button_Alert-Dialog');
                            var confirmDialogResponse = await showDialog<bool>(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Sheria na Kanuni'),
                                      content: Text(
                                          'Kubali Sheria na Kanuni ili ufungue akaunti.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, false),
                                          child: Text('SAWA'),
                                        ),
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, true),
                                          child: Text('Sheria na Kanuni.'),
                                        ),
                                      ],
                                    );
                                  },
                                ) ??
                                false;
                          },
                          text: FFLocalizations.of(context).getText(
                            'lbcbwvbd' /* Tengeneza Akaunti */,
                          ),
                          options: FFButtonOptions(
                            width: 210,
                            height: 60,
                            color: Color(0xFFB198E4),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 8,
                          ),
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'vwnitu58' /* Teyari una akaunti? */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'SIGN_UP_PAGE_PAGE_INGIA_BTN_ON_TAP');
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
                          'tuodibne' /* Ingia  */,
                        ),
                        options: FFButtonOptions(
                          width: 70,
                          height: 30,
                          color: Color(0x00FFFFFF),
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Lexend Deca',
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                          elevation: 0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 0,
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
  }
}
