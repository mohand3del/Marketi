

class ApiConstants {
  static const String baseUrl = 'https://ecommerce-hk5e.onrender.com/api/v1/';
    static const String login = 'auth/signIn';
    static const String signUp = 'auth/signUp';
    static const String forgot = 'auth/verify/sendPassCode';
    static const String reset = 'auth/verify/resetPassCode';
    static const String verify ='auth/verify/activePass';
    static const String newPass = 'auth/verify/resetPass';


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