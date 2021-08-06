class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :message, :email, :post_id, :post
end
