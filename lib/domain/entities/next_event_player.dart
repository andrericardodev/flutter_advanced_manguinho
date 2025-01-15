class NextEventPlayer {
  final String id;
  final String name;
  final String initials;
  final String? photo;
  final String? position;
  final bool isConfirmed;
  final DateTime? confirmationDate;

  NextEventPlayer._({
    required this.id,
    required this.name,
    required this.initials,
    this.photo,
    this.position,
    required this.isConfirmed,
    this.confirmationDate,
  });

  factory NextEventPlayer({
    required String id,
    required String name,
    String? photo,
    String? position,
    required bool isConfirmed,
    DateTime? confirmationDate,
  }) =>
      NextEventPlayer._(
        id: id,
        name: name,
        initials: _getInitials(name),
        photo: photo,
        position: position,
        isConfirmed: isConfirmed,
        confirmationDate: confirmationDate,
      );

  static String _getInitials(String name) {
    final names = name.toUpperCase().trim().split(' ');
    String firstChar = names.first.split('').firstOrNull ?? '-';
    String lastChar =
        names.last.split('').elementAtOrNull(names.length == 1 ? 1 : 0) ?? '';
    return '$firstChar$lastChar';
  }
}
