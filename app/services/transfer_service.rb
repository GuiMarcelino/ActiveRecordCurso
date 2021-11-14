class TransferService
  def self.perform(user, company, amount_cents)
    ActiveRecord::Base.transaction do
      raise ActiveRecord::RecordInvalid unless amount_cents.is_a? Integer
      user.update!(balance_cents: user.balance_cents + amount_cents) # gem money rails
      company.update!(balance_cents: user.balance_cents - amount_cents) # gem money rails

      Transfer.transaction do
        Transfer.create!(balance_cents: amount_cents, user: user, company: company )
      end
    end
  rescue ActiveRecord::RecordInvalid
    puts 'invalid value for amount_cents'
  end
end