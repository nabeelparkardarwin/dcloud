class UnknownError extends Error {
  @override
  String toString() {
    return 'UnknownError';
  }
}

class InvalidApiCredentialsException extends ArgumentError {
  @override
  String toString() {
    return 'InvalidApiCredentialsException';
  }
}

class ClientException implements Exception {
  final String message;

  const ClientException(this.message);

  @override
  String toString() {
    return 'ClientException: $message';
  }
}

class FileTooLargeException extends Error {}
