class Blog < ApplicationRecord
    has_many :comments
    acts_as_punchable
end
