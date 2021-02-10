class Forum < ApplicationRecord
    belongs_to :topic
    has_many :comments
    acts_as_punchable
end
