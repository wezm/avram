class Category < BaseModel
  skip_default_columns

  table do
    primary_key id : Int16
    timestamps
    column name : String
    has_many post_categories : PostCategory
    has_many posts : Post, through: :post_categories
  end
end

class CategoryQuery < Category::BaseQuery
end
