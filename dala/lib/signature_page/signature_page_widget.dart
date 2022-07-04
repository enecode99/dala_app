import '../auth/auth_util.dart';
import '../backend/firebase_storage/storage.dart';
import '../components/card_request_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signature/signature.dart';

class SignaturePageWidget extends StatefulWidget {
  const SignaturePageWidget({Key key}) : super(key: key);

  @override
  _SignaturePageWidgetState createState() => _SignaturePageWidgetState();
}

class _SignaturePageWidgetState extends State<SignaturePageWidget> {
  String uploadedSignatureUrl = '';
  SignatureController signatureController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'SignaturePage'});
    signatureController = SignatureController(
      penStrokeWidth: 2,
      penColor: FlutterFlowTheme.of(context).secondaryBackground,
      exportBackgroundColor: Colors.black,
    );
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
            Icons.arrow_back,
            color: FlutterFlowTheme.of(context).primaryBackground,
            size: 30,
          ),
          onPressed: () async {
            logFirebaseEvent('SIGNATURE_arrow_back_ICN_ON_TAP');
            logFirebaseEvent('IconButton_Navigate-Back');
            Navigator.pop(context);
          },
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(290, 0, 0, 0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30,
                  borderWidth: 1,
                  buttonSize: 60,
                  icon: Icon(
                    Icons.close_outlined,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    size: 30,
                  ),
                  onPressed: () async {
                    logFirebaseEvent('SIGNATURE_close_outlined_ICN_ON_TAP');
                    logFirebaseEvent('IconButton_Clear-Signatures');
                    setState(() {
                      signatureController?.clear();
                    });
                  },
                ),
              ),
              ClipRect(
                child: Signature(
                  controller: signatureController,
                  backgroundColor: Colors.black,
                  height: 200,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('SIGNATURE_PAGE_PAGE_SAINI_BTN_ON_TAP');
                    logFirebaseEvent('Button_Upload-Signature');
                    final signatureImage =
                        await signatureController.toPngBytes();

                    if (signatureImage == null) {
                      return;
                    }

                    showUploadMessage(
                      context,
                      'Uploading signature...',
                      showLoading: true,
                    );
                    final downloadUrl = (await uploadData(
                        signatureStoragePath(currentUserUid), signatureImage));

                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    if (downloadUrl != null) {
                      setState(() => uploadedSignatureUrl = downloadUrl);
                      showUploadMessage(
                        context,
                        'Success!',
                      );
                    } else {
                      showUploadMessage(
                        context,
                        'Failed to upload signature',
                      );
                      return;
                    }

                    logFirebaseEvent('Button_Bottom-Sheet');
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: CardRequestWidget(),
                        );
                      },
                    );
                  },
                  text: FFLocalizations.of(context).getText(
                    'b6bdk98z' /* Saini */,
                  ),
                  icon: Icon(
                    Icons.cloud_upload_rounded,
                    size: 15,
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
      ),
    );
  }
}
