// ignore_for_file: curly_braces_in_flow_control_structures, prefer_is_empty, deprecated_member_use

import 'package:FaceApp/dio/error_response.dart';
import 'package:dio/dio.dart';

class ApiErrorHandler {
  static dynamic getMessage(error) {
    dynamic errorDescription = "";

    if (error is Exception) {
      try {
        if (error is DioException) {
          switch (error.type) {
            case DioExceptionType.badCertificate:
              errorDescription = "badCertificate";
              break;
            case DioExceptionType.connectionError:
              errorDescription = "connectionError";
              break;
            case DioExceptionType.cancel:
              errorDescription = "Request to API server was cancelled";
              break;
            case DioExceptionType.connectionTimeout:
              errorDescription = "Connection timeout with API server";
              break;
            case DioExceptionType.unknown:
              errorDescription =
                  "Connection to API server failed due to internet connection";
              break;
            case DioExceptionType.receiveTimeout:
              errorDescription =
                  "Receive timeout in connection with API server";
              break;
            case DioExceptionType.badResponse:
              switch (error.response!.statusCode) {
                case 302:
                  errorDescription = "302";
                  break;
                case 400:
                  errorDescription = "${error.response!.data}";
                  break;
                case 409:
                  try {
                    // Assuming the response contains a 'message' field, otherwise, use a generic error message.
                    errorDescription = error.response!.data['message'] ??
                        "An error occurred while processing your request. Please try again.";
                  } catch (e) {
                    errorDescription = "${error.response!.data}";
                  }
                  break;
                case 401:
                  errorDescription =
                      "Sorry, you are not authorized to perform this action.";
                  break;
                case 404:
                  errorDescription = "Not found";
                  break;
                case 500:
                case 503:
                  errorDescription = error.response!.statusMessage;
                  break;
                default:
                  ErrorResponse errorResponse =
                      ErrorResponse.fromJson(error.response!.data);
                  if (errorResponse.errors.isNotEmpty) {
                    errorDescription = errorResponse;
                  } else {
                    errorDescription = "Failed to load data -";
                  }
              }
              break;
            case DioExceptionType.sendTimeout:
              errorDescription = "Send timeout with server";
              break;
          }
        } else {
          errorDescription = "Unexpected error occured";
        }
      } on FormatException catch (e) {
        errorDescription = e.toString();
      }
    } else {
      errorDescription = "is not a subtype of exception";
    }
    return errorDescription;
  }
}
