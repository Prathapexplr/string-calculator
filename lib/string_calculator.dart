class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String delimiter = ',';
    String input = numbers;

    // Here Checking for custom delimiter format: "//;\n1;2"
    if (numbers.startsWith('//')) {
      final delimiterEndIndex = numbers.indexOf('\n');
      delimiter = numbers.substring(2, delimiterEndIndex);
      input = numbers.substring(delimiterEndIndex + 1);
    }

    final tokens = input.split(RegExp('[${RegExp.escape(delimiter)}\n]'));

    final sum = tokens.map(int.parse).reduce((a, b) => a + b);
    return sum;
  }
}
