import 'package:test/test.dart';
import 'package:string_calculator/string_calculator.dart';

void main() {
  group('StringCalculator.add', () {
    test('should return 0 for empty string', () {
      expect(StringCalculator().add(''), equals(0));
    });

    test('should return number for single number input', () {
      expect(StringCalculator().add('1'), equals(1));
    });

    test('should return sum for two comma-separated numbers', () {
      expect(StringCalculator().add('1,5'), equals(6));
    });

    test('should return sum for multiple comma-separated numbers', () {
      expect(StringCalculator().add('1,2,3,4'), equals(10));
    });

    test('should handle newlines between numbers', () {
      expect(StringCalculator().add('1\n2,3'), equals(6));
    });
  });
}
