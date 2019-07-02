class CreateBeautifies < ActiveRecord::Migration[5.2]
  def change
    create_table :beautifies do |t|
      t.text :content

      t.timestamps
    end
  end
end
