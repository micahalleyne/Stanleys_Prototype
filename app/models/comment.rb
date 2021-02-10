class Comment < ApplicationRecord
    belongs_to :blog
    belongs_to :song
    belongs_to :video
    belongs_to :forum
end
