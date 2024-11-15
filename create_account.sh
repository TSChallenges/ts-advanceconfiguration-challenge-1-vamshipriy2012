#!/bin/bash

# Check if the correct number of arguments are provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 <username> <account_number>"
  exit 1
fi

# Assign input parameters to variables
USERNAME=$1
ACCOUNT_NUMBER=$2
DEFAULT_BALANCE=1000
ACCOUNTS_FILE="accounts.txt"

# Check if the username already exists on the system
if id "$USERNAME" &>/dev/null; then
  echo "Warning: User '$USERNAME' already exists on the system. Skipping user creation."
else
  # Create the user account using the 'useradd' command
  echo "Creating user '$USERNAME'..."
  useradd "$USERNAME"

  # Check if user creation was successful
  if [ $? -ne 0 ]; then
    echo "Error: Failed to create user '$USERNAME'."
    exit 1
  fi
fi

# Check if the account number already exists in accounts.txt
if grep -q "$ACCOUNT_NUMBER" "$ACCOUNTS_FILE"; then
  echo "Error: Account number '$ACCOUNT_NUMBER' already exists."
  exit 1
fi

# Add the account details to accounts.txt
echo "Username: $USERNAME | Account: $ACCOUNT_NUMBER | Balance: $DEFAULT_BALANCE" >> "$ACCOUNTS_FILE"

# Confirm account creation
echo "Account created successfully for user '$USERNAME' with account number '$ACCOUNT_NUMBER'."
echo "Initial balance: $DEFAULT_BALANCE"
