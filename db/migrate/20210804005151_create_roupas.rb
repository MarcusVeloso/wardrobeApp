class CreateRoupas < ActiveRecord::Migration[6.1]
  def change
    create_table :roupas do |t|
      t.string :descricao
      t.string :tipo_roupa
      t.string :tamanho
      t.string :marca
      t.boolean :ativo

      t.timestamps
    end
  end
end
