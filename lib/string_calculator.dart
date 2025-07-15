class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String delimiter = ',';
    String input = numbers;

    if (numbers.startsWith('//')) {
      final delimiterEndIndex = numbers.indexOf('\n');
      delimiter = numbers.substring(2, delimiterEndIndex);
      input = numbers.substring(delimiterEndIndex + 1);
    }

    final tokens = input.split(RegExp('[${RegExp.escape(delimiter)}\n]'));
    final parsed = tokens.map(int.parse).toList();

    final negatives = parsed.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed ${negatives.join(',')}');
    }

    return parsed.reduce((a, b) => a + b);
  }
}
