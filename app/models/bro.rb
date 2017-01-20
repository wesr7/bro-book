class Bro < ApplicationRecord
    has_many :bro_hobbies
    has_many :hobbies, through: :bro_hobbies
end
