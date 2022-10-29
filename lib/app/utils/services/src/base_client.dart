part of services;

class BaseClient {
  //GET
  Future<dynamic> get(String url, dynamic header) async {
    var uri = Uri.parse(url);
    try {
      var response = await http
          .get(uri, headers: header)
          .timeout(const Duration(seconds: AppConstant.timeOutDuration));
      return response;
    } catch (e) {
      return ExceptionHandlers().getExceptionString(e);
    }
  }

  //POST
  Future<dynamic> post(String url, dynamic header, dynamic body) async {
    var uri = Uri.parse(url);
    var payload = body;
    try {
      var response = await http
          .post(uri, headers: header, body: payload)
          .timeout(const Duration(seconds: AppConstant.timeOutDuration));

      return response;
    } catch (e) {
      return ExceptionHandlers().getExceptionString(e);
    }
  }

  //PATCH
  Future<dynamic> patch(String url, dynamic header, dynamic body) async {
    var uri = Uri.parse(url);
    var payload = body;
    try {
      var response = await http
          .patch(uri, headers: header, body: payload)
          .timeout(const Duration(seconds: AppConstant.timeOutDuration));

      return response;
    } catch (e) {
      return ExceptionHandlers().getExceptionString(e);
    }
  }

  //DELETE
  Future<dynamic> delete(String url, dynamic header) async {
    var uri = Uri.parse(url);
    try {
      var response = await http
          .delete(uri, headers: header)
          .timeout(const Duration(seconds: AppConstant.timeOutDuration));

      return response;
    } catch (e) {
      return ExceptionHandlers().getExceptionString(e);
    }
  }

  //UPDATE

  //PUT

//----------------------ERROR STATUS CODES----------------------

  // dynamic _processResponse(http.Response response) async {
  //   switch (response.statusCode) {
  //     case 200:
  //       var responseJson = response.body;
  //       return responseJson;
  //     case 201:
  //       var responseJson = response.statusCode;
  //       return responseJson;
  //     case 204:
  //       var responseJson = response.statusCode;
  //       return responseJson;
  //     case 400: //Bad request
  //       var responseJson = response.body;
  //       return responseJson;
  //     case 401: //Unauthorized
  //       var responseJson = response.body;
  //       return responseJson;
  //     case 403: //Forbidden
  //       return ExceptionHandlers.customError("Session Expire.");
  //     case 404: //Resource Not Found
  //       throw NotFoundException(jsonDecode(response.body)['message']);
  //     case 422:
  //       var responseJson = response.statusCode;
  //       return responseJson;
  //     case 500: //Internal Server Error
  //       var responseJson = response.body;
  //       return responseJson;
  //     default:
  //       throw FetchDataException(
  //           'Something went wrong! ${response.statusCode}');
  //   }
  // }
}
