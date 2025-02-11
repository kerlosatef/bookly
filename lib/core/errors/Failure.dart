import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure {
  const ServerFailure(super.message);
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return const ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return const ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return const ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return const ServerFailure('Bad certificate with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      default:
        return const ServerFailure('Unexpected error');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return const ServerFailure(
          'Your request not found, Please try again later');
    } else if (statusCode == 500) {
      return const ServerFailure(
          'Internal server error, Please try again later');
    } else {
      return const ServerFailure('Unexpected error');
    }
  }
}

class FailureNetwork extends Failure {
  const FailureNetwork(super.message);
}

class FailureCache extends Failure {
  const FailureCache(super.message);
}
