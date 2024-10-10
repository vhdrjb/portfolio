extension NullableLet<T> on T? {
  R? let<R>(R Function(T it) block) {
    if (this != null) {
      return block(this!);
    }
    return null;
  }
}