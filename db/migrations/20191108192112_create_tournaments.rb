Hanami::Model.migration do
  change do
    create_table :tournaments do
      primary_key :id

      foreign_key :organizer_id, :organizers, on_delete: :cascade, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
      column :name, String
      column :date, Date
    end
  end
end
