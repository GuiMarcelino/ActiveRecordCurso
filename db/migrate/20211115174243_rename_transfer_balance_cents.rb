class RenameTransferBalanceCents < ActiveRecord::Migration[5.2]
  def change
    rename_column :transfers, :balance_cents, :amount_cents
  end
end
