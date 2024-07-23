import 'package:googleapis_auth/auth_io.dart';
import 'package:googleapis_auth/googleapis_auth.dart';


class AccessTokenFirebase{

  static String firebaseMessagingScope = "https://www.googleapis.com/auth/firebase.messaging";


  Future<String> getAccessToken() async{

    final client = await clientViaServiceAccount(ServiceAccountCredentials.fromJson(
        {
          "type": "service_account",
          "project_id": "kapitaltaskmanager",
          "private_key_id": "6737b69963818e82d13350bb9d8e6f8cb5e67c68",
          "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDCKCzgHid8DR++\nub56oQgshq72GzBqLppgw1lL64q4DweKmEjI7HHel7VTobi4gWk9Ulf3YRApZYgb\nbgbSQhjLGGMrtnpqdNRuXBhhZMqot37G+amveDxosv9v6oG4JaRFEhLwNIxvmRtU\nVVuhoamoN0ugtG6iU6n5XQSuXylYZgV1WB3bFRQy71bR4SVs8t7RB6PJhZn7ADzb\nvOkz7utkDiEt3EmslDdEbKYQr0WrAISscupCRJYjOXHJtc717UUwLWB7cKzVdj/o\ncBbmBt1hACcGaSF8rVtTrmGqs6ynXLQJURrM0dSDrgmg1PBhz6P6+lRp7O2kKZ5Q\nit6klpnbAgMBAAECggEACPPtTdBWJcQ9KIBMJj9yrwru2m5ahyrq93dKkNOlq+MV\nh/CJuqocfhUkyVx1thxRjABWChQxuJbz9b/XFK7zkbnoKMXbUzlb6lLY1PTe23TK\npcYxauPydSl72d9IaANkVcMFmInzx9mZhwQAm61ms1kJZbmsOFP/TH5bjubYczj8\nfO1RhChGB4+5MTT86Xpil9jfpjBYiBIphK6lyLyQQkwKWIJQFsiXkgdIenAwJAtP\nmMEdMgoEp0dYADskB6kRPA98LZAjMHMPw0y7jV4xMWXyjYg55AOQ4QDRVGfI9ids\nYMbz8xUwOUFkHJucub+zgq+TjNb4afdb7t9h9wCzYQKBgQDwY7YpkNylw/etek8M\n4eGM72MxEHZED+KqMTGTJns/ZQ5SSuVN9K8sYGOOyVmUAKK/UQNv4gpVZSN60mVv\ndIQY2utnrgu6zIdUEOp+2OcjBIwE2EZXTF5TmH4tnprZtXXdrGCprpvYwZeUfmLv\npCegkd6XQf6DN1I16sFgMf8i6QKBgQDOw+Ig5JVt8G2vs42C5vSC/qi59eI1LypQ\nhOsFdXLo6nk7GiQrO9GHXXC8Ukp2hErTafIbvU7dLj6wA2pxOijitRdBvEF42Mup\nvF87XiFf7F4czX+DhLpemP2Ea47MAPKm6EM6j3WThlBI6jhJI50QQQg8MFvB8CoY\naOUKBUG0IwKBgQCjOsHV5aS99px2sod88uBqB58uEMSNoM/DyxWjmsyzllYsMOkV\njyFnm6ferABkjC32hPc1gKKNq9h0rOrtzItqKTURuNAELp9xyO7B5VzFnW/KVmUl\nIBko4HJFXd4+GIaJWGRms8blX0cjMNLTcH7r/EDOKqS8ytLLA7X9MNXTCQKBgEkc\nACgLSz79ZXtb7Kydh1WOQBDI/Xw6uiaQaR2cAs6Sod0hCCr1UsgfZQ5htoyjiGWq\nr33ZeTpB8M6B1rBElVJcH+YRb8EQPys8PRwb04c8Z6adjvntA40RYYriETLXHvWf\naK4bLcLFGjw9/Tr3ScEGjafinX88sVXCOUJKy4mrAoGAe73GCd1oDjXGfBHS2Qy8\nMfoJmDmGtbpAtLKh/ewaaGH7AfSDTJtO1sXEjdaNxw4OHVys2oiWdgUf1s3E1XLe\nEEJWqtTTXZfJ3siN0a8EaLH1BS/X6RT7wcdsN6Jp5vrH+3tJN6fTlAQwHkUG3Eea\neTgJ87egkJ/VjewDNU/3l1Y=\n-----END PRIVATE KEY-----\n",
          "client_email": "firebase-adminsdk-d5734@kapitaltaskmanager.iam.gserviceaccount.com",
          "client_id": "103375522717776672190",
          "auth_uri": "https://accounts.google.com/o/oauth2/auth",
          "token_uri": "https://oauth2.googleapis.com/token",
          "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
          "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-d5734%40kapitaltaskmanager.iam.gserviceaccount.com",
          "universe_domain": "googleapis.com"
        }
    ),
        [firebaseMessagingScope]
    );

    final accessToken = client.credentials.accessToken.data;

    return accessToken;

  }

}