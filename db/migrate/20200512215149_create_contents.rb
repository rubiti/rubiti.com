class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :banner_title_1
      t.string :banner_content_1
      t.string :banner_title_2
      t.string :banner_content_2
      t.string :banner_title_3
      t.string :banner_content_3
      t.string :wrapper_title
      t.string :wrapper_description
      t.string :highlight_title_1
      t.string :highlight_content_1
      t.string :highlight_title_2
      t.string :highlight_content_2
      t.string :highlight_title_3
      t.string :highlight_content_3
      t.string :highlight_title_4
      t.string :highlight_content_4
      t.string :cta_title
      t.string :cta_content
      t.string :contact_title
      t.string :contact_content

      t.timestamps
    end
  end
end
