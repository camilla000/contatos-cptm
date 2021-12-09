class CreateAssistentes < ActiveRecord::Migration[6.1]
  def change
    create_table :assistentes do |t|
      t.string :chefe
      t.string :telefone
      t.string :secretaria
      t.string :telefone

      t.timestamps
    end
  end
end
