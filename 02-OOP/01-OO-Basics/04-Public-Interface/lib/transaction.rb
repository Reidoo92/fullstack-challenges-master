# Optional
class Transaction
  def initialize(amount)
    # Initialize amount and date of transaction

    @amount = amount
    @date_of_transaction = Time.now
  end

  def to_s
    # Nicely print transaction info using Time#strftime.

    formatted_date = @date_of_transaction.strftime("%d-%m-%Y %H:%M:%S")
    "Transaction: #{format('%.2f', @amount)}€ on #{formatted_date}"
  end
end
