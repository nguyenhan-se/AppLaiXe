class ResponseCode {
  // API status codes
  static const int success = 200; // success with data
  static const int noContent = 201; // success with no content
  static const int badRequest = 400; // failure, api rejected the request
  static const int forbidden = 403; // failure, api rejected the request
  static const int unAuthorized = 401; // failure user is not authorized
  static const int notFound =
      404; // failure, api url is not correct and not found
  static const int internalServerError =
      500; // failure, crash happened in server side

  // local status code
  static const int errorDefault = -1;
  static const int noInternetConnection = -7;
}

class ResponseMessage {
  // API status codes
  static const String success = "success"; // success with data
  static const String noContent =
      "success with no content"; // success with no content
  static const String badRequest =
      "Bad request, try again later"; // failure, api rejected the request
  static const String forbidden =
      "forbidden request, try again later"; // failure, api rejected the request
  static const String unAuthorized =
      "user is unAuthorized, try again later"; // failure user is not authorized
  static const String notFound =
      "Url is not found, try again later"; // failure, api url is not correct and not found
  static const String internalServerError =
      "some thing went wrong, try again later"; // failure, crash happened in server side

  // local status code
  static const String errorDefault = "some thing went wrong, try again later";
  static const String noInternetConnection =
      "Please check your internet connection";
}
