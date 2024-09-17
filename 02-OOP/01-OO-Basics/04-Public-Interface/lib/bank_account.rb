# This is how you define your own custom exception classes
class DepositError < StandardError
end

require_relative("transaction")

class BankAccount
  # Contract for the BankAccount class
  # - you can access full owner's name and balance, but partial IBAN
  # - you cannot access full IBAN
  # - you can print partial account info
  # - you can print transactions only with a password
  # - you can withdraw or deposit money
  # - You can see the balance of the account (through the balance variable)

  attr_reader :name, :balance

  MIN_DEPOSIT = 100

  def initialize(name, iban, initial_deposit, password)
    fail DepositError, "Insufficient deposit" unless initial_deposit >= MIN_DEPOSIT

    @password     = password
    @transactions = []
    @balance      = 0
    @name         = name
    @iban         = iban

    add_transaction(initial_deposit)
  end

  def withdraw(amount)
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message

    return add_transaction(-amount)
  end

  def deposit(amount)
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message

    return add_transaction(amount)
  end

  def transactions_history(args = {})
    # TODO: Check if there is a password and if so if it is correct
    # TODO: return a string displaying the transactions, BUT NOT return the transaction array!

    if args[:password]
      args[:password] == @password ? "Transactions: #{@transactions.join(', ')}" : "wrong password"
    else
      return "no password given"
    end
  end

  def iban
    # TODO: Hide the middle of the IBAN like FR14**************606 and return it

    first_part = @iban[0, 4]
    last_part = @iban[-3, 3]

    masked_part = "*" * (@iban.length - 7)

    return "#{first_part}#{masked_part}#{last_part}"
  end

  def to_s
    # Method used when printing account object as string (also used for string interpolation)
    # TODO: return a string with the account owner, the hidden iban and the balance of the account

    "#{@name} #{iban} #{@balance}"
  end

  private

  def add_transaction(amount)
    # TODO: add the amount in the transactions array
    # TODO: update the current balance (which represents the balance of the account)

    @balance += amount
    transaction = Transaction.new(amount)
    @transactions << transaction
    return transaction.to_s
  end
end
