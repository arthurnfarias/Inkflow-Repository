class Team < ApplicationRecord
    has_many :okrs, dependent: :destroy
end
