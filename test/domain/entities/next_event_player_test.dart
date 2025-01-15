import 'package:flutter_test/flutter_test.dart';

void main() {
  String initialsOf(String name) =>
      NextEventPlayer(id: '', name: name, isConfirmed: true).initials;
  test('should return the first letter of the first and last names', () {
    expect(initialsOf('Alexandre Ribeiro'), 'AR');
    expect(initialsOf('José Alves'), 'JA');
    expect(initialsOf('João Romário Silva'), 'JS');
  });

  test('should return the first letters of the first names', () {
    expect(initialsOf('Xavier'), 'XA');
  });

  test('should convert to uppercase', () {
    expect(initialsOf('alexandre ribeiro'), 'AR');
    expect(initialsOf('Xavier'), 'XA');
  });
}

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
    final names = name.toUpperCase().split(' ');
    String firstChar = names.first[0];
    String lastChar = names.last[names.length == 1 ? 1 : 0];
    return '$firstChar$lastChar';
  }
}
