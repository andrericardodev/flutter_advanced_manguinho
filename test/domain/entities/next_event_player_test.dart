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

    final player3 = NextEventPlayer(
      id: '',
      name: 'Jose Ricardo da Silva',
      isConfirmed: true,
    );
    expect(player3.getInitials(), 'JS');
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
    String firstChar = names.first[0];
    String lastChar = names.last[0];
    return '$firstChar$lastChar';
  }
}
