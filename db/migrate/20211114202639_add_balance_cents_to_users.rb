class AddBalanceCentsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :balance_cents, :integer
  end
end
