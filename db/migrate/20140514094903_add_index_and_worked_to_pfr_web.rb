class AddIndexAndWorkedToPfrWeb < ActiveRecord::Migration
  def change
    add_column :pfr_webs, :ind, :integer
    add_column :pfr_webs, :worked, :boolean
  end
end
