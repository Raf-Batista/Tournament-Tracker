Hanami::Model.migration do
  change do
    create_table :organizers do
      primary_key :id

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
      column :username, String
      column :password_digest, String 
      column :email, String
    end
  end
end
