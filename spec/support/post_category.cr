class PostCategory < BaseModel
  skip_default_columns

  table do
    primary_key id : Int64
    timestamps
    belongs_to category : Category
    belongs_to post : Post
  end
end
