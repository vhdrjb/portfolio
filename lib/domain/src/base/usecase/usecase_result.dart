class UsecaseResult<T> {
  final T? _data;
  final dynamic error;

  UsecaseResult._({required T? data, required this.error}) : _data = data;

  factory UsecaseResult.success({required T data}) {
    return UsecaseResult._(data: data, error: null);
  }

  factory UsecaseResult.failure({required dynamic error}) {
    return UsecaseResult._(data: null, error: error);
  }

  bool get hasError => error != null;

  bool get hasData => _data != null;

  T get data => _data!;
}
