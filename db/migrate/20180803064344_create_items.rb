class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string     :seller
      t.string     :name
      t.string     :content
      t.integer    :price
      t.belongs_to :user

      t.timestamps
    end
  end
end
