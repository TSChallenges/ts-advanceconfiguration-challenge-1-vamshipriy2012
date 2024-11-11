[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/Eghospgr)
## Banking System - Advanced Configuration Playground Challenge

### Objective

This challenge simulates a real-world scenario where you are managing the backend of a banking system. 

You need to:

* Write scripts to handle banking transactions.

* Set up monitoring for transaction logs.

* Ensure that new bank accounts are created correctly with proper configurations.

* All tasks will be evaluated using GitHub Actions.

# Scenario: Banking System Setup

You have been tasked with managing a backend system for a small bank. 

Your tasks include:

* Creating a transaction processing script that logs deposits and withdrawals.

* Monitoring transaction logs to identify suspicious activity (e.g., high-value transactions).

* Automating the creation of new bank accounts with default balances.

# Assignment Setup

* Open the GitHub Classroom assignment link provided to you.

* It will create a personal repository for you.

Open the repository in GitHub Codespaces:

  * Go to the Code tab and click "Code > Codespaces".
  * Launch a new Codespace or connect to an existing one.

# Tasks

1. ## Task1: Create a Banking **Transaction Script** (15 marks)

Write a transaction.sh script that Takes three input parameters:

  *  Account number
  * Transaction type (deposit or withdraw) 
  * Amount

Updates the transaction_log.txt with the details of each transaction. 

Example log entry:

      2024-10-26 13:45:12 | Account: 12345 | deposit: 5000
      2024-10-26 14:10:32 | Account: 67890 | withdraw: 2000


If a withdrawal exceeds ₹50,000, print a warning:

       ALERT: High-value transaction detected! Withdrawal: ₹50000 or above.


Ensure the script is executable:
bash

    chmod +x transaction.sh



2. ## Task2: **Monitor Transaction** Logs for Suspicious Activity (10 marks)

Create a monitor_transactions.sh script that:
        * Scans the transaction_log.txt.
        * Identifies any withdrawals of ₹50,000 or more and prints a summary of those transactions.

Sample output:

       Suspicious Transactions:  2024-10-26 14:10:32 | Account: 67890 | withdraw: 50000


Make the script executable:
bash

       chmod +x monitor_transactions.sh



3. ## Task3: Automate Bank Account Creation(15 marks)

Write a **create_account.sh** script that: (15 marks)

 * Takes a username and account number as input.
 * Creates a new user account with the given username. 
 * Adds an entry to accounts.txt with the username, account number, and default balance of ₹1,000.

Sample usage:

       ./create_account.sh john_doe 12345


Sample accounts.txt entry:

     Username: john_doe | Account: 12345 | Balance: 1000



# Automated Evaluation with GitHub Actions
A GitHub Actions workflow will automatically evaluate your solution.

The workflow will:

* Check if all scripts are present and executable.
* Run test cases to validate your transaction logs, monitoring, and account creation.
* Fail the workflow if any task is incomplete or incorrect.
