part of services;

class ExceptionHandlers {
  getExceptionString(error) {
    if (error is SocketException) {
      return customError("No Internet Connection");
    } else if (error is HttpException) {
      return customError(error.message.toString());
    } else if (error is FormatException) {
      return customError(error.message.toString());
    } else if (error is TimeoutException) {
      return customError(error.message.toString());
    } else if (error is BadRequestException) {
      return customError(error.message.toString());
    } else if (error is UnAuthorizedException) {
      return customError(error.message.toString());
    } else if (error is NotFoundException) {
      return customError(error.message.toString());
    } else if (error is FetchDataException) {
      return customError(error.message.toString());
    } else {
      return customError("Unknown error occured.");
    }
  }

  static customError(String err) {
    Map<String, dynamic> customresponse = {
      "message": err,
    };
    return jsonEncode(customresponse);
  }
}

class AppException implements Exception {
  final String? message;
  final String? prefix;
  final String? url;

  AppException([this.message, this.prefix, this.url]);
}

class BadRequestException extends AppException {
  BadRequestException([String? message, String? url])
      : super(message, 'Bad request', url);
}

class FetchDataException extends AppException {
  FetchDataException([String? message, String? url])
      : super(message, 'Unable to process the request', url);
}

class ApiNotRespondingException extends AppException {
  ApiNotRespondingException([String? message, String? url])
      : super(message, 'Api not responding', url);
}

class UnAuthorizedException extends AppException {
  UnAuthorizedException([String? message, String? url])
      : super(message, 'Unauthorized request', url);
}

class NotFoundException extends AppException {
  NotFoundException([String? message, String? url])
      : super(message, 'Page not found', url);
}
