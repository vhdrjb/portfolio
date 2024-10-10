part of 'sample_bloc.dart';

@immutable
abstract class SampleState {}

class SampleInitial extends SampleState {}

class FirstSampleState extends SampleState {
  final String message;

  FirstSampleState({
    required this.message,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FirstSampleState &&
          runtimeType == other.runtimeType &&
          message == other.message;

  @override
  int get hashCode => message.hashCode;
}

