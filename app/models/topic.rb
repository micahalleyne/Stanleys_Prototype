class Topic < ApplicationRecord
    has_many :blogs
    has_many :videos
    has_many :songs
    has_many :forums
end
