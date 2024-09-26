extension ListExtensions<T> on List<T> {
  Iterable<E> mapIndex<E>(E Function(T e,int index) toElement) {
    return MappedIterable(this,toElement);
  }
}
class MappedIterable<S, T> extends Iterable<T> {
  final Iterable<S> _iterable;
  final _Transformation<S, T> _f;

  factory MappedIterable(Iterable<S> iterable, T Function(S value, int index) function) {
    return MappedIterable<S, T>._(iterable, function);
  }

  MappedIterable._(this._iterable, this._f);

  @override
  Iterator<T> get iterator => MappedIterator<S, T>(_iterable.iterator, _f);

  // Length related functions are independent of the mapping.
  @override
  int get length => _iterable.length;
  @override
  bool get isEmpty => _iterable.isEmpty;

  // Index based lookup can be done before transforming.
  @override
  T get first => _f(_iterable.first,0);
  @override
  T get last => _f(_iterable.last,length-1);
  @override
  T elementAt(int index) => _f(_iterable.elementAt(index),index);
}
typedef _Transformation<S, T> = T Function(S value,int index);
class MappedIterator<S, T> implements Iterator<T> {
  T? _current;
  final Iterator<S> _iterator;
  final _Transformation<S, T> _f;

  MappedIterator(this._iterator, this._f);
  int index = 0;

  @override
  bool moveNext() {
    if (_iterator.moveNext()) {
      _current = _f(_iterator.current,index);
      index++;
      return true;
    }
    _current = null;
    return false;
  }

  @override
  T get current => _current as T;
}

