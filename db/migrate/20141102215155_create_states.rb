class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.string :climate
      t.string :language
      t.text :info
      t.text :culture

      t.timestamps
    end
  end
end
