#!/bin/bash

# Input parameters: account number, transaction type, and amount
account_number=$1
transaction_type=$2
amount=$3
TRANSACTION_LOG="transaction_log.txt"

if [ "$transaction_type" != "deposit" ] && [ "$transaction_type" != "withdraw" ]; then
  echo "Error: Transaction type must be either 'deposit' or 'withdraw'."
  exit 1
fi
if ! echo "$amount" | grep -Eq '^[0-9]+(\.[0-9]+)?$'; then
  echo "Error: Amount must be a valid number."
  exit 1
fi
# Get the current timestamp
timestamp= #todo
DATE=$(date "+%Y-%m-%d %H:%M:%S")

# Log the transaction in transaction_log.txt
#todo
if [ "$transaction_type" == "withdraw" ] && [ "$amount" -ge 50000 ]; then
  echo "ALERT: High-value transaction detected! Withdrawal: $amount"
fi
echo "$DATE | Account: $account_number | $transaction_type: $amount" >> "$TRANSACTION_LOG"

# Check if the transaction is a high-value withdrawal
#todo
echo "Transaction recorded successfully."
