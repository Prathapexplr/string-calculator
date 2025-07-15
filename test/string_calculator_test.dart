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

    test('should support custom delimiter defined in format //;\n1;2', () {
      expect(StringCalculator().add('//;\n1;2'), equals(3));
    });

    test('should throw exception if negative number is passed', () {
      expect(
        () => StringCalculator().add('1,-2,3'),
        throwsA(
          predicate(
            (e) =>
                e is Exception &&
                e.toString().contains('negative numbers not allowed -2'),
          ),
        ),
      );
    });

    test('should throw exception with all negative numbers listed', () {
      expect(
        () => StringCalculator().add('1,-2,3,-5'),
        throwsA(
          predicate(
            (e) =>
                e is Exception &&
                e.toString().contains('negative numbers not allowed -2,-5'),
          ),
        ),
      );
    });
    
  });
}
