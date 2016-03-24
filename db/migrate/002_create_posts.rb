migration 2, :create_posts do
  up do
    create_table :posts do
      column :id, Integer, :serial => true
      column :title, DataMapper::Property::String, :length => 255
      column :body, DataMapper::Property::Text
    end
  end

  down do
    drop_table :posts
  end
end
