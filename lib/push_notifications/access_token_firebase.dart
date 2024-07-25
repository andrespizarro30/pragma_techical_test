import 'package:googleapis_auth/auth_io.dart';
import 'package:googleapis_auth/googleapis_auth.dart';
import 'package:technicaltestpragma/utils/app_constants.dart';


class AccessTokenFirebase{

  Future<String> getAccessToken() async{

    final client = await clientViaServiceAccount(ServiceAccountCredentials.fromJson(
        AppConstants.CLOUD_FCM_JSON
    ),
        [AppConstants.FIREBASE_MESSAGING_SCOPE]
    );

    final accessToken = client.credentials.accessToken.data;

    return accessToken;

  }

}