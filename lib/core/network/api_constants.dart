

class ApiConstants {
  static const String baseUrl = 'https://marketi-app.onrender.com/api/v1/';
    static const String login = 'auth/signIn';
    static const String signUp = 'auth/signUp';
    static const String send = 'auth/sendPassEmail';
    static const String resend = 'auth/sendPassEmail';
    static const String verify ='auth/activeResetPass';
    static const String newPass = 'auth/resetPassword';

    static const String google = 'auth/oAuth/google';

    static const String popular = 'home/products';

    static const String categories = 'home/categories';
    static const String brands = 'home/brands';


}


class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}