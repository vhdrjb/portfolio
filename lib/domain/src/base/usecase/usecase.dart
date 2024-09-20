import 'dart:async';

abstract class UseCase<T> {

  FutureOr<T> perform();
}