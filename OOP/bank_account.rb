class BankAccount

  attr_accessor :account, :balance, :savings_balance, :checking_balance
  @@number_of_accounts = 0

  def initialize
    @account = generateaccount
    @interest_rate = 0.05
    @savings_balance = 2500
    @checking_balance = 2500
    @balance = balance #instance
    @@number_of_accounts += 1 #class attribute
  end

  def DisplayAccount
      puts "Account Number: #{@account}"
      puts "Interest Rate: #{interest_rate}"
      puts "Your interest rate is: #{@interest_rate}"
      puts "Total: $#{(@savings_balance + @checking_balance)} "
      puts "Savings Account Balance: $#{savings_balance}"
      puts "Checking Account Balance: $#{checking_balance}"
    self
  end

  def SavingDeposit(amount)
    @savings_balance += amount
      puts "You have made a deposit of $#{amount} into your Savings Account leaving you with $#{savings_balance}."
    self
  end


  def CheckingDeposit(amount)
    @checking_balance += amount
      puts "You have made a deposit of $#{amount} into your Checking Account leaving you with $#{checking_balance}."
      self
  end


  def SavingWithdrawal(amount)
    @savings_balance -= amount
      puts "You have made a withdrawal of $#{amount} leaving you with $#{savings_balance} in your Savings Account."
    self
  end

  def CheckingWithdrawal(amount)
    @checking_balance -= amount
      puts "You have made a withdrawal of $#{amount} leaving you with $#{checking_balance} in your Checking Account."
    self
  end

  def self.number_of_accounts
      @@number_of_accounts
  end

  private

  def interest_rate
    @interest_rate
  end

  def generateaccount
    @account = rand(10000000000000000..99999999999999999).to_s
  end

end



Harmann = BankAccount.new
Uma = BankAccount.new

Harmann.DisplayAccount.CheckingDeposit(500).CheckingWithdrawal(10)

Uma.DisplayAccount.SavingDeposit(5000).SavingWithdrawal(17)

