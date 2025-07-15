class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    // This logic replace newlines with commas so that I can reuse the split logic
    final cleaned = numbers.replaceAll('\n', ',');
    final parts = cleaned.split(',');

    final sum = parts.map(int.parse).reduce((a, b) => a + b);
    return sum;
  }
}
