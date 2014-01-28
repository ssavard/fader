class AddCompleteIndicatorToMarkets < ActiveRecord::Migration
  def change
    add_column :markets, :complete, :boolean
  end
end
