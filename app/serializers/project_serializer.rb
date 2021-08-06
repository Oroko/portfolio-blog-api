class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :stacks, :image_url, :github_url
end
