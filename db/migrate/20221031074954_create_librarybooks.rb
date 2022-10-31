class CreateLibrarybooks < ActiveRecord::Migration[7.0]
  def change
    create_table :librarybooks do |t|
      t.string :title
      t.string :status
      t.datetime :status_date

      t.timestamps
    end
  end
end
