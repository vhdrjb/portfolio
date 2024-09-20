part of 'fake_bloc.dart';

@immutable
abstract class FakeEvent {}
class SuccessEvent extends FakeEvent {}

class SuccessWithWaitEvent extends FakeEvent {}

class FailureEvent extends FakeEvent {}