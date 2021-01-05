class Comment < ApplicationRecord
    belongs_to :blog
    belongs_to :song
    belongs_to :video
end
