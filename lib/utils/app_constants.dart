class AppConstants{
  static const String APP_NAME = "App Delivery";
  static const int APP_VERSION = 1;

  static const String BASE_URL = "https://api.thecatapi.com/v1";
  static const String GOOGLE_MAPS_API_BASE_URL = "https://maps.googleapis.com/maps/api";

  static const String ALL_BREEDS_LIST = "/breeds";
  static const String BREED_IMAGES_LIST = "/images/search";

  static const String BREEDS_API_KEY = "ive_99Qe4Ppj34NdplyLW67xCV7Ds0oSLKGgcWWYnSzMJY9C0QOu0HUR4azYxWkyW2nr";

  static const String FB_CATS_REPO = "CatsRepo";
  static const String FIRESTORE_TOKENS = "token";
  static const String FIREBASE_MESSAGING_AUTH_TOKEN = "AAAAvlclQ-0:APA91bEmKX-R7vRhyYcw6B9tAd-7OTZPShFIpJ_s08G9b0kA4Mm59EXQ7xZrBvvdq4YU29MCYCVe8hc3LcIl658oVLlDNm4E2RtuRuD3gtQxmJb2oH2fq05jo-0y_BqPAsRveBTLiRow";

  static const String GOOGLEMAPSANDROIDKEY = "AIzaSyAkBBvSMGpO4EoLTNjkLr7V-HzvdRlTY14";
  static const String GOOGLEMAPSIOSKEY = "AIzaSyB3gCARPJjOJlVD-HWqHYxUpwC2T-ZnxYg";

  static const String NOTIFICATION_TITLE = "Notificación de like!!!";
  static const String NOTIFICATION_BODY = "Ha alguien le ha gustado el ";

  static const String FIREBASE_MESSAGING_SCOPE = "https://www.googleapis.com/auth/firebase.messaging";

  static const String FCM_URL="https://fcm.googleapis.com/v1/projects/kapitaltaskmanager/messages:send";

  static const Map<String,String> CLOUD_FCM_JSON = {
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
  };

}