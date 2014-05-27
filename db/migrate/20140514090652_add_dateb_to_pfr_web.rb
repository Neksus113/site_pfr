class AddDatebToPfrWeb < ActiveRecord::Migration
  def change
    add_column :pfr_webs, :dateb, :string
  end
end
