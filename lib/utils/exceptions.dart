class CustomException implements Exception {
  final dynamic message;
  final int statusCode;

  CustomException(this.message, this.statusCode);
}

class UnAuthorizedAccess implements Exception {
  final dynamic message;
  final int statusCode;

  UnAuthorizedAccess(this.message, this.statusCode);
}

class StoragePermissionDenied implements Exception {
  final String message;

  StoragePermissionDenied(this.message);
}

class StoragePermissionDeniedPermanently implements Exception {
  final String message;

  StoragePermissionDeniedPermanently(this.message);
}
