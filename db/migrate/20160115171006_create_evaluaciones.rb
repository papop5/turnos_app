class CreateEvaluaciones < ActiveRecord::Migration
  def change
    create_table :evaluaciones do |t|
      t.references :turno, index: true, foreign_key: true
      t.string :pregunta1
      t.integer :resultado1
      t.string :pregunta2
      t.integer :resultado2
      t.string :pregunta3
      t.integer :resultado3
      t.string :pregunta4
      t.integer :resultado4
      t.integer :resultado_total
      t.text :comentario

      t.timestamps null: false
    end
  end
end
