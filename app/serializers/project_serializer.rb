class ProjectSerializer < ActiveModel::Serializer
  attributes :title, :description, :stacks, :image_url, :github_url, :id
end
