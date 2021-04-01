class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :host
      t.string :url

      t.timestamps
    end
  end
end
