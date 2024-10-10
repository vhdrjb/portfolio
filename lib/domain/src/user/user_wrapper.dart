class UserWrapper {
  final String name;
  final DateTime? startedFrom;
  final String? headline;
  final String? bookingUrl;
  final String? email;
  final String? linkedin;
  final String avatarUrl;
  final String? about;

  const UserWrapper({
    required this.name,
    this.startedFrom,
    this.headline,
    this.bookingUrl,
    this.email,
    this.linkedin,
    required this.avatarUrl,
    this.about,
  });
}