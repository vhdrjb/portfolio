part of 'fake_bloc.dart';

@immutable
abstract class FakeState {
  const FakeState();
}

class FakeInitial extends FakeState {}

class ResultState extends Equatable implements FakeState {
  final String result;

  const ResultState({
    required this.result,
  });

  @override
  List<Object?> get props => [result];
}
