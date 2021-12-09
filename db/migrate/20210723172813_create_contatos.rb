class CreateContatos < ActiveRecord::Migration[6.1]
  def change
    create_table :contatos do |t|
      t.string :nome
      t.string :telefone
      t.string :email
      t.string :departamento
      t.string :cargo
      t.string :locacao
      t.string :chefe
      t.string :secretaria

      t.timestamps
    end
  end
end
