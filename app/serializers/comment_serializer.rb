class CommentSerializer < ActiveModel::Serializer
  attributes :name, :message, :email, :post_id
  belongs_to :post
end
