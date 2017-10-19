class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :description, :was_watched, :rating, :re_watch, :user
end
