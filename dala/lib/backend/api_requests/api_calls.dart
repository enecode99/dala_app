import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class AuthTokenCall {
  static Future<ApiCallResponse> call({
    String username = '',
    String password = '',
    String grantType = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'authToken',
      apiUrl: '10.222.130.104:9101/token',
      callType: ApiCallType.POST,
      headers: {
        'Cache-Control': 'no-cache',
        'Access-Control-Allow-Origin': '*',
      },
      params: {
        'username': username,
        'password': password,
        'grant_type': grantType,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
    );
  }
}
