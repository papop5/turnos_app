class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :correo
      t.string :login
      t.integer :estado
      t.string :password_digest
      t.references :agencia, index: true, foreign_key: true
      t.string :rol

      t.timestamps null: false
    end
  end
end
