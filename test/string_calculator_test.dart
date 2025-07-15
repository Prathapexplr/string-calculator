import 'package:test/test.dart';
import 'package:string_calculator/string_calculator.dart';

void main() {
  group('StringCalculator.add', () {
    test('should return 0 for empty string', () {
      expect(StringCalculator().add(''), equals(0));
    });
  });
}
