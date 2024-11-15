#Create a monitor_transactions.sh script that: Scans the transaction_log.txt. 
#Identifies any withdrawals of ₹50,000 or more and prints a summary of those transactions.
TRANSACTION_LOG="transaction_log.txt"
if [ ! -f "$TRANSACTION_LOG" ]; then
  echo "Error: $TRANSACTION_LOG not found!"
  exit 1
fi
SUSPICIOUS_FOUND=false
echo "Suspicious Transactions:"
while IFS= read -r line; do
  # Extract the transaction type and amount using regex
  if [[ "$line" =~ withdraw:\ ([0-9]+) ]]; then
    AMOUNT="${BASH_REMATCH[1]}"  # The amount of the withdrawal

    # If the withdrawal amount is ₹50,000 or more, print the suspicious transaction
    if [ "$AMOUNT" -ge 50000 ]; then
      echo "$line"
      SUSPICIOUS_FOUND=true
    fi
  fi
done < "$TRANSACTION_LOG"
if ! $SUSPICIOUS_FOUND; then
  echo "No suspicious transactions found."
fi

#Sample output: 
  # Suspicious Transactions:  2024-10-26 14:10:32 | Account: 67890 | Withdraw: 50000
