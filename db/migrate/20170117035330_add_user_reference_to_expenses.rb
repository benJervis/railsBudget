class AddUserReferenceToExpenses < ActiveRecord::Migration[5.0]
  def change
    add_column :expenses, :user_id, :reference
  end
end