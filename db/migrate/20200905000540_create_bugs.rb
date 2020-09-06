class CreateBugs < ActiveRecord::Migration[5.2]
  def change
    create_table :bugs do |t|
      t.string :numero
      t.string :titre
      t.string :analyse
      t.string :statut
      t.string :beneficiaire
      t.string :sujet

      t.timestamps
    end
  end
end
