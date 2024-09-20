class WrongUsecaseBehaviourError extends Error {
  final String message;

  WrongUsecaseBehaviourError({
    required this.message,
  });

  @override
  String toString() {
    return 'Wrong Usecase Behaviour Error:$message';
  }
}