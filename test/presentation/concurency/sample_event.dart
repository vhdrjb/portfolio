part of 'sample_bloc.dart';

@immutable
abstract class SampleEvent {}

class ConcurrentEvent extends SampleEvent {}

class SecondEvent extends SampleEvent {}
