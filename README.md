# 🧮 String Calculator - TDD Kata (Dart)

This is a simple string calculator implemented using **Test-Driven Development (TDD)** in Dart.  
Each feature was developed by writing a failing test first, writing minimal code to pass it, then refactoring.

---

## ✅ Features Implemented

| Step | Description |
|------|-------------|
| 1 | Return 0 for empty string |
| 2 | Return number for single input |
| 3 | Return sum for two numbers |
| 4 | Return sum for any number of comma-separated numbers |
| 5 | Support newline as delimiter |
| 6 | Support custom delimiters (e.g. `//;\n1;2`) |
| 7 | Throw exception on negative numbers |
| 8 | List **all** negative numbers in exception |

---

## 🚀 How to Run

### 🔧 1. Clone the repository:
```bash
git clone https://github.com/Prathapexplr/string-calculator.git
cd string_calculator
dart pub get
dart test
