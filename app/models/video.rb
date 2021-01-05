class Video < ApplicationRecord
    has_many :comments
    acts_as_punchable
end
