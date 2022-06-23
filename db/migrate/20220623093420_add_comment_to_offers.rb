class AddCommentToOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :comment, :text
  end
end
