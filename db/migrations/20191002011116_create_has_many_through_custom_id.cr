class CreateHasManyThroughCustomId::V20191002011116 < Avram::Migrator::Migration::V1
  def migrate
    create :categories do
      primary_key id : Int16
      add_timestamps
      add name : String
    end

    create :post_categories do
      primary_key id : Int64
      add_timestamps
      add_belongs_to category : Category, on_delete: :cascade, foreign_key_type: Int16
      add_belongs_to post : Post, on_delete: :cascade
    end
  end

  def rollback
    drop :post_categories
    drop :categories
  end
end
