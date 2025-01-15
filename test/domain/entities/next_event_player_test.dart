import 'package:flutter_test/flutter_test.dart';

void main() {
  NextEventPlayer makeSut(String name) =>
      NextEventPlayer(id: '', name: name, isConfirmed: true);
  test('should return the first letter of the first and last names', () {
    expect(makeSut('Alexandre Ribeiro').getInitials(), 'AR');
    expect(makeSut('José Alves').getInitials(), 'JA');
    expect(makeSut('João Romário Silva').getInitials(), 'JS');
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
