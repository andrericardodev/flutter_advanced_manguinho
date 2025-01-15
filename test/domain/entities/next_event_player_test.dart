import 'package:flutter_advanced_manguinho/domain/entities/next_event_player.dart';
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
    expect(initialsOf('A'), 'A');
  });

  test('should convert to uppercase', () {
    expect(initialsOf('alexandre ribeiro'), 'AR');
    expect(initialsOf('Xavier'), 'XA');
    expect(initialsOf('b'), 'B');
  });

  test('should return "-" when name is empty', () {
    expect(initialsOf(''), '-');
  });

  test('should ignore extra whitespace', () {
    expect(initialsOf('Alexandre Ribeiro '), 'AR');
    expect(initialsOf(' Alexandre Ribeiro'), 'AR');
    expect(initialsOf(' Alexandre Ribeiro '), 'AR');
    expect(initialsOf('Alexandre  Ribeiro'), 'AR');
    expect(initialsOf('  Alexandre  Ribeiro  '), 'AR');
    expect(initialsOf(' Xavier'), 'XA');
    expect(initialsOf('Xavier '), 'XA');
    expect(initialsOf(' Xavier '), 'XA');
    expect(initialsOf(' A'), 'A');
    expect(initialsOf('A '), 'A');
    expect(initialsOf(' A '), 'A');
    expect(initialsOf(' '), '-');
    expect(initialsOf('  '), '-');
  });
}

