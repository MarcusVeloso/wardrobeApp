class CreateAcessorios < ActiveRecord::Migration[6.1]
  def change
    create_table :acessorios do |t|
      t.string :descricao
      t.string :tipo_acessorio
      t.string :tamanho
      t.string :marca
      t.boolean :ativo

      t.timestamps
    end
  end
end
