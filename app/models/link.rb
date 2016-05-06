class Link
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :url, String, format: :url

  has n, :tags, through: Resource
end
