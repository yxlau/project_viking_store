class ChangeUserIdInCreditCards < ActiveRecord::Migration[5.0]
  def change
    change_column_null :credit_cards, :user_id, true
  end
end
