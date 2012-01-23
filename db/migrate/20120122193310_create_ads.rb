class CreateAds < ActiveRecord::Migration
  def self.up
    create_table :ads do |t|
      t.string :nome
      t.string :imagem
      t.string :url
      t.integer :visitas

      t.timestamps
    end
  end

  def self.down
    drop_table :ads
  end
end
