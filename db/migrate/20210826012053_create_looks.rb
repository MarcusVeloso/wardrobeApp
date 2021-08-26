class CreateLooks < ActiveRecord::Migration[6.1]
  def change
    create_table :looks do |t|
      t.string :descricao
      t.string :ocasiao
      t.references :calcado, null: false, foreign_key: true
      t.boolean :favorito
      t.boolean :ativo

      t.timestamps
    end
  end
end
