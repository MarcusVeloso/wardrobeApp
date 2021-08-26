class CreateCalcados < ActiveRecord::Migration[6.1]
  def change
    create_table :calcados do |t|
      t.string :descricao
      t.string :tipo_calcado
      t.string :tamanho
      t.string :marca
      t.boolean :favorito
      t.boolean :ativo

      t.timestamps
    end
  end
end
