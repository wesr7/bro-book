class Hobby < ApplicationRecord
    has_many :bro_hobbies
    has_many :bros, through: :bro_hobbies
end
