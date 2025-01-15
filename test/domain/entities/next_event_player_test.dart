import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should return the first letter of the first and last names', () {
    final player = NextEventPlayer(
      id: '',
      name: 'Andre Ricardo',
      isConfirmed: true,
    );
    expect(player.getInitials(), 'AR');

    final player2 = NextEventPlayer(
      id: '',
      name: 'José Arantes',
      isConfirmed: true,
    );
    expect(player2.getInitials(), 'JA');
  });
}

class NextEventPlayer {
  final String id;
  final String name;
  final String? photo;
  final String? position;
  final bool isConfirmed;
  final DateTime? confirmationDate;

  NextEventPlayer({
    required this.id,
    required this.name,
    this.photo,
    this.position,
    required this.isConfirmed,
    this.confirmationDate,
  });

  String getInitials() {
    final names = name.split(' ');
    return '${names[0][0]}${names[1][0]}';
  }
}
