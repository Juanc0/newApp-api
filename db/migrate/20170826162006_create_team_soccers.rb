class CreateTeamSoccers < ActiveRecord::Migration[5.1]
  def change
    create_table :team_soccers do |t|
      t.string :name
      t.string :country
      t.string :coach

      t.timestamps
    end
  end
end
