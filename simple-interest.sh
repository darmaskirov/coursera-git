### **simple-interest.sh**
```bash
#!/usr/bin/env bash
# Скрипт для обчислення простих відсотків
# Формула: I = P * R * T

if [ "$#" -ne 3 ]; then
  echo "Використання: $0 <principal P> <rate R> <time T>"
  echo "Приклад: $0 1000 0.05 2"
  exit 1
fi

P=$1
R=$2
T=$3

I=$(echo "$P * $R * $T" | bc -l)
A=$(echo "$P + $I" | bc -l)

echo "Principal (P): $P"
echo "Rate (R): $R"
echo "Time (T): $T"
echo "Simple Interest (I): $I"
echo "Amount (A = P + I): $A"

