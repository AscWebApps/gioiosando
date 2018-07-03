class CreateSeoTags < ActiveRecord::Migration[5.1]
  def change
    create_table :seo_tags do |t|
      t.string :tag_title
      t.string :tag_description
      t.references :seo_polymorphic, polymorphic: true, index: true 

      t.timestamps
    end
  end
end
