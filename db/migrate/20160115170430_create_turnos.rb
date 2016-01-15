class CreateTurnos < ActiveRecord::Migration
  def change
    create_table :turnos do |t|
      t.string :nombre
      t.string :asunto
      t.text :descripcion
      t.timestamp :hora_ingreso
      t.timestamp :hora_atencion
      t.timestamp :hora_finalizacion
      t.references :usuario, index: true, foreign_key: true
      t.text :comentario
      t.integer :estado
      t.references :agencia, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
